view: usa_summary_1880_2015 {
  # sql_table_name: `fh-bigquery.popular_names.usa_summary_1880_2015`
  #   ;;
  derived_table: {
    sql: SELECT *
        , GENERATE_UUID() as pk
      FROM `fh-bigquery.popular_names.usa_summary_1880_2015` ;;
  }

  dimension: pk {
    hidden: yes
    sql: ${TABLE}.pk ;;
    type: string
    primary_key: yes
  }

  dimension: gender {
    group_label: "aab"
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: name {
    group_label: "aaa"
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}.number ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
