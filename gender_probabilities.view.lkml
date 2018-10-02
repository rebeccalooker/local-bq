view: gender_probabilities {
  sql_table_name: `fh-bigquery.popular_names.gender_probabilities`
    ;;

  dimension: c {
    label: "ID"
    type: number
    sql: ${TABLE}.c ;;
  }

  dimension: female_prob {
    type: number
    sql: ${TABLE}.female_prob ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
