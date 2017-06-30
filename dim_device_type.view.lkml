view: device_type {
  derived_table: {
    sql:  SELECT  DEVICE_TYPE_KEY,
                  DEVICE_TYPE_DESC
          FROM    SHARED_MRT_UAT7.DIM_DEVICE_TYPE ;;
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
