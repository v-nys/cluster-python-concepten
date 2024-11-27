Dependency injection is een techniek om code flexibeler te maken.
Hij bestaat er eerst in dat je "dependencies" van een stukje code identificeert.
Dat kunnen bijvoorbeeld velden van een object zijn, functies die binnen een andere functie worden opgeroepen,...
Dan pas je de interface van die code (opnieuw: een klasse, een functie,...) aan zodat de oproeper deze dependencies zelf kan meegeven.

Er zijn veel frameworks die dependency injection vereenvoudigen of praktischer maken, maar dependency injection **is geen framework** en vereist er ook geen. De inleiding tot het [dependency injector](https://python-dependency-injector.ets-labs.org/introduction/di_in_python.html) framework voor Python legt dit goed uit: een framework helpt om de dependencies te injecteren (dus de velden in te vullen, de argumenten mee te geven,...) maar is niet noodzakelijk. Lees de eerste pagina van de documentatie om een beeld te krijgen.
