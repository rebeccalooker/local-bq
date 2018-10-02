connection: "looker-bq"

# include all the views
include: "*.view"

datagroup: default_dg {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: default_dg
