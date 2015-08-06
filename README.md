Mediernes formidling af meningsmålinger: Indholdsanalyse af folketingsvalg, 2005-2011
---

### Beskrivelse
Materiale relateret til artiklen _Mediernes formidling af meningsmålinger: Indholdsanalyse af folketingsvalg, 2005-2011_ publiceret i _Tidsskriftet Politik_ 15(3). 

Denne mappe indeholder reproduktionsmateriale samt yderligere information der vil være brugbart, hvis man ønsker at reproducere og/eller udvide studiet af mediernes formidling af meningsmålinger. Denne mappe indeholder ikke det rå datamateriale, altså de indsamlede artikler, men disse kan 1) indsamles manuelt ved at bruge fremgangsmåden beskrevet i artiklen eller 2) tilsendes ved at tage kontakt til forfatterne (artiklerne fylder 359 mb pakket i en `.rar` fil).

### Forfattere/kontakt

 - Erik Gahner Larsen, erikgahner@gmail.com
 - Simon Grundt Straubinger, simon.wismar@gmail.com

### Indhold

#### `/data/`

- `meningsmaalinger.csv` = Datasæt med følgende variable:
    + `id` = Unikt artikel ID
    + `koder` = Angiver hvem der har kodet artiklen (Erik Gahner Larsen eller Simon Grundt Straubinger)
    + `avis` = Angiver om artiklen er fra internettet eller trykt avis (1 = Avis, 0 = Internettet)
    + `medieaktoer` = Angiver hvilket medie, der har publiceret artiklen (Jyllands-Posten, Politiken, Berlingske eller Ekstra-Bladet)
    + `valg` = Angiver om artiklen er fra valgkampen 2005, 2007 eller 2011
    + `laengde` = Angiver længden på artiklen (ord)
    + `aktoer` = Angiver hvilke fortolkningsaktører, der nævnes (Ingen, politikere, eksperter eller begge)
    + `institut` = Metodisk information: Analyseinstitut/organisation
    + `medie` = Metodisk information: Medie meningsmålingen er foretaget for
    + `stikproeve` = Metodisk information: Stikprøvestørrelsen
    + `ordlyd` = Metodisk information: Spørgsmålsformuleringens ordlyd
    + `usikkerhed` = Metodisk information: Statistisk usikkerhed
    + `indsamling` = Metodisk information: Perioden for dataindsamling
    + `metode` = Metodisk information: Anvendte metode til indsamling af data

#### `/R/`

- `meningsmaalinger-r.R` = R script til at reproducere resultaterne
- `sessionInfo.txt` = Output fra sessionInfo() i R

#### `/STATA/`

- `meningsmaalinger-stata.do` = STATA do-file til at reproducere resultaterne

#### `/procedure/`

- `codebook_danish.pdf` = Kodebog på dansk, appliceret på hver artikel

#### `/paper/` 

- `2012meningsmaalinger.pdf` = Artiklen som publiceret i _Tidsskriftet Politik_
- `2012meningsmaalinger.bib` = BibTeX information