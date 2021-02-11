# Crunchbase Scraper

## Goals

- To import leads from a CSV file to a database
- To turn companies into leads and mark said companies as scraped
- To push scrape results into Airtable

## How to use it
### 1. Build a list of companies to scrape from on crunchbase.
- Head over to [Crunchbase Company Search](https://www.crunchbase.com/discover/organization.companies)
and put in your search criteria.
- __Make sure to exclude the existing lists from the search.__
   

### 2. Start the list builder
```bash
rake list:build
```
- It will ask you a bunch of questions about the search. The answers will be stored,
and uploaded into Salesforce. 

- __The most important question it will ask you is a list number. It will become the folder where the list is stored, and is used by the importer__. 

- The list builder is watching your clipboard. Select all of the companies on the results page (Cmd + A) and copy them.
Keep moving forward in the list until you are done.
   
- Once the list has been built its time to scrape to impor the list into the database.


### 3. Import the list
Execute the import by calling rake import:import, with a number of list being imported.
```bash
rake import:list[2]
```

### 4. Start Scraping
Execute the scraper by invoking the scraper:scrape command, with a list number.
```bash
rake scraper:scrape[2]
```

### 5. Upload to Airtable for further processing
- Execute upload:contacts with a number of contacts being uploaded.
- Don't upload too many contacts at once in case of error. Keep it around 100 and 200.

```bash
rake upload:contacts[200]
```
