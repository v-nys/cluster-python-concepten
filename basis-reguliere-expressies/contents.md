Reguliere expressies zijn een krachtige tool om tekst te doorzoeken op bepaalde patronen.
Hiermee kan je niet alleen op zoek gaan naar **letterlijke** voorkomens van één stuk tekst in een ander stuk tekst, maar naar patronen.
In Python haal je deze uit de module `re`.

Je kan ze toepassen door middel van allerlei functies in deze module, bijvoorbeeld `search` (om één match) te vinden of `findall` (om alle matches te vinden). Bijvoorbeeld:

```
re.findall(r'\bf[a-z]*', 'which foot or hand fell fastest')
```

Dit levert je `['foot', 'fell', 'fastest']` omdat er eerst een woordgrens (`de \b`) moet staan, dan een letter `f` en dan een aantal letters tussen `a` en `z`. Dit kan je allemaal nagaan met de online tool [Regex101](https://regex101.com/). Je moet hier kiezen in welke programmeertaal je reguliere expressies aan het gebruiken bent, want de syntax is niet overal identiek.

Merk trouwens op dat er staat `r'\bf[a-z]*'`. De `r` vooraan duidt op een "raw" string. Dit is een string waarin backslashes gewoon geïnterpreteerd worden als backslashes en niet als de start van een escape sequentie. Dit is dus equivalent aan de "gewone" string `'\\bf[a-z]*'`. Reguliere expressies worden vaak met "raw" strings genoteerd omdat de syntax van reguliere expressies zelf veel backslashes bevat die we anders telkens zouden moeten ontdubbelen.

**Een veel voorkomende misvatting is dat een "raw" string iets anders is dan een gewone string. Dat klopt niet.** Elke raw string kan herschreven worden als een gewone string.

Je vindt de volledige syntax terug in [dit onderdeel van de officiële documentatie](https://docs.python.org/3/library/re.html#regular-expression-syntax).
In het begin zal je vooral volgende symbolen gebruiken:

- `.`
- `^`
- `$`
- `*`
- `+`
- `?`
- `(` en `)`
- `[` en `]`
- `\d`, `\s`, `\S`, `\w` en `\W`

Het is niet realistisch deze syntax volledig uit het hoofd te leren.
Vorm je een beeld van waarvoor reguliere expressies dienen, gebruik de "quick reference" rechts onderaan op Regex101, test je reguliere expressies grondig vlak nadat je ze geschreven hebt en documenteer ze.

**Let op:** sommige zoekmethodes leveren je `Match`-objecten op.
Deze hebben nuttige methodes om meer over een eventuele match te weten te komen (bijvoorbeeld de positie waar de gematchte string gevonden is, componenten van het gematchte patroon,...).
We laten deze voorlopig achterwege, maar controleer dus goed of een zoekmethode gewoon gematchte strings aflevert of `Match`-objecten.
