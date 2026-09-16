#REDCap allows authorized users to export project data in various formats.
#Research Electronic Data Capture
#Some REDCap installations provide direct or API-based methods for obtaining data.
library(REDCapR)

result <- redcap_read(
  redcap_uri = "https://your-redcap-server/api/",
  config = "redcap_config.yml"
)

#A REDCap API token is sensitive authentication information.
#Do not do this in a public script:
  token <- "MY_REAL_REDCAP_TOKEN"
#Instead, use a secure mechanism such as environment variables or a protected configuration file.

  
token <- Sys.getenv("REDCAP_TOKEN")

#One of the most important things to understand when working with REDCap is the data dictionary.
#for example in variable sex, male may be 1 or 2 and so do female. there is no absolute value unless dictionary confirms it.


# it could have checkbox, for eg: two chckbox dm and htn could be named as checkbozx_1 and checkbozx_2

#REDCap projects can contain multiple events.
#for eg in cohort study, data of patient id 001 could be in different time line like. baseline, month 1, month2 month3


#Always ask:
#What does one row represent?
 

 











