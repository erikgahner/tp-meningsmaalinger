###
#
# Reproduktionsmateriale til "Mediernes formidling af meningsmålinger: Indholdsanalyse af folketingsvalg, 2005-2011"
# - Erik Gahner Larsen (erikgahner@gmail.com)
# - Simon Grundt Straubinger (simon.wismar@gmail.com)
# 
###

# Åben libraries
library(sandwich)
library(zoo)
library(lmtest)

# Lav data frame med datasættet, der ligger i mappen data
meningsmaalinger <- read.csv("../data/meningsmaalinger.csv")

# Se de første 10 rækker
head(meningsmaalinger, 10)

# Lav afhængig variabel
meningsmaalinger$index <- with(meningsmaalinger,
                                 institut + medie + stikproeve + ordlyd + usikkerhed + indsamling + metode
                                 )

# Lav variabl med antal aktører
meningsmaalinger$aktoerantal <- NA
meningsmaalinger[meningsmaalinger$aktoer == 1,]$aktoerantal <- 0
meningsmaalinger[meningsmaalinger$aktoer == 2 | meningsmaalinger$aktoer == 3,]$aktoerantal <- 1
meningsmaalinger[meningsmaalinger$aktoer == 4,]$aktoerantal <- 2

# Estimer regression (uden robuste standardfejl)
regression <- lm(index ~ avis + as.factor(valg) + laengde + as.factor(aktoerantal), data=meningsmaalinger)

# Få resultaterne som rapporteret i tabel 4 (med robuste standardfejl)
coeftest(regression, vcov = vcovHC(regression, "HC1"))

# Lav sessionInfo.txt
writeLines(capture.output(sessionInfo()), "sessionInfo.txt")