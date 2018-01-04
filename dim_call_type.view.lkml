view: call_type {
  sql_table_name: {{_user_attributes["commercial_road_new_business_schema_name"]}}.DIM_CALL_TYPE ;;

  dimension: call_type_key {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.CALL_TYPE_KEY ;;
  }

  dimension: call_type_desc {
    label: "Call Type Desc"
    group_label: "Call Type"
    type: string
    sql: ${TABLE}.CALL_TYPE_DESC ;;
  }


}
