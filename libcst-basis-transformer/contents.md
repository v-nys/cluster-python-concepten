LibCST biedt ondersteuning voor het Transformer pattern.

Een Transformer ziet er bijna hetzelfde uit als een Visitor, maar in de `leave_...`-methodes is er een extra parameter `updated_node`. Als je die laatste aanpast en teruggeeft, zal die de plaats innemen van de oorspronkelijke node. Je kan ook `RemoveFromParent()` (met haakjes) teruggeven om de node volledig weg te knippen.

Het officiële voorbeeld is erg mooi, maar niet zo eenvoudig. We lichten het hier wat uitgebreider toe.

Sinds Python 3.5 is er optionele ondersteuning voor expliciete typering van variabelen.
Dit houdt in dat je bijvoorbeeld `a = 3.0` kan vervangen door `a: float = 3.0` om duidelijker te maken dat het type van deze variabele `float` is. Dit is niet waterdicht, maar het is een manier om je code duidelijker te documenteren en om je tools meer informatie te geven.

Oudere versies van Python ondersteunen deze syntax niet, dus als je hem gebruikt, maak je je code meteen incompatibel met deze oudere versies. Dat kan een probleem zijn.

Een workaround bestaat erin een extra `pyi` file aan te maken, waarin je de publiek zichtbare code herhaalt en de types toevoegt, zonder de implementatie te herhalen. Oude versies van Python zijn zich niet bewust van deze file en negeren hem dus gewoon.

Op het moment dat je beslist Python 3.4 en ouder niet meer te ondersteunen, verkies je waarschijnlijk de `.pyi` file weg te gooien (omdat het handiger is alles in één source file te houden).

Met een Transformer kan je je `.py`-files en je `.pyi` files automatisch samenvoegen.
Je doet dat door eerst elk onderdeel te koppelen aan een annotatie.
Elk onderdeel wordt getrackt door de namespacing op te volgen.
Dit is waarvoor de `stack` in de `TypingCollector` klasse dient.
Onderstaande code en comments zouden dit moeten verduidelijken:

```python
class EenKlasse:
    # tijdens de analyse van deze scope is de stack ["EenKlasse"]

    def do_something(self) -> None:
        # tijdens de analyse van deze scope is de stack ["EenKlasse", "do_something"]
        # wanneer we deze functie bezoeken, onthouden we:
        # ["EenKlasse", "do_something"] heeft een parameter `self` en returnwaarde `None`
        pass

    # hier is de stack terug ["EenKlasse"]

# hier is de stack weer volledig leeg
```

Dus na het bezoek van deze code hebben de de signatuur van elke methode in kaart gebracht.

De Transformer doet hetzelfde met de stack, zodat hij steeds weet in welke structuur hij zich bevindt. `leave_FunctionDef`, dus wanneer je een functie verlaat, is het moment om types toe te voegen. Op dat ogenblik wordt via de stack achterhaald wat de juiste annotaties zijn en worden die aangebracht aan het `updated_node` argument.

Als je dan op het einde de concrete syntaxboom afprint, krijg je een herschreven versie van de broncode, met de type-annotaties op de juiste plaats.
