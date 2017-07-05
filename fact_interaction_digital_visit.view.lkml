view: interaction_digital_visit {
  derived_table: {
    sql: SELECT   ROW_NUMBER() OVER (ORDER BY visit_date_key) as ROW_ID,
                  idv.VISIT_DATE_KEY as DATE_KEY,
                  at.ACCOUNTING_TREATMENT,
                  3 as POLICY_TYPE_LEVEL_2_KEY, /* Assume Paid */
                  idv.MARKETING_CHANNEL_LEVEL_2_KEY,
                  idv.DEVICE_TYPE_KEY,
                  idv.INTERACTION_CNT
        FROM      (SELECT  i.VISIT_DATE_KEY,
                            sc.MARKETING_CHANNEL_KEY as MARKETING_CHANNEL_LEVEL_2_KEY,
                            i.DEVICE_TYPE_KEY,
                            SUM(i.INTERACTION_CNT) as INTERACTION_CNT
                    FROM    SHARED_MRT.FACT_INTERACTION_DIGITAL_VISIT i
                    LEFT JOIN SHARED_MRT.DIM_SOURCE_CODE sc on i.source_code_key = sc.source_code_key
                    LEFT JOIN SHARED_MRT.DIM_MARKETING_CHANNEL mc on sc.marketing_channel_key = mc.marketing_channel_key
                    WHERE   DIGITAL_VISIT_TYPE_KEY = 1 /* Consumer Road New Business */
                    GROUP BY i.VISIT_DATE_KEY, sc.MARKETING_CHANNEL_KEY, i.DEVICE_TYPE_KEY
                    ) idv
        CROSS JOIN (
                    SELECT 'Effective'  as ACCOUNTING_TREATMENT FROM dual UNION ALL
                    SELECT 'Incepted'   as ACCOUNTING_TREATMENT FROM dual UNION ALL
                    SELECT 'Transacted' as ACCOUNTING_TREATMENT FROM dual
                    ) at
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

  dimension: accounting_treatmenr {
    label: "Accounting Treatment"
    hidden: yes
    type: string
    sql: ${TABLE}.ACCOUNTING_TREATMENT ;;
  }

  dimension: policy_type_level_2_key {
    label: "Policy Type Level 2 Key"
    hidden:  yes
    type: string
    sql: ${TABLE}.POLICY_TYPE_LEVEL_2_KEY ;;
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

  ##############################################################
  ### Interaction
  ##############################################################

  measure: interaction {
    label: "Interaction"
    group_label: "Interaction"
    hidden:  yes
    type: sum_distinct
    sql: ${TABLE}.INTERACTION_CNT ;;
    sql_distinct_key: ${row_id};;
    value_format_name: decimal_0
  }

  ### Financial YTD

  measure: interaction_actual_fytd {
    label: "Interaction FYTD"
    group_label: "Interaction"
    hidden:  yes
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

  measure: interaction_actual_fytd_ly {
    label: "Interaction FYTD LY"
    group_label: "Interaction"
    hidden:  yes
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
  ### Digital Conversion Rate
  ##############################################################

  measure: digital_cr {
    label: "Digital Conversion Rate"
    group_label: "Digital Conversion Rate"
    hidden:  yes
    type: number
    sql: COALESCE(COALESCE(${new_business_sale.volume},0) / NULLIF(${interaction},0),0);;
    value_format_name: percent_2
  }

  ### Financial YTD

  measure: digital_cr_actual_fytd {
    label: "Digital Conversion Rate FYTD"
    group_label: "Digital Conversion Rate"
    hidden:  yes
    type: number
    sql: COALESCE(COALESCE(${new_business_sale.volume_actual_fytd},0) / NULLIF(${interaction_actual_fytd},0),0);;
    value_format_name: percent_2
  }

  measure: digital_cr_actual_fytd_ly {
    label: "Digital Conversion Rate FYTD LY"
    group_label: "Digital Conversion Rate"
    hidden:  yes
    type: number
    sql: COALESCE(COALESCE(${new_business_sale.volume_actual_fytd_ly},0) / NULLIF(${interaction_actual_fytd_ly},0),0);;
    value_format_name: percent_2
  }

}
