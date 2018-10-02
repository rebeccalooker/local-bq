connection: "looker-bq"

# include all the views
include: "*.view"

datagroup: default_dg {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: default_dg

explore: usa_summary_1880_2015 {
  label: "Baby Names"
  view_label: "1880-2015"

  join: usa_1910_2013 {
    view_label: "1910-2013"
    sql_on: ${usa_summary_1880_2015.name} = ${usa_1910_2013.name} ;;
    type: left_outer
    relationship: many_to_many
  }

  join: gender_probabilities {
    view_label: "1910-2013"
    sql_on: ${usa_1910_2013.name} = ${gender_probabilities.name} ;;
    type: left_outer
    relationship: many_to_one
  }
}
