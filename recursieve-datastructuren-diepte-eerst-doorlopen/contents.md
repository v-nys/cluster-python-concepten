Een recursieve datastructuur doorlopen we typisch op één van twee manieren:

- "diepte-eerst"
- "breedte-eerst"

De eerste manier houdt in dat we na elke stap proberen een niveau dieper in de geneste datastructuur af te dalen. De tweede houdt net in dat we dat zo laat mogelijk doen.

Neem als voorbeeld even een zoekopdracht naar alle mappen met de naam "public" in volgende folderstructuur:

```text
.
├── app
│   ├── app.js
│   ├── package.json
│   ├── public
│   │   ├── css
│   │   │   └── style.css
│   │   ├── fonts
│   │   │   └── LoftygoalsRegular-9Y5Xy.otf
│   │   └── images
│   │       └── sendmailto.png
│   └── views
│       ├── login.ejs
│       └── register.ejs
├── docker-compose.dev.yml
├── e2etests
│   ├── empty_db.sql
│   └── run.sh
└── README.md
```

Als we eerst in de diepte zoeken, is de volgorde:

1. app (niet de juiste foldernaam)
2. public (gevonden!)
3. (hier zou dan "views" komen, maar dat is niet meer nodig)

Als we eerst in de breedte zoeken, is de volgorde:

1. app (niet de juiste foldernaam)
2. e2etests (niet de juiste foldernaam)
3. public (gevonden!)

Naargelang de situatie kan het dus efficiënter zijn om eerst in de breedte of eerst in de diepte te werken. Eerst in de diepte werken is makkelijker te implementeren. Het is ook iets dat veel vlotter gaat met een recursieve functie dan op een iteratieve manier. Bekijk even de pseudocode op [deze pagina](https://www.hackerearth.com/practice/algorithms/graphs/depth-first-search/tutorial/) om het verschil te zien.
