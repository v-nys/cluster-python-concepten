Maak een klein programma dat in een oneindige lus volgende keuze biedt:

```text
Wat voor bericht wil je loggen?
1. een diagnostisch bericht
2. nuttige informatie
3. een waarschuwing
4. een foutmelding
```

De gebruiker kiest hier dan een optie uit en dit soort bericht wordt bijgehouden in een file `keuzemenu.log`. Vooraan op de regel staat de dag van de week (dus "maandag", "dinsdag",...).

Als de gebruiker een ongeldige keuze maakt, wordt er een bericht met level `info` gelogd.
