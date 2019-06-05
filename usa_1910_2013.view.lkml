view: usa_1910_2013 {
  # sql_table_name: `fh-bigquery.popular_names.usa_1910_2013`
  #   ;;
  derived_table: {
    sql: SELECT *
        , GENERATE_UUID() as pk
      FROM `fh-bigquery.popular_names.usa_1910_2013` ;;
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

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
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
