view: interaction_digital_visit {
  derived_table: {
    sql: SELECT  ROW_NUMBER() OVER (ORDER BY visit_date_key) as ROW_ID,
                i.VISIT_DATE_KEY AS DATE_KEY,
                sc.MARKETING_CHANNEL_KEY as MARKETING_CHANNEL_LEVEL_2_KEY,
                i.DEVICE_TYPE_KEY,
                3 as POLICY_TYPE_LEVEL_2_KEY, /* Assume Paid */
                'Actual' as SERIES_IDENTIFIER, /* Assume Actual */
                SUM(i.INTERACTION_CNT) as INTERACTION_CNT
        FROM    SHARED_MRT.FACT_INTERACTION_DIGITAL_VISIT i
        LEFT    JOIN SHARED_MRT.DIM_SOURCE_CODE sc on i.source_code_key = sc.source_code_key
        LEFT    JOIN SHARED_MRT.DIM_MARKETING_CHANNEL mc on sc.marketing_channel_key = mc.marketing_channel_key
        WHERE   DIGITAL_VISIT_TYPE_KEY = 1 /* Consumer Road New Business */
        GROUP   BY i.VISIT_DATE_KEY, sc.MARKETING_CHANNEL_KEY, i.DEVICE_TYPE_KEY
        ;;
  }

  dimension: row_id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.ROW_ID ;;
  }

  dimension: date_key {
    hidden: yes
    type: string
    sql: ${TABLE}.DATE_KEY ;;
  }

  dimension: marketing_channel_level_2_key {
    label: "Marketing Channel Level 2 Key"
    hidden:  yes
    type: string
    sql: ${TABLE}.MARKETING_CHANNEL_LEVEL_2_KEY ;;
  }

  dimension: device_type_key {
    label: "Device Type Key"
    hidden:  yes
    type: string
    sql: ${TABLE}.DEVICE_TYPE_KEY ;;
  }

  dimension: policy_type_level_2_key {
    label: "Policy Type Level 2 Key"
    hidden:  yes
    type: string
    sql: ${TABLE}.POLICY_TYPE_LEVEL_2_KEY ;;
  }

  dimension: series_identifier {
    label: "Series Identifier"
    hidden:  yes
    type: string
    sql: ${TABLE}.SERIES_IDENTIFIER ;;
  }


  ##############################################################
  ### Digital Visit
  ##############################################################

  measure: digital_visit {
    label: "Digital Visit"
    group_label: "Interaction"
    type: sum_distinct
    sql: ${TABLE}.INTERACTION_CNT ;;
    sql_distinct_key: ${row_id};;
    value_format_name: decimal_0
  }

  ### Financial YTD

  measure: digital_visit_actual_fytd {
    label: "Digital Visit FYTD"
    group_label: "Interaction"
    type: sum_distinct
    sql: ${TABLE}.INTERACTION_CNT ;;
    sql_distinct_key: ${row_id};;
    filters: {
      field: new_business_sale.is_selected_fy
      value: "yes"
    }
    filters: {
      field: new_business_sale.is_up_to_selected_doy_fy
      value: "yes"
    }
    filters: {
      field: new_business_sale.series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  measure: digital_visit_actual_fytd_ly {
    label: "Digital Visit FYTD LY"
    group_label: "Interaction"
    type: sum_distinct
    sql: ${TABLE}.INTERACTION_CNT ;;
    sql_distinct_key: ${row_id};;
    filters: {
      field: new_business_sale.is_selected_last_fy
      value: "yes"
    }
    filters: {
      field: new_business_sale.is_up_to_selected_doy_fy
      value: "yes"
    }
    filters: {
      field: new_business_sale.series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  ##############################################################
  ### Digital Visit Conversion Rate
  ##############################################################

  measure: digital_cr {
    label: "Digital Visit Conversion Rate"
    group_label: "Conversion Rate"
    hidden:  yes
    type: number
    sql: COALESCE(COALESCE(${new_business_sale.volume},0) / NULLIF(${digital_visit},0),0);;
    value_format_name: percent_2
  }

  ### Financial YTD

  measure: digital_cr_actual_fytd {
    label: "Digital Visit Conversion Rate FYTD"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${new_business_sale.volume_actual_fytd},0) / NULLIF(${digital_visit_actual_fytd},0),0);;
    value_format_name: percent_2
  }

  measure: digital_cr_actual_fytd_ly {
    label: "Digital Visit Conversion Rate FYTD LY"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${new_business_sale.volume_actual_fytd_ly},0) / NULLIF(${digital_visit_actual_fytd_ly},0),0);;
    value_format_name: percent_2
  }

}
