### This script is used to assemble my TN Presidential Election by county/year dataset

### Before running this script, set the working directory to this folder

### First, we load all the spreadsheets for the individual elections...

data_1904 <- 
  read_csv("raw/Pres_1904.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 1904)

data_1908 <- 
  read_csv("raw/Pres_1908.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 1908)

data_1912 <- 
  read_csv("raw/Pres_1912.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 1912)

data_1916 <- 
  read_csv("raw/Pres_1916.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 1916)

data_1920 <- 
  read_csv("raw/Pres_1920.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 1920)

data_1924 <- 
  read_csv("raw/Pres_1924.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 1924)

data_1928 <- 
  read_csv("raw/Pres_1928.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 1928)

data_1932 <- 
  read_csv("raw/Pres_1932.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 1932)

data_1936 <- 
  read_csv("raw/Pres_1936.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 1936)

data_1940 <- 
  read_csv("raw/Pres_1940.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 1940)

data_1944 <- 
  read_csv("raw/Pres_1944.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 1944)

data_1948 <- 
  read_csv("raw/Pres_1948.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 1948)

data_1952 <- 
  read_csv("raw/Pres_1952.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 1952)

data_1956 <- 
  read_csv("raw/Pres_1956.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 1956)

data_1960 <- 
  read_csv("raw/Pres_1960.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 1960)

data_1964 <- 
  read_csv("raw/Pres_1964.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 1964)

data_1968 <- 
  read_csv("raw/Pres_1968.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 1968)

data_1972 <- 
  read_csv("raw/Pres_1972.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 1972)

data_1976 <- 
  read_csv("raw/Pres_1976.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 1976)

data_1980 <- 
  read_csv("raw/Pres_1980.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 1980)

data_1984 <- 
  read_csv("raw/Pres_1984.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 1984)

data_1988 <- 
  read_csv("raw/Pres_1988.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 1988)

data_1992 <- 
  read_csv("raw/Pres_1992.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 1992)

data_1996 <- 
  read_csv("raw/Pres_1996.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 1996)

data_2000 <- 
  read_csv("raw/Pres_2000.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 2000)

data_2004 <- 
  read_csv("raw/Pres_2004.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 2004)

data_2008 <- 
  read_csv("raw/Pres_2008.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 2008)

data_2012 <- 
  read_csv("raw/Pres_2012.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 2012)

data_2016 <- 
  read_csv("raw/Pres_2016.csv") %>%
  pivot_longer(-County, names_to = "Party", values_to = "Votes") %>%
  mutate(Year = 2016)

### Now we bind all the spreadsheets together and fix a few spelling oops...
election_data <-
  data_1904 %>%
  bind_rows(data_1908) %>%
  bind_rows(data_1912) %>%
  bind_rows(data_1916) %>%
  bind_rows(data_1920) %>%
  bind_rows(data_1924) %>%
  bind_rows(data_1928) %>%
  bind_rows(data_1932) %>%
  bind_rows(data_1936) %>%
  bind_rows(data_1940) %>%
  bind_rows(data_1944) %>%
  bind_rows(data_1948) %>%
  bind_rows(data_1952) %>%
  bind_rows(data_1956) %>%
  bind_rows(data_1960) %>%
  bind_rows(data_1964) %>%
  bind_rows(data_1968) %>%
  bind_rows(data_1972) %>%
  bind_rows(data_1976) %>%
  bind_rows(data_1980) %>%
  bind_rows(data_1984) %>%
  bind_rows(data_1988) %>%
  bind_rows(data_1992) %>%
  bind_rows(data_1996) %>%
  bind_rows(data_2000) %>%
  bind_rows(data_2004) %>%
  bind_rows(data_2008) %>%
  bind_rows(data_2012) %>%
  bind_rows(data_2016) %>%
  mutate(County = if_else(County == "Dekalb",  "DeKalb",  County)) %>%
  mutate(County = if_else(County == "Mcminn",  "McMinn",  County)) %>%
  mutate(County = if_else(County == "Mcnairy", "McNairy", County))

# Load the spreadsheet file that lists the candidates for each office
party_index <- read_csv("raw/Party_Candidates_1904_Present.csv")

# Load the spreadsheet that maps political lean (left/right far/center) to various
# political parties.   It is of necessity somewhat arbitrary, but if you think
# you can improve it I'd love to see it!
party_lean  <- read_csv("raw/Party_Lean.csv")

# Merge all the data together and fix a few issues.
merged_data <-
  election_data %>%
  left_join(party_index, by = c("Party" = "Party", "Year" = "Year")) %>%
  mutate(Party = if_else(Party == "Write_Ins", "Write-in", Party)) %>%
  mutate(Candidate = if_else(grepl("Independent:", Party), gsub("Independent:", "", Party), Candidate)) %>%
  mutate(Candidate = gsub("_", " ", Candidate)) %>% 
  mutate(Candidate = if_else(Party == "Other",    "Various", Candidate)) %>%
  mutate(Candidate = if_else(Party == "Write-in", "Write-in", Candidate)) %>%
  rename(National_Winner = Winner) %>%
  mutate(National_Winner = as.logical(National_Winner)) %>%
  mutate(National_Winner = if_else(Party == "Other",    FALSE, National_Winner)) %>%
  mutate(National_Winner = if_else(Party == "Write-in", FALSE, National_Winner)) %>%
  mutate(National_Winner = if_else(grepl("Independent:", Party), FALSE, National_Winner)) %>%
  left_join(party_lean, by = "Party") %>%
  select(Year, County, Party, Partisan_Lean, Candidate, Votes, National_Winner)

# Find the max votes per county per year and use that to find the winner of the election in that county
max_votes <- 
  election_data %>% 
  select(Year, County, Votes) %>% 
  group_by(Year, County) %>% 
  summarize(Votes = max(Votes)) %>% 
  ungroup() %>% 
  mutate(County_Winner = TRUE)

# Add the county winner to the data
final_data <-
  merged_data %>%
  full_join(max_votes, by = c("Year" = "Year", "County" = "County", "Votes" = "Votes")) %>%
  mutate(County_Winner = if_else(is.na(County_Winner), FALSE, County_Winner))

# Ok, we're done, so save the data
write_csv(final_data, "tn_presidential_elections_county_level_1904_to_2016.new.csv")
