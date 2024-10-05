# Basis decorators
Decorators kan je meestal zien als functies die andere functies "upgraden".
Python heeft er een speciale syntax voor (al kan je hetzelfde idee realiseren zonder deze speciale syntax).
Je herkent het gebruik van een decorator aan het symbool `@`.

Bijvoorbeeld, uit de quickstart van Flask:

```python
@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"
```

`hello_world` is op zich een functie. Je weet vast hoe je ze zou moeten gebruiken als de eerste regel er niet stond.

De eerste regel zegt dat deze oorspronkelijke, doodgewone functie **als invoer dient** voor een methode `app.route` (samen met de string literal `"/"`). Op deze manier kan het URL-postfix `"/"` gelinkt worden aan de functie.

Daarbovenop is het zo dat decorators ook een nieuwe functie teruggeven.
Deze nieuwe functie voert typisch zelf een paar stappen uit, waarvan één de oorspronkelijke functie is.
Typisch wordt dit gedaan door in de decoratorfunctie een geneste functie te schrijven die de extra stappen en de oorspronkelijke functie omvat.
Deze wrapper heeft dan dezelfde parameters als de oorspronkelijke functie.

Omdat deze wrapper andere metadata bevat dan de originele functie (bijvoorbeeld de interne naam van de functie,...) en dit voor geavanceerde use cases een probleem kan vormen, wordt de metadata van de originele functie vaak overgenomen door middel van... een decorator. Meerbepaald `wraps`.

Bestudeer het voorbeeld [hier](https://docs.python.org/3/library/functools.html#functools.wraps) voor simpel gebruik van dit concept. Je moet enkel de sectie over `functools.wraps` lezen en mag de technische uitleg negeren. Je moet gewoon begrijpen wat dit doet.
