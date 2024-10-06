Een Flask applicatie voorziet routes die je configureert met `@route`.
Statische files zoals afbeeldingen en style sheets worden niet op deze manier geconfigureerd.
De gewoonte hier, althans in een development omgeving, is dat je dit afhandelt zoals [hier](https://flask.palletsprojects.com/en/2.3.x/quickstart/#static-files) aangegeven.

De functie `url_for` kan je ook oproepen in eventuele templates.
