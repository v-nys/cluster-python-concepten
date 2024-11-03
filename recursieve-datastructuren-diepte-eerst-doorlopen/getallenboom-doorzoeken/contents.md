Onderstaande literal stelt een "boomstructuur" voor:

```
{
    "children": [
        {"children": [], "value": 74},
        {
            "children": [
                {
                    "children": [
                        {"children": [], "value": 44},
                        {"children": [], "value": 35},
                        {"children": [], "value": 67},
                        {"children": [], "value": 66},
                    ],
                    "value": 60,
                },
                {
                    "children": [
                        {"children": [], "value": 21},
                        {"children": [], "value": 47},
                        {"children": [], "value": 71},
                    ],
                    "value": 36,
                },
                {
                    "children": [
                        {"children": [], "value": 25},
                        {"children": [], "value": 18},
                    ],
                    "value": 24,
                },
            ],
            "value": 89,
        },
        {
            "children": [
                {
                    "children": [
                        {"children": [], "value": 75},
                        {"children": [], "value": 73},
                    ],
                    "value": 36,
                },
                {
                    "children": [
                        {"children": [], "value": 55},
                        {"children": [], "value": 9},
                    ],
                    "value": 78,
                },
            ],
            "value": 80,
        },
        {
            "children": [
                {
                    "children": [
                        {"children": [], "value": 35},
                        {"children": [], "value": 26},
                        {"children": [], "value": 100},
                        {"children": [], "value": 75},
                        {"children": [], "value": 45},
                    ],
                    "value": 78,
                },
                {
                    "children": [
                        {"children": [], "value": 41},
                        {"children": [], "value": 45},
                    ],
                    "value": 9,
                },
                {
                    "children": [
                        {"children": [], "value": 40},
                        {"children": [], "value": 28},
                    ],
                    "value": 12,
                },
            ],
            "value": 9,
        },
    ],
    "value": 55,
}
```

Schrijf een programma dat een gegeven waarde in deze boomstructuur kan terugvinden.

Bijvoorbeeld:

```text
Welk getal zoek je?
> 21
Dit getal zit in de boom. Het eerste voorkomen is terug te vinden via dit pad:
top level → kind op index 1 → kind op index 1 → kind op index 0
```
