Een van de makkelijkste manieren om voordeel te halen uit coroutines bestaat erin niet meteen te *wachten*.
Door een aantal coroutines aan te maken zonder `await` toe te passen en ze dan mee te geven aan `asyncio.gather`, kan je ze allemaal tegelijkertijd als taak inplannen. Dan kan je met één gebruik van `await` op de lijst van alle resultaten wachten. De taken worden (ongeveer) tegelijkertijd opgestart, dus de totale werktijd is in het beste geval ongeveer die van de langste taak, niet de som van de werktijden van alle taken.

Meer details vind je op [deze pagina](Running tasks concurrently using asyncio.gather()), onder "Running tasks concurrently using asyncio.gather()".
