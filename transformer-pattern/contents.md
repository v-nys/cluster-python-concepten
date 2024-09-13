Het Transformer pattern is een uitbreiding op het Visitor pattern.
Het Visitor pattern is in principe "read-only".
Als we elk element in een lijst/boom/graaf/... bezoeken, houden we achteraf een lijst/boom/graaf/... met dezelfde "vorm" over.
Anders gezegd: alle elementen blijven op dezelfde plaats in de datastructuur.

Het basisprincipe is hetzelfde: elk element in de verzameling wordt bezocht.
Wat anders is, is dat de `visit_...`-methode een returnwaarde heeft.
Deze returnwaarde "vervangt" het bezochte element.

Een typisch voorbeeld hiervan kan het wegknippen van "dode takken" in een boomstructuur zijn. Als je bijvoorbeeld iets tegenkomt van de vorm `0 * (A + B / C * D)`, hoef je dat niet helemaal uit te werken. Je mag heel deze expressie gewoon door 0 vervangen, nog voor je echt begint te rekenen. Je zou dat kunnen doen door de `visit` methode van het element dat `*` voorstelt een returnwaarde te geven die `0` voorstelt.

Deze uitleg blijft nogal algemeen, omdat hij sterk afhangt van het soort datastructuur dat je doorloopt (lijst, boom,...). Het principe is evenwel hetzelfde: de returnwaarde van een `visit_...`-methode geeft aan hoe een onderdeel van je datastructuur vervangen kan worden.
