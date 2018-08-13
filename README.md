# Project Overview

##Part A.

Create a project using Python and tools in the Python ecosystem (preferably pandas) to take some data and answer some questions. Data sourcing, cleaning, and exploration is part of the project so show your work.
 
Using the 311 Service Request data from Open Data NYC (https://data.cityofnewyork.us/Social-Services/311-Service-Requests-from-2010-to-Present/erm2-nwe9) answers following questions for complaints in 2017. Use other datasets as needed, for population data, for data cleaning, etc.
·         Consider only the 10 most common overall complaint types. For each borough, how many of each of those 10 types were there in 2017?
·         Consider only the 10 most common overall complaint types.  For the 10 most populous zip codes, how many of each of those 10 types were there in 2017?
·         Considering all complaint types. Which boroughs are the biggest "complainers" relative to the size of the population in 2017? Meaning, calculate a complaint-index that adjusts for population of the borough.

Commit the code to a git repo. In case you can't get Part B to work, at least get this repo pushed up to Github/Gitlab or the like so you can share it with us.

Notes/hints:
·         For the 311 data, programmatically source the data. Either:
o    Download the full dataset https://data.cityofnewyork.us/api/views/erm2-nwe9/rows.csv and somehow filter down to the 2017 data.
o    Use the Socrata Open Data API https://dev.socrata.com/foundry/data.cityofnewyork.us/fhrw-4uyv.
o    However, if you're having issues sourcing the data, here's the 2017 subset: https://s3.amazonaws.com/dbrs-recruit/2017_subset.csv.
·         For population by zip code you can use https://blog.splitwise.com/2013/09/18/the-2010-us-census-population-by-zip-code-totally-free/. You can just pretend ZCTA == zip.
·         Feel free to use other datasets if you find the need. For example, is there a way to clean up "Unspecified" Boroughs?
·         Use Jupyter if you can, consider using https://hub.docker.com/r/jupyter/datascience-notebook/.
 

##Part B.

Deploy the above project to a Linux EC2 instance.

Separately, we'll sent you an account on AWS. I'm https://keybase.io/jinyk, if not keybase.io, figure out someway for me to send you this account. This account has IAMFullAccess but nothing else. Use this account to give yourself the necessary privileges and to do the following:

·         Create yourself a Linux EC2 instance - no larger than a m5.large (consider doing this in Terraform).
·         Do not use any existing resources. Security groups, IAM group, etc. Create your own if need be.
·         Have the above project run from this EC2 instance.
·         Use Git to commit your work along the way and have this deployed project be a repo. Meaning we should be able to git log in the project folder in the EC2 instance to see the commit history.