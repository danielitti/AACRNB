view: staff {
  sql_table_name: {{_user_attributes["commercial_road_new_business_schema_name"]}}.DIM_STAFF ;;

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
