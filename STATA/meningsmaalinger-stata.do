* Importer data
import delimited ..\data\meningsmaalinger.csv

* Lav afhængig variabel
g index = institut + medie + stikproeve + ordlyd + usikkerhed + indsamling + metode

* Lav variabel med antal aktører
recode aktoer (1=0) (2 3=1) (4=2), g(aktoerantal)

* Estimer regression i tabel 4
reg index avis i.valg laengde i.aktoerantal, r
