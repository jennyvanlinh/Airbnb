# Introduction
This visualization aims to let viewers know about common data of Airbnb listings in New York City. The data is from New York City Airbnb Open Data, available on [Kaggle](https://www.kaggle.com/datasets/dgomonov/new-york-city-airbnb-open-data).

# Steps to create the visualization
Step 1: Cleaned the data 
- *data* folder
  - Got the dataset from Kaggle -> Airbnb_Open_Data.csv.zip
  - Cleaned the data using R -> Airbnb_Date.R
  - Reduce the data to around 1000 (so that it can fit within the size of the visualisation's NYC Map) -> Airbnb Data.csv
  - Using Excel to create other csv files to create the visualization easier -> Airbnb.csv, Airbnb Boroughs in NYC.csv, Airbnb (Nominal).csv, Airbnb Policy.csv, Airbnb Room.csv

Step 2: Created the visualization
- The visualization is created from Vega-Lite, HTML and Pure CSS
- *js* folder (Vega-Lite)
  - Created NYC Map -> map.vg.json
    - new-york-city-boroughs.geojson was used to create the base of NYC Map. The file was downloaded from [here](https://github.com/blackmad/neighborhoods/blob/master/new-york-city-boroughs.geojson).
    - Created bar chart on quantitative categories of the dataset
    - CSV files that were used for map.vg.json: Airbnb Boroughs in NYC.csv, Airbnb Data.csv, Airbnb.csv
  - Created line chart of Airbnb listings construction year -> line.vg.json
    - CSV files that were used for line.vg.json: Airbnb Data.csv
  - Created pie charts on nominal categories of the dataset -> pie.vg.json
    - CSV files that were used for pie.vg.json: Airbnb (Nominal).csv, Airbnb Policy.csv, Airbnb Room.csv
- Created and edited the index.html file (template based on pure css grid)
- *css* folder
  - Created and edited styles.css
- The visualization can be accessed [here](https://jennyvanlinh.github.io/Airbnb/).

