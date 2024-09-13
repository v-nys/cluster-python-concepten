# Het Visitor pattern

## Motivatie
Objectgeoriënteerde programmeertalen steunen op het principe van polymorfisme: je werkt met objecten die een bepaalde interface implementeren, maar die dat (naargelang hun klasse) op verschillende manieren kunnen doen.

Polymorfisme is normaal zo geïmplementeerd dat de juiste versie van een methode wordt opgezocht wanneer ze wordt gebruikt.
Met andere woorden, als we een methode `do_something` oproepen in een ouderklasse, wordt er andere code uitgevoerd dan wanneer we een overschreven versie van die methode oproepen in een kindklasse.

Het Visitor pattern biedt een manier om polymorfisme te verkrijgen in situaties waar de programmeertaal.
Dit kan zijn als we geen toelating hebben om de broncode van een klassenhiërarchie te veranderen.
Het kan ook zijn dat we technisch wel functionaliteit aan de klassenhiërarchie zouden **kunnen** toevoegen, maar op die manier de verantwoordelijkheid van de klassen zouden vertroebelen.

Je vindt een mooi voorbeeld op [deze pagina van Refactoring Guru](https://refactoring.guru/design-patterns/visitor).
Hier is een datastructuur (bijvoorbeeld een boom) bestaande uit objecten van verschillende klassen, bijvoorbeeld `Industrial` voor om industriegebouwen voor te stellen en `Residential` om woningen voor te stellen.
We willen iets doen met elk object in de structuur (bijvoorbeeld exporteren naar XML of JSON), maar de XML ziet er mogelijk heel anders uit voor industriegebouwen dan voor woningen.
We zouden kunnen afspreken dat elke klasse een methode `export_to_xml` moet voorzien, maar dat is niet altijd mogelijk.
Misschien komen deze klassen uit een externe library en mogen we ze niet aanpassen.
Misschien maakt dit de taak van deze klassen te onduidelijk.

Het Visitor pattern biedt een workaround.

## Werking
Je vertrekt vanuit een heel "primitieve" benadering, door voor elke klasse waarop je een implementatie **zou willen** voorzien een **methode** te voorzien die je dan gebruikt in een soort `switch`.

Bijvoorbeeld:

```python
class BuildingVisitor:

    do_something_for_industrial(self, i):
        assert False, "Niet geïmplementeerd, je moet zelf weten wat je hier doet."

    do_something_for_residential(self, r):
        assert False, "Niet geïmplementeerd, je moet zelf weten wat je hier doet."
```

Dan kan je deze methodes bijvoorbeeld als volgt gebruiken:

```python
# veronderstel dat er een lijst gebouwen is
building_visitor = BuildingVisitor()
for building in buildings:
    if type(building) is Industrial:
        building_visitor.do_something_for_industrial(building)
    elif type(building) is Residential:
        building_visitor.do_something_for_residential(building)
```

Technisch werkt dit, maar hoe meer gebouwen, hoe langer de reeks `if ... elif` zou worden. Als er een nieuwe klasse gebouw bijkomt, is je code meteen defect en merk je hier niet meteen iets van.

Daarom wordt de "double dispatch" techniek gebruikt. Het idee blijft hetzelfde, maar de bezochte objecten moeten wel zelf de juiste methode van de visitor oproepen. We herschrijven als volgt:

```python
# veronderstel dat er een lijst gebouwen is
building_visitor = BuildingVisitor()
for building in buildings:
    building.accept(building_visitor)

class Industrial:
    # ...
    def accept(self, visitor):
        visitor.do_something_for_industrial(self)

class Residential:
    # ...
    def accept(self, visitor):
        visitor.do_something_for_residential(self)
```

De aandachtige lezer merkt op dat we nu de klassen wel een beetje hebben aangepast.
Meerbepaald: we hebben aan elke klasse één methode met een heel simpele implementatie toegevoegd.
Maar we hoeven verder niets meer aan te passen, ook niet als we een totaal ander soort Visitor zouden schrijven (bijvoorbeeld voor export naar een ander formaat).
Het komt dan ook regelmatig voor dat auteurs van bibliotheken hun klassen zelf compatibel maken met het Visitor pattern.

Hier hebben we het Visitor pattern bekeken met een eenvoudige *lijst* van gebouwen.
In de praktijk zal je het vaak tegenkomen bij complexere datastructuren, zoals bomen of grafen in het algemeen.

## Voor- en nadelen

### Voordelen

- Je kan nieuwe functionaliteit toevoegen zonder de verantwoordelijkheid van je klassen te vertroebelen.
- Een Visitor kan ook informatie verzamelen terwijl hij wordt toegepast over alle objecten (hij zou bijvoorbeeld kunnen tellen hoe veel objecten hij heeft geserializeerd). Dit is moeilijker wanneer elk object gewoon een eigen methode uitvoert.

### Nadelen

- De Visitor moet nog steeds methodes hebben voor elk bezocht type. In sommige programmeertalen zal de compiler dit makkelijk opmerken. In dynamische talen, waaronder Python, zal je evenwel een runtime error krijgen wanneer je code zoals `visitor.do_something_for_brand_new_class(self)` uitvoert. Statische analysetools kunnen hier wel nog steeds hulp bieden.
- Een Visitor heeft geen toegang tot privévelden van de bezochte objecten. In Python bestaan privévelden niet op technisch niveau, maar velden die beginnen met `_` worden wel beschouwd als velden waar externe klassen niet op mogen rekenen.
