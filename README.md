# R4RPTG
R pro Reporting - automatizace tvorby reportů v erku

Tento repozitář obsahuje jednoduchý příklad parametrického reportu v #rstats a RMarkdownu.

Jeho cílem je ukázat proveditelnost (a jednoduchost a praktičnost) přípravy parametrických reportů v erku, s důrazem na denní praxi obchodního analytika.

## Klíčové úložiště a soubory jsou:

- `/templates/report.Rmd` šablona s 2 definovanými parametry (krajem a datumem)
- `/code/1-execute.R` postupně spustí tvorbu 14 reportů pro 14 krajů ČR k jednomu zvolenému datumu
- `/data` do této složky se dle potřeby stahnou podkladová data (tj. potřebujete internet)
- `/output` do této složky se uloží vytvořené reporty

<p align="center">
  <img src="https://www.jla-data.net/CZE/2019-06-21-parametricke-reporty-v-erku_files/praha.png" alt="výčet sprosťáren"/>
</p>

Pro ilustraci používám svojí [oblíbenou časovou řadu](https://www.czso.cz/csu/czso/vyvoj-prumernych-cen-vybranych-potravin) ze staťáku, protože čím jiným motivovat věčně žíznivého analytika?
