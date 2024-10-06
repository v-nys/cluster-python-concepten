De term **unpacking** verwijst naar het één voor één meegeven van elementen uit een collectie, eerder dan de collectie zelf. Als je bijvoorbeeld een lijst `numbers` hebt met daarin de elementen `2` en `3`, kan je de breuk "twee derde" aanmaken door middel van ofwel `fractions.Fraction(2,3)` ofwel `fractions.Fraction(*numbers)`. Door de `*` vooraan in een lijst in argumentspositie te plaatsen, geef je dus de elementen mee als argumenten en niet de lijst zelf.

In parameterpositie (dus in de definitie van de functie) werkt het omgekeerd. Je kan bijvoorbeeld dit schrijven:

```python
def my_function(*args):
    print(args[0])
    print(args[1])
    print(args[2])
```

En dan kan je deze functie oproepen als `my_function("a","b","c")`. Wat je meegeeft aan deze functie wordt dus **gebundeld** in een lijst. Meestal gebruiken we voor dit soort parameter de naam `args` en je kan deze combinereen met voorafgaande normale, positiegebaseerde parameters, op voorwaarde dat de "restparameter" hierna komt.

Er is een gelijkaardig systeem voor dictionaries, maar met `**` in plaats van `*`.
In dit geval wordt de key van elk item gebruikt om een argument met dezelfde naam in te vullen.
Je kan dus dit doen:

```def
def introduce(**kwargs):
    print(f"Mijn naam is {kwargs.get('name','onbekend')]} en mijn lievelingskleur is {kwargs.get('favorite_color','grijs')}")

introduce(favorite_color="groen", name="Vincent")
```

Hier zijn nog enkele variaties op. Deze vind je [hier](https://treyhunner.com/2018/04/keyword-arguments-in-python/#What_are_keyword_arguments?).
