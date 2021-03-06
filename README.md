# TN_Politics

This is a repo for hosting poltical data related to Tennessee politics.

# Datasets:

* tn_presidential_elections_county_level_1904_to_2016.csv - Presidential election votes since 1904 broken down by county.
* tn_fed_state_election_data_2008_to_2018.csv - TN Federal/state election votes at the county precinct level from 2008 - 2018 taken from the TN Election Commission website
* tn_unknown_party.csv - A list of candidates whose "Independent" or "Write-In" status isn't 100%.   They may be Libertarian, Green, or some other minor party, and need to be verified.

## Usage:

        library(tidyverse)
        
        election_data <- read_csv("tn_presidential_elections_county_level_1904_to_2016.csv", col_names = TRUE, col_types = "dccccdll")
        
        election_data %>% filter(County == "Davidson") %>% filter(County_Winner == TRUE)
        
            Year County   Party      Partisan_Lean Candidate             Votes National_Winner County_Winner
           <dbl> <chr>    <chr>      <chr>         <chr>                 <dbl> <lgl>           <lgl>        
         1  1904 Davidson Democratic Center-Left   Alton B. Parker        7735 FALSE           TRUE         
         2  1908 Davidson Democratic Center-Left   William Howard Taft    8309 TRUE            TRUE         
         3  1912 Davidson Democratic Center-Left   Woodrow Wilson         9517 TRUE            TRUE         
         4  1916 Davidson Democratic Center-Left   Woodrow Wilson         8958 TRUE            TRUE         
         5  1920 Davidson Democratic Center-Left   James M. Cox          13354 FALSE           TRUE         
         6  1924 Davidson Democratic Center-Left   John W. Davis         11363 FALSE           TRUE         
         7  1928 Davidson Republican Center-Right  Herbert Hoover        15359 TRUE            TRUE         
         8  1932 Davidson Democratic Center-Left   Franklin D. Roosevelt 21233 TRUE            TRUE         
         9  1936 Davidson Democratic Center-Left   Franklin D. Roosevelt 25530 TRUE            TRUE         
        10  1940 Davidson Democratic Center-Left   Franklin D. Roosevelt 27589 TRUE            TRUE   

## Examples:

Find which counties do the best job of forecasting the national winner, and how accurate they are:

        election_data %>% 
          filter(National_Winner == TRUE) %>% 
          filter(County_Winner == TRUE) %>% 
          select(County, National_Winner) %>% 
          group_by(County) %>% 
          summarize(Count = n() / 29) %>% 
          ungroup() %>% 
          arrange(desc(Count))
        
        # A tibble: 96 x 2
           County   Count
           <chr>    <dbl>
         1 Lawrence 0.828
         2 Carroll  0.793
         3 Meigs    0.793
         4 Anderson 0.759
         5 Polk     0.759
         6 Hamilton 0.724
         7 Marion   0.724
         8 Sullivan 0.724
         9 Bledsoe  0.690
        10 McNairy  0.690

So the winner in Lawrence County is the national winner 82.8% of the time.


## Data sources

* Data from 1904-1996 was taken from Wikipedia's pages on United States presidential elections in Tennessee.

* Data from 2000-2016 was taken from the [Tennessee Election Commission](https://sos.tn.gov/elections/results) website.  

The TEC has data on *all* candidates including very minor ones, whereas the Wikipedia pages have data on only the biggest 2-5 parties in an election.  If any history buffs want to 
help, it would be useful to get voting info on the parties that Wikipedia overlooks as too trivial.

As an example, look at the Wikipedia page for the [1952 Presidential Election in 
Tennessee](https://en.m.wikipedia.org/wiki/1952_United_States_presidential_election_in_Tennessee#Results_by_county).  The county-level vote breakdown for the "Christian Nationalist" 
party is missing.  And there are many other occurances where small but historically interesting parties were either lumped together into "Other", or don't have a county-level vote 
breakdown.

## Notes

If you're paying close attention to the data, you'll notice that there *96* counties listed.  Tennessee currently has 95 counties, but in the early 20th century, there was a 96th 
county ([James County](https://en.wikipedia.org/wiki/James_County,_Tennessee)) which was taken from the eastern 3rd of Hamilton County (where Chattanooga is).  James County eventually 
went bankrupt and was folded back into Hamilton County.  I am leaving James County's votes separate from Hamilton Co, but you may want to lump them together if you're doing an analysis.
