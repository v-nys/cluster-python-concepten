# Counter
Een `Counter` is een gespecialiseerd type dictionary. Zoals de naam zegt, dient het om dingen te tellen. Meerbepaald: het aantal voorkomens van elke waarde in een collectie.

Veronderstel bijvoorbeeld dat we het aantal voorkomens van elk woord in een lijst van strings willen achterhalen. Dat kan als volgt:

```python
my_home_rolled_counter = {}
for word in list_of_words:
    current_count = my_home_rolled_counter.get(word, 0)
    my_home_rolled_counter[word] = current_count + 1
```

Maar een simpelere manier om hetzelfde te bereiken is:

```python
from collections import Counter
better_counter = Counter(list_of_words)
```
