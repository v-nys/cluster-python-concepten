In het simpelste geval is een functiedecorator een functie die een functie als input ontvangt en een andere als output produceert.
Je komt echter complexere decorators tegen.
In de quickstart van Flask zie je bijvoorbeeld:

```python
@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"
```

Het feit dat er `app.` staat is niet zo'n probleem, want er is weinig technisch verschil tussen methodes en functies.
Het belangrijke verschil zit hem in het argument, dus de `"/"`.

In dit geval worden de argumenten eerst gebruikt om een "gewone" decorator te produceren.
Met andere woorden, een functie die alleen nog de gedecoreerde functie als input moet krijgen.
Er zijn dus meerdere niveaus van nesting:

1. `mijndecoratorfunctie(argument1, argument2,...)` produceert een decoratorfunctie van het type dat je zonder haakjes gebruikt
2. die decoratorfunctie definieert een wrapperfunctie voor de originele functie

Dit wordt uitvoerig uitgelegd op [deze pagina](https://www.geeksforgeeks.org/decorators-with-parameters-in-python/)
