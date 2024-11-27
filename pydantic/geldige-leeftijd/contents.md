Zoek in de documentatie van Pydantic eerst het concept van "validators" op.
Gebruik een `AfterValidator` om te zorgen dat je enkel objecten van een klasse `Person` kan aanmaken als die een geldige leeftijd (tussen 0 en 125) hebben.
Je doet dat dus door een veld `age` van een eigen type `Age` te voorzien, via Pydantic, zonder eigen `if`-statements.

Als je toch een persoon probeert aan te maken met een ongeldige leeftijd, moet je een duidelijk leesbare fout krijgen.
