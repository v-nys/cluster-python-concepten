Je krijgt volgende Python dictionary, die een folderstructuur voorstelt:

```
folder_hierarchy = {
    "name": "level 1 directory",
    "children": [
        {
            "name": "level 2 directory A",
            "children": [
                {"name": "level 3 directory A1", "children": []},
                {"name": "level 3 directory A2", "children": []},
            ],
        },
        {
            "name": "level 2 directory B",
            "children": [{"name": "level 3 directory B1", "children": []}],
        },
        {
            "name": "level 2 directory C",
            "children": [
                {"name": "level 3 directory C1", "children": []},
                {"name": "level 3 directory C2", "children": []},
                {"name": "level 3 directory C3", "children": []},
            ],
        },
    ],
}
```

Schrijf een script met daarin bovenstaande declaratie en een functie, `pretty_print`, die een dictionary in bovenstaand formaat op het scherm afprint in volgend formaat:

```
level 1 directory
  level 2 directory A
    level 3 directory A1
    level 3 directory A2
  level 2 directory B
    level 3 directory B1
  level 2 directory C
    level 3 directory C1
    level 3 directory C2
    level 3 directory C3
```
