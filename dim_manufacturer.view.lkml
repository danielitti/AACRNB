view: manufacturer {
  sql_table_name: {{_user_attributes["commercial_road_new_business_schema_name"]}}.DIM_MANUFACTURER ;;

  dimension: manufacturer_key {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.MANUFACTURER_KEY ;;
  }

  dimension: manufacturer_desc {
    label: "Manufacturer Description"
    type: string
    sql: ${TABLE}.MANUFACTURER_DESC ;;
  }

}
