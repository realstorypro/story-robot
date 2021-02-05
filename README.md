# Company Scraper

## Goals

- To import leads from a CSV file to a database
- To turn companies into leads and mark said companies as scraped
- To push scrape results into Airtable

## How to use it
1. Store lists in the __lists__ folder, in a separate numbered folder
   
2. Ensure that folder has both __settings.yml__ and __list_of_company_names_raw.csv__
   
3. Execute the import by calling rake import:import, with a number of the folder being imported
```bash
rake import:list[2]
```
