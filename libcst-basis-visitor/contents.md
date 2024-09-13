LibCST is een Python bibliotheek waarmee je Python broncode meteen kan omzetten naar een "concrete" syntaxboom. Dit is een syntaxboom waarin alle details bewaard blijven, ook wanneer ze geen effect hebben op de betekenis van je code (bijvoorbeeld de exacte hoeveelheid whitespace of comments).

Je vindt de officiële documentatie [hier](https://libcst.readthedocs.io/en/latest/) terug, maar je wordt niet verondersteld deze meteen volledig te bestuderen.

De belangrijkste zaken om te weten:

- de methode `parse_module` kan de brontekst van een Python bestand omzetten naar een syntaxboom
- je kan de klasse `CSTVisitor` subclassen om een Visitor te maken die een syntaxboom doorloopt
  - dit gebeurt in "diepte-eerst" volgorde
    - met andere woorden, we bezoeken eerst de volledige linkertak voor we ook maar iets in de rechtertak bezoeken
  - in `LibCST` zijn er zowel `visit_...`-methodes (voor wanneer we voor **binnen**komen in een knooppunt) als `leave_...` methodes (voor wanneer we een knooppunt terug verlaten, dus vlak nadat we alle kinderen van dat knooppunt hebben afgewerkt)

Als je een methode niet implementeert, gebeurt er niets wanneer je een element bezoekt. Bijvoorbeeld, als je `visit_ClassDef` niet implementeert, is dat hetzelfde als wanneer je het zo implementeert:

```python
# de returnwaarde is een uitbreiding op de gewone Visitor
# hiermee kan je beslissen de kinderen te skippen (indien expliciet False)
def visit_ClassDef(self, node: cst.ClassDef) -> Optional[bool]:
    pass
```
