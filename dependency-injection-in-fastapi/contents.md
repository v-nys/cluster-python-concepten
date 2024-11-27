FastAPI heeft ingebouwde ondersteuning voor dependency injection.
Via dit systeem kan je aangeven dat een handler een dependency heeft.
Dat kan één enkele waarde of een reeks waarden zijn.
Bekijk [deze pagina](https://fastapi.tiangolo.com/tutorial/dependencies/#to-async-or-not-to-async) van de officiële documentatie.
De onderdelen rond OpenAPI mag je negeren en je hoeft niet naar de detailpagina's ("classes as dependencies", "sub-dependencies",...) te gaan.

Als je je afvraagt waarom je een functie zoals `common_parameters` niet gewoon oproepen in de "dependents": op deze manier kunnen we de dependency makkelijk ervangen. Dit is heel typisch voor testcode. Je vindt een voorbeeld op [deze pagina](https://fastapi.tiangolo.com/advanced/testing-dependencies/). Je hoeft dit niet in veel detail te bekijken, maar het geeft een heel handige toepassing van dit patroon. Hier zie je dat de testversie minder data gebruikt dan de "echte" versie, maar ze zou ook een totaal andere achterliggende database kunnen gebruiken,...
