ReadMe - Corrosion in Ships visualisation app
============

This is my assignment for the Developing Data Products course at Coursera - posted at 20/21 September 2014.


## What is this app about? ##
Corrosion is a major cause of marine structural failures: it results in loss of structural strength at regional and global levels, and leads to fatigue failure and stress corrosion cracking. Consequently, the costs pertaining to corrosion are sky high: a 2006 study indicates that the US Navy alone incurred 2.44 billion dollars’ worth of damage due to corrosion; for the U.S. marine shipping industry, the annual corrosion-related costs were estimated at $2.7 billion. The latter cost is associated with new construction ($1.12 billion), maintenance and repairs ($ 810 million), and corrosion-related downtime ($ 785 million). For the whole U.S. economy, the 1998 cost of corrosion amounted to $275.7 billion in 1998 alone. 
Studying the factors which influence corrosion onset and progression in real life ballast tanks are therefore of great economic importance. 

Ongoing surveys have identified that one factor (not yet to be divulged as the research is still going on) has a significant inhibitory effect on the onset of tank corrosion. THe ships corresponding to this factor are called "treated", whereas the others are thus far called "control" ships. This app offers the option to visualise this effect (by affecting the colors and symbols on the graph) and offer some statistical description of the whole data set or of the treated or control subsets. 


## How to use this app? ##
The objective of this assignment (and the way I approached it) is to create a Shiny app delivering a "proof of concept" for a package which makes the analysis of our ship corrosion data more interactive. 

In the panel on the left side, the user can choose: 

- which data(sub)set should be summarised by R (using the radio buttons on top);
- which colors should be used in the graph for the control data (upper dropdown menu) or the treated data (lower dropdown menu); 
- which symbols should be used in the graph to represent both data subsets. 

The reported R-squared value is linked to a simple linear regression model (through the origin of the graph, as no ship starts its life partially corroded). 

