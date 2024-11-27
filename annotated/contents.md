Type hints zijn een handige extra in Python, maar soms wil je specifieker zijn.
Het kan bijvoorbeeld zijn dat je wil aangeven dat een variabele `leeftijd` niet gewoon een `int` is, maar wel een `int` tussen `0` en pakweg `125`. Of het kan zijn dat een tekstveld een maximumlengte heeft, iets dat niet uitgedrukt wordt door `str`.

Dit kan je **tot op zekere hoogte** uitdrukken in het type hinting systeem van Python door een geannoteerde versie van een bestaand type te definieren. Dat doe je door middel van de annotatie `Annotated[Basistype, metadata]`. **Python zelf kijkt hier niet naar**, maar libraries en development tools kunnen hier wel gebruik van maken om bepaalde zaken af te dwingen.

Bijvoorbeeld:

```
from typing import Annotated

class ValueRange:
    def __init__(self, low: int, high: int):
        self.low = low
        self.high = high

# dit moet je zien als de definitie van een **type**
Age = Annotated[int, ValueRange(0, 125)]

class Person:
    def __init__(self, age: Age):
        self.age = age

# dit is "geldig"
person1 = Person(34)
# dit niet (maar "gewone" Python zal het wel aanvaarden!)
person2 = Person(200)
```

Deze code kan je gewoon uitvoeren, maar als een analysetool (in de stijl van mypy) de klasse `ValueRange` kent, kan hij vermijden dat deze ongeldige situatie ontstaat at runtime.
