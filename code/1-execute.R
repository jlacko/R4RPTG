# incializace - stažení dat, vytvoření vektoru krajů

library(tidyverse) # protože Tidyverse :)
library(curl)      # pro stažení dat přes cURL
library(readr)     # pro načtení csvčka rychleji a radostněji než base R
library(rmarkdown) # pro generování reportů

# pokud soubory neexistují lokálně - stahnout!
if (!file.exists('./data/potraviny.csv')) {
   curl_download("https://www.jla-data.net/sample/R4SU-potraviny.csv", # odkuď?
                       "./data/potraviny.csv") # kam?
}

# načíst soubor z disku (teď už existuje určitě...)
potraviny <- read_csv2("./data/potraviny.csv")
# rozhodné datum, jako text YYYY-MM-DD
datum <- "2016-04-15" 


# vektor všech krajů v datech - budeme spouštět jeden po druhém
kraje <- potraviny %>% 
   filter(uzemi_txt != "Česká republika") %>% 
   pull(uzemi_kod) %>% # všechny kódy, kromě republiky jako celku
   unique()

for (i in seq_along(kraje)) { # tj. od jedničky do čtrnáckty
   
   kraj <- kraje[i] # procyklení všech krajů
   
   render("./templates/report.Rmd", # Rmd template, včetně cesty
          params = list(kraj = kraj, # parametry
                        datum = datum), 
          knit_root_dir = "./", # cesty vedou z rootu projektu
          output_format = "html_document", # výstup je html
          output_dir = "./output", # kam uložit?
          output_file = paste0(kraj, '.html'), # cílový soubor
          encoding = 'UTF-8', # pro češtinu důležité
          quiet = T) # nemusím číst všechno...  
}