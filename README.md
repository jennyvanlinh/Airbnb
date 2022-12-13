** not finish yet

# Introduction
This visualization aims to let viewers know about common data of Airbnb listings in New York City. The datasets are from New York City Airbnb Open Data, available on [Kaggle](https://www.kaggle.com/datasets/dgomonov/new-york-city-airbnb-open-data) and [NYC OpenData](https://opendata.cityofnewyork.us/). The aim of this visualization is to allow viewers to know the general Airbnb listing information of each borough in NYC. 

# Steps
Step 1: Clean the data
- Got the dataset from Kaggle and map dataset from NYC OpenData ([borough](https://data.cityofnewyork.us/City-Government/Borough-Boundaries/tqmj-j8zm) and [neighborhood](https://data.cityofnewyork.us/City-Government/2020-Neighborhood-Tabulation-Areas-NTAs-Tabular/9nt8-h7nd/data)).
  - Kaggle dataset --> Airbnb_Open_Data.csv.zip
  - NYC OpenData map dataset --> Borough Boundaries.geojson & 2020 Neighborhood Tabulation Areas (NTAs) - Tabular.geojson
- Used R to clean Kaggle dataset --> Airbnb_Data.R
- Saved as a new CSV file --> Clean_Airbnb_Data.csv

Step 2: Manipulate the data
- Used Excel to manipulate the data accordingly so that we can create the charts and graphs 
  - General Information --> Aggregated_Airbnb_Quantitative_Values.csv
  - Construction year --> Aggregated_Airbnb_Construction_Year.csv
  - Host verification --> Aggregated_Airbnb_Host_Verification.csv
  - Instant bookable --> Filter_Airbnb_Instant_Bookable.csv
  - Room type --> Aggregated_Airbnb_Room_Type.csv
  - Cancellation policy --> Aggregated_Airbnb_Cancellation_Policy.csv

Step 3: Create the visualization
- Used Vega-Lite to create the charts and graphs --> borough_info.vg.json
- Used HTML to organise the layout of the page --> index.html
- Used CSS to format the page --> styles.css


