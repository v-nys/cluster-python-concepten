Start vanaf het voorbeeld in de quickstart van LibCST. Schrijf zelf een visitor, ArithmeticVisualizer die een arithmetische expressie doorloopt.

Deze Visitor moet twee dingen doen:

- de waarde van elk **getal** dat hij bezoekt printen op de terminal
- de **som** maken van al deze getallen

Pas hem toe op de expressie `1 + 2 / 4 + 7 * 3` (er is een functie `parse_expression`). Zelfs al staan hier andere operaties, je maakt gewoon de som (dat zou dus 17 moeten zijn).
