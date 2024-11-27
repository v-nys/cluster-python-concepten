Maak een Pydantic model `Student`.
Een student beschikt over een studentennummer, een geboortedatum en een adres.
Een adres op zichzelf is ook iets dat je kan valideren.
Het bestaat uit een straatnaam, huisnummer, optionele postbus, postcode en gemeente.

Schrijf een klein programma voor inschrijvingen, dat in een lus vraagt om alle info om een student te registreren (in een lijst te plaatsen).
Als er ongeldige info meegegeven wordt, moet de lus blijven doorlopen, maar moet de gebruiker horen wat er mis is gelopen.
Dit doe je niet met specifieke controles met `if`, maar via Pydantic.
