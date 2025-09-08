# Pipeline in Cloud: Automated Data Collection and Storage

## 📚 Table of Contents
- [📌 Project Overview](#-project-overview)  
- [🚀 Key Features](#-key-features)
- [🛠️ Tech Stack](#-tech-stack)  

# 📌 Project Overview
This project simulates the role of a Junior Data Engineer at Gans for my Data Science Bootcamp, tasked with building a fully automated cloud-based data pipeline. The pipeline collects, transforms, and stores data from multiple sources to support fleet management strategies.

<img width="600" height="600" alt="image" src="https://github.com/user-attachments/assets/de273404-be1d-4c82-99a0-9fc0c202b1fc" />


The project was developed in two phases:

* **Local Pipeline:** Data acquisition (via web scraping & APIs), storage in a MySQL database, and schema design.

* **Cloud Migration:** Deployment of the pipeline to Google Cloud Platform (GCP) using serverless technologies for automation and scalability.

# 🚀 Key Features

* Web Scraping (Wikipedia) → Extracted geographic and demographic data (Berlin, Hamburg, Munich).

* APIs Integration:
  - OpenWeatherMap API → Automated collection of weather forecasts.
  - AeroDataBox API → Real-time flight arrivals for selected cities.
* Data Storage: Designed and implemented a relational SQL schema (cities, populations, weather, flights) locally and in GCP MySQL.
* ETL Automation:
  - Scripts containerized and deployed as Google Cloud Functions (FaaS).
  - Cloud Scheduler used to trigger automated daily updates.
* End-to-End Pipeline: From raw external data to a cloud-hosted SQL repository continuously updated with weather and flight data.

# 🛠️ Tech Stack
* **Languages & Libraries:** Python (Pandas, Requests, BeautifulSoup, SQLAlchemy)
* **Databases:** MySQL (local & GCP Cloud SQL)
* **Cloud Services:** Google Cloud Functions, Cloud Scheduler, Cloud SQL
* **Other Tools:** Web scraping, REST APIs
