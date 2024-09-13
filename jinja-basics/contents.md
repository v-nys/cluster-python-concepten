Jinja is een zogenaamd "templating" systeem voor Python.
Met andere woorden, een systeem waarmee je programmatisch gegenereerde data kan injecteren in een sjabloon.
Dit wordt vaak toegepast om webpagina's dynamisch te genereren, maar je kan het gebruiken voor om het even welk type tekstdocument.

Bekijk eerst even het titeltje "synopsis" op [deze pagina](https://jinja.palletsprojects.com/en/3.1.x/templates/).

Enkele belangrijke aandachtspunten:

- variabelen zoals `navigation` worden afgeleverd door de Python code die Jinja oproept
- statements zijn gelijkaardig aan wat je in Python terugvindt, maar niet identiek
  - niet alles werkt hetzelfde als in Python en er zijn soms speciale hulpvariabelen, zie bijvoorbeeld de tabel met [speciale variabelen in een for-lus](https://jinja.palletsprojects.com/en/3.1.x/templates/#for)

Als je de synopsis gelezen hebt en een beeld hebt van wat Jinja kan doen, moet je ook weten hoe je een template file kan gebruiken. De eenvoudigste (maar daarom niet meest overzichtelijke) manier om dit te doen is om dit in je code te plaatsen:

```
# vergeet de imports niet
env = Environment(
  loader=FileSystemLoader("."),
  autoescape=select_autoescape()
)
```

Dan kan je van uit Python templates toepassen die in dezelfde map staan als je code door middel van een call zoals deze (**lees de code volledig en aandachtig!**):

```
# soms wordt de extensie .jinja toegevoegd, maar dat hoeft niet
my_template = env.get_template("templatenaam.html.jinja")
# het resultaat van het renderen is gewoon tekst
print(my_template.render(
  template_variable_1="Nu kan ik template_variable_1 gebruiken",
  template_variable_2=["Deze", "variabele", "is", "een", "lijst", "en", "ik", "kan", "er", "over", "loopen"],
))
```
