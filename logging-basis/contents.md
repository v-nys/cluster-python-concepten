Echte applicaties draaien vaak over een langere periode en op machines waarover je weinig controle hebt. Om dan eventuele problemen te kunnen spotten, is het belangrijk dat je goede **logs** bijhoudt. In Python is hier een bibliotheek voor voorzien, genaamd `logging`.

Dit is vaak een betere optie dan gewoon wat `print` statements in je code invoegen, want daarbij maak je geen onderscheid tussen belangrijke of minder belangrijke berichten, berichten die in de terminal terecht moeten komen en berichten die beter in een file kunnen,...

In essentie los je dit op door een object van de klasse `Logger` aan te maken, te associëren met een `Formatter` (om te bepalen hoe je info getoond wordt, bijvoorbeeld met het tijdstip erbij) en berichten **via deze logger** op te slaan met een zeker niveau van "ernst", bijvoorbeeld een gewone diagnostische boodschap, een waarschuwing of een duidelijke fout.

Lees de "basic tutorial" [hier](https://docs.python.org/3/howto/logging.html#logging-basic-tutorial). Je ziet dat er zowel gebruik gemaakt wordt van statements als `logging.warning` als van `logger.warning`. Voor een goede controle negeer je het eerste type best: een `Logger`-object kan je makkelijk doorgeven en customizen, met de module is dat zeer lastig.
