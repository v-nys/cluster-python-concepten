Pydantic is een datavalidatielibrary voor Python.
Dit wil zeggen dat je ermee kan omschrijven welke waarden (van een bepaalde klasse) als "geldig" beschouwd worden en welke niet.
Zo'n omschrijving noemen we een "model" voor de data en we kunnen een model gebruiken om:

- data automatisch te serialiseren (omzetten naar een tekstformaat of binair formaat)
- data te deserialiseren (uitlezen uit zo'n formaat)
- een schema te genereren (om bijvoorbeeld IDE support te voorzien)

Pydantic werkt vlot samen met bestaande mechanismen in Python, in het bijzonder type hints en dataclasses. Dat maakt dat je niet veel extra werk moet verrichten om voordeel uit Pydantic te halen.

Hieronder een (licht aangepast) voorbeeld uit de [officiële documentatie](https://docs.pydantic.dev/latest/):

```python
from datetime import datetime

from pydantic import BaseModel, PositiveInt


# Models moeten ervan van een ander model
class User(BaseModel):
    # dit zijn gewone type hints
    id: int  
    name: str = 'John Doe'  
    signup_ts: datetime | None  
    tastes: dict[str, PositiveInt]  


# een doodgewoon Python object
external_data = {
    'id': 123,
    'signup_ts': '2019-06-01 12:22',  
    'tastes': {
        'wine': 9,
        b'cheese': 7,  
        'cabbage': '1',  
    },
}

# we maken een User
# omdat die erft van BaseModel, treedt validatie op
# als de externe data ongeldig is, krijg je een ValidationError
# deze bevat duidelijke, gedetailleerde info over het probleem
user = User(**external_data)  

print(user.id)  
#> 123
# deze methode voor serialisatie krijg je via BaseModel
print(user.model_dump())  
"""
{
    'id': 123,
    'name': 'John Doe',
    'signup_ts': datetime.datetime(2019, 6, 1, 12, 22),
    'tastes': {'wine': 9, 'cheese': 7, 'cabbage': 1},
}
"""
```

Je kan Pydantic dus zien als een runtime aanvulling op het typesysteem.
Beide dienen om aan te geven wat voor waarden ergens geldig zijn.
