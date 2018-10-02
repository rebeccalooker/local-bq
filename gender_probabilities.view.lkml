view: gender_probabilities {
  sql_table_name: `fh-bigquery.popular_names.gender_probabilities`
    ;;

  ## Unknown field
  dimension: c {
    type: number
    sql: ${TABLE}.c ;;
    hidden: yes
  }

  dimension: female_prob {
    label: "Female Probability"
    type: number
    sql: ${TABLE}.female_prob ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
    hidden: yes
  }

  dimension: name {
    type: string
    sql: concat(UPPER(SUBSTR(${TABLE}.name, 1, 1)), LOWER(SUBSTR(${TABLE}.name, 2))) ;;
    hidden: yes
  }

  measure: count {
    type: count
    drill_fields: [name]
    hidden: yes
  }
}
