---
title       : Coloring ship corrosion data
subtitle    : A matter of highlighting the damage
author      : Geert Potters
job         : Antwerp Maritime Academy
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
widgets     : [shinyapps, shiny]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
logo        : hzs.png

---  

## The need for research

- Corrosion is a major cause for ship failure. 
- Economic costs are huge!
- Insight in what slows down ship steel degradation is needed. 
- Data have been collected over the years on the condition of a random selection of ships. One series of ships ('treated') were especially well maintained, and less affected by corrosion than the bulk of the ships ('control'). 
- Just let me show you...

---

## The classic approach is dull

Here are the data on a simple R plot. 
Which is indeed rather boring to look at, admittedly...


![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1.png) 



---

## The solution ?

- Create an interactive plot where the colors can be adapted to suit the needs of the presenter.
- Widgets control color, style and a light descriptive statistic analysis of the data. 
- This app serves as a basic model for the creation of more in-depth analysis tools, offering the presenter the full range of analysis choices for an interactive lecture. 
- Future enhancements should offer the option to investigate many parameters (instead of just the one 'treatment' mentioned here).


---

<img src="app.png" alt="App Screemshot" style="width: 750px;"/>




