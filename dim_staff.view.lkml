view: staff {
  sql_table_name: SHARED_MRT.DIM_STAFF ;;

  dimension: staff_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.STAFF_KEY ;;
  }

  dimension: staff_type {
    label: "Staff Type"
    type: string
    sql: ${TABLE}.STAFF_TYPE ;;
  }

}
