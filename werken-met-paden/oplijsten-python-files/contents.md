Schrijf een programma dat de gebruiker vraagt om het pad naar een directory in te typen. Het programma geeft vervolgens aan of het inderdaad een directorypad betreft en toont alle Python files in deze directory.

Je zou dus iets zoals dit kunnen zien (de `>` wijst op user input):

```
Welke directory moet ik doorzoeken?
> /home/vincent/programming
Dit is een directory. Hij bevat volgende Python files.
script1.py
script2.py
script3.py
```

Of iets zoals dit:

```
Welke directory moet ik doorzoeken?
> /home/vincent/programming/script1.py
Dit is geen directory.
```

Raadpleeg de officiële `pathlib` documentatie om te achterhalen hoe je dit doet.
