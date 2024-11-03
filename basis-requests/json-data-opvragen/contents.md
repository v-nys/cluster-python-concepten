Deze opdracht veronderstelt dat je NodeJS op je systeem hebt.

Start een JSON server op door deze data in een file genaamd `db.json` te plaatsen en dan `npx json-server db.json` uit te voeren:

```json
{
  "posts": [
    { "id": "1", "title": "a title", "views": 100 },
    { "id": "2", "title": "another title", "views": 200 }
  ],
  "comments": [
    { "id": "1", "text": "a comment about post 1", "postId": "1" },
    { "id": "2", "text": "another comment about post 1", "postId": "1" }
  ],
  "profile": {
    "name": "typicode"
  }
}
```

Schrijf nu een klein Python programma waarmee de gebruiker posts en hun comments via het ID van een post kan opzoeken door de JSON server te bevragen. Dat kan er als volgt uitzien:

```text
Welke post wil je zien?
> 1
a title (100 views)
- a comment about post 1
- another comment about post 1
```
