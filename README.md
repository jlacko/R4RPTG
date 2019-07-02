# R4RPTG
R pro Reporting - Automatizace reportů v erku

Tento repozitář obsahuje jednoduchý příklad parametrického reportu v erku a RMarkdownu.

Jeho cílem je ukázat proveditelnost (a jednoduchost a praktičnost) přípravu parametrických reportů, s důrazem na praxi obchodního analytika v erku.

## Klíčové úložiště a soubory jsou:

- `/templates/report.Rmd` který obsahuje šablonu s 2 definovanými parametry (krajem a datumem)
- `/code/1-execute.R` který postupně spustí tvorbu 14 reportů pro 14 krajů ČR k jednomu zvolenému datumu
- `/data` do této složky se dle potřeby stahnou podkladová data (tj. potřebujete internet)
- `/output` do této složky se uloží vytvořené reporty 

