Intussen weet je hoe je reguliere expressies gebruikt om tekstpatronen te zoeken.
Binnen deze patronen zijn er misschien kleinere, interessante componenten.
Hier kan je mee omspringen door **groepen** in je reguliere expressie te introduceren.

Neem als voorbeeld een reguliere expressie voor een typisch adres in Vlaanderen (ze zal niet werken voor elk adres): `r"\w+straat [1-9]\d*"`
Als we enkel de straatnaam of het huisnummer willen achterhalen, moeten we met onze huidige kennis na het matchen weer substrings extraheren.

Er is een betere manier, namelijk het gebruik van **groepen**.
We kunnen de reguliere expressie herschrijven als volgt: `r"(\w+straat) ([1-9]\d*)"`
Stel dat we dan iets doen zoals `m = re.search(r"(\w+straat) ([1-9]\d*)", "Ellermanstraat 33")`, dan is `m` een `Match`-object en levert `m.group(0)` ons `"Ellermanstraat 33"` (de hele gematchte tekst), `m.group(1)` `"Ellermanstraat"` (de tekst die matcht met de eerste groep aangeduid door haakjes) en `m.group(2)` `"33"`.

Om je code wat robuuster en mogelijk leesbaarder te maken, kan je groepen benoemen:

```python
m = re.search(r"(?P<straatnaam>\w+straat) (?P<huisnummer>[1-9]\d*)", "Ellermanstraat 33")
print(m.group("straatnaam"))
print(m.group("huisnummer"))
```
