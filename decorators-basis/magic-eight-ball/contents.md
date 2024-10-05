Schrijf een script, `decorators.py`.
Hierin voorzie je een functie `magic_eight_ball`, met één parameter genaamd `question`. Wanneer je deze functie oproept, krijg je een willekeurig antwoord uit deze set:

- It is certain
- It is decidedly so
- Without a doubt
- Better not tell you now
- Cannot predict now
- Maybe rephrase the question
- Don’t count on it
- My reply is no
- Outlook not so good

Schrijf nu een decorator, `remember`.
Zorg dat `remember` een `Set` van alle reeds gestelde vragen bijhoudt als **lokale** variabele.
Definieer in `remember` een wrapperfunctie die de gestelde vraag verwerkt:

- als de vraag al eerder gesteld is, is het antwoord sowieso: "You have asked this question before"
- als de vraag nog niet gesteld is, wordt een van de oorspronkelijke antwoorden gegeven en wordt de vraag onthouden

Test dat je decorator werkt door `@remember` eerst niet, dan wel boven `magic_eight_ball` te plaatsen.
