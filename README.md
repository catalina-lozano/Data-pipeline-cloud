# Pipeline in Cloud: Automated Data Collection and Storage

## 📚 Table of Contents
- [📌 Project Overview](#-project-overview)  
- [🚀 Key Features](#-key-features)
- [🧠 Skills Demonstrated](#-skills-demonstrated)
- [🛠 Tools & Libraries Used](#-tools--libraries-used)
- [🌱 Future Enhancements](#-future-enhancements)

# 📌 Project Overview
This project simulates the role of a Junior Data Engineer at Gans for my Data Science Bootcamp, tasked with building a fully automated cloud-based data pipeline. The pipeline collects, transforms, and stores data from multiple sources to support fleet management strategies.

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
