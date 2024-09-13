Om te werken met paden (locaties van bestanden, mappen,... in het bestandensysteem) in Python gebruiken we meestal de `pathlib` module.
Paden werken namelijk niet hetzelfde op elk besturingssysteem.
Op UNIX-systemen werken ze bijvoorbeeld heel anders dan op Windows.
Als je paden voorstelt als gewone strings, loop je het risico deze verschillen over het hoofd te zien.

Er zijn ook veelvoorkomende taken die we best uitvoeren met een rijkere voorstelling dan een gewone string met slashes of backslashes. Via `pathlib` kan je bijvoorbeeld makkelijk de parent directory van een bestand achterhalen, de extensie,...

Het heeft weinig zin hier de volledige documentatie van `pathlib` te reproduceren, dus we houden het hierop:

- Je kan een gewone string omzetten naar een pad via `Path(...)`.
- Je kan een pad uitbreiden door er `/` gevolgd door een string of een tweede pad achter te zetten.
- Sommige soorten pad (de "niet-pure") bieden ook operaties op het bestandensysteem aan, zoals `read_text`. Dit leest dan de inhoud van de file die in principe wordt voorgesteld door het pad, **maar** achter de schermen gebeurt hetzelfde als wanneer je de file op de normale manier opent. Dat wil zeggen dat er exceptions gerelateerd aan permissies, encodings,... kunnen optreden wanneer je hier gebruik van maakt.
