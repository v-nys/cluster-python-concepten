Schrijf een script `suppliers.py`.
In dit script staat één functie gedefineerd op het "top level".
Deze heet `create_supplier` en ze heeft twee parameters: `delay_factor` en `price_factor`.
Ze geeft als resultaat een nieuwe functie terug, waarmee je bestellingen kan plaatsen.
Deze nieuwe functie heeft zelf twee parameters, namelijk `expected_delivery_time` en `price_estimate`.
Ze print dan een offerte door de geschatte levertijd en prijs te vermenigvuldigen met de eerder meegegeven factoren.

Je zou volgende code achteraan in je script moeten kunnen plakken en zinnige resultaten zien:

```python
get_offer_from_bol = create_supplier(0.8,1.1)
get_offer_from_amazon = create_supplier(1.2,0.9)
get_offer_from_aliexpress = create_supplier(1.5,0.75)
```

```python
# verwachte output:
# geschatte levertijd: 80 dagen
# geschatte kostprijs: 110 euro
get_offer_from_bol(100,100)
# verwachte output:
# geschatte levertijd: 120 dagen
# geschatte kostprijs: 90 euro
get_offer_from_amazon(100,100)
# verwachte output:
# geschatte levertijd: 150 dagen
# geschatte kostprijs: 75 euro
get_offer_from_aliexpress(100,100)
```
