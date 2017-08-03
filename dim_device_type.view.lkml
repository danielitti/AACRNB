view: device_type {
  derived_table: {
    sql:  SELECT  DEVICE_TYPE_KEY,
                  DEVICE_TYPE_DESC
          FROM    {{_user_attributes["commercial_road_new_business_schema_name"]}}.DIM_DEVICE_TYPE ;;
  }

  dimension: device_type_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.DEVICE_TYPE_KEY ;;
  }

  dimension: device_type_desc {
    label: "Device Type"
    type: string
    sql: ${TABLE}.DEVICE_TYPE_DESC ;;
  }
}
