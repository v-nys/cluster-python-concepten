Met de `ast`-module kan je Pythoncode omzetten naar een **abstracte** syntaxboom.
Dit is een syntaxboom waarin informatie die geen effect heeft op het gedrag van de code verwijderd is.
Commentaar is hier een voorbeeld van en ook de exacte hoeveelheid whitespace op elk niveau kan achterwege gelaten worden.

Dit is een module voor geavanceerd gebruik, maar de basis is als volgt:

- via `ast.parse` kan je broncode omzetten naar een abstracte syntaxboom
- via `ast.dump` kan je een abstracte syntaxboom terug omzetten naar Python code
- er is een klasse `ast.NodeVisitor` die je kan subclassen om het Visitor pattern te implementeren
