LBLP cluster voor concepten Python.
Maakt gebruik van enkele plugins.
Op dit ogenblik betekent dat dat gecompileerde plugin libraries aanwezig moeten zijn op het systeem.

De veronderstelling is hier dat het hoofdproject, LBLP, aanwezig is op het systeem, met de meegeleverde plugins. Door de omgevingsvariable `APPLICATION_SOURCE_DIR` in te stellen op het pad naar die projectfolder en dan `envsubst -i pre-contents.lc.yaml > contents.lc.yaml` uit te voeren, kunnen plugins gebruikt worden zonder volledig hardgecodeerde paden in de broncode.

De meegeleverde Nix flake voorziet hier alles voor (voor wie Nix gebruikt, wat niet vereist is).
Via `direnv` kan deze ook automatisch geactiveerd worden.
Het pad moet natuurlijk wel eenmalig aangepast worden.
`envsubst` wordt **niet** automatisch uitgevoerd bij wijziging van `pre-contents.lc.yaml`.
Background jobs lijken wat anders te werken in de context van `shellHook`, dus run eventueel gewoon: `while inotifywait -e modify pre-contents.lc.yaml; do envsubst -i pre-contents.lc.yaml > contents.lc.yaml; done &`. Gebruik dan `jobs` om de job terug te vinden.
