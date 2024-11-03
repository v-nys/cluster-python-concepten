# Click
Click is een library om command line interfaces te schrijven. Je kan dit in Python op veel manieren bereiken: van heel low level via `sys.args` en `print` over `argparse`, `docopt`,... Click is hier interessant omdat het met weinig code heel veel features toevoegt aan je command line programma en ook heel goede ondersteuning heeft voor subcommando's.

Het basisidee is dat je gewone functies omzet naar "commands" door middel van function decorators (zie deze hier als annotaties die beginnen met `@`). Door dat te doen worden inputvalidatie, help messages,... gegenereerd. Wanneer je programma start, run je een command om de command line input te laten verwerken.

Lees in [de quickstart](https://click.palletsprojects.com/en/stable/quickstart/#examples) de onderdelen "Basic Concepts - Creating a Command", "Adding Parameters". Lees ook [de vergelijking in bullet points tussen Options en Arguments](https://click.palletsprojects.com/en/stable/parameters/).
