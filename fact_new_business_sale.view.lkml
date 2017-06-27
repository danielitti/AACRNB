view: new_business_sale {
  derived_table: {
    sql: SELECT
              ROW_NUMBER() OVER (ORDER BY DATE_KEY) as ROW_ID,
              ACCOUNTING_TREATMENT,
              DATE_KEY,
              TIME_KEY,
              --TRANSACTION_KEY,
              --TRANSACTION_ID,
              --POLICY_KEY,
              --TRANSACTION_TYPE_LEVEL_3_KEY,
              TRANS_SALES_CHANNEL_LEVEL2_KEY,
              --CUSTOMER_TYPE_KEY,
              POLICY_TYPE_LEVEL_2_KEY,
              --CONTRACT_TYPE_LEVEL_2_KEY,
              --RECURRENCE_PATTERN_KEY,
              --PAYMENT_METHOD_LEVEL_1_KEY
              --CONTRACT_AND_RECURRENCE_KEY,
              PRODUCT_PACKAGE_LEVEL_2_KEY, --this one for waterfall
              --ADDON_PACKAGE_LEVEL_1_KEY,
              --DEVICE_TYPE_KEY,
              --SOURCE_CODE_KEY,
              --STAFF_KEY,
              --LEAD_CODE_KEY,
              --MEMBERSHIP_TYPE_LEVEL_2_KEY,
              OFFER_CODE,
              IS_WILL_JOIN,
              --ANNUALISATION_FACTOR,
              --PRODUCT_AND_ADDON_GCP,
              ANNUALISED_PRODUCT_ADDON_GCP,
              TRANSACTION_COUNT,
              SERIES_IDENTIFIER,
              TRANSACTION_DATE.DATE_DTTM,
              TRANSACTION_DATE.DATE_DD_MON,
              TRANSACTION_DATE.DATE_MM_DD,
              TRANSACTION_DATE.TRADING_WEEK_NUMBER,
              TRANSACTION_DATE.TRADING_WEEK_NAME,
              TRANSACTION_DATE.TRADING_DAY_NUMBER_OF_WEEK,
              TRANSACTION_DATE.FINANCIAL_WEEK_NUMBER,
              TRANSACTION_DATE.FINANCIAL_WEEK_YYYYWW,
              TRANSACTION_DATE.FINANCIAL_YEAR,
              TRANSACTION_DATE.FINANCIAL_YEAR_NAME
              FROM  SHARED_MRT_UAT7.FACT_NEW_BUSINESS_SALE
              INNER JOIN
                    (SELECT   DATE_KEY AS DIM_DATE_KEY,
                              DATE_DTTM,
                              TO_CHAR(date_dttm, 'DD-MON') as DATE_DD_MON,
                              TO_CHAR(date_dttm, 'MMDD') as DATE_MM_DD,
                              FINANCIAL_WEEK_NUMBER as TRADING_WEEK_NUMBER,
                              FINANCIAL_WEEK_NAME as TRADING_WEEK_NAME,
                              CALENDAR_DAY_NUMBER_OF_WEEK as TRADING_DAY_NUMBER_OF_WEEK,
                              FINANCIAL_WEEK_NUMBER,
                              FINANCIAL_WEEK_YYYYWW,
                              FINANCIAL_YEAR,
                              FINANCIAL_YEAR_NAME
                              FROM  SHARED_MRT_UAT7.DIM_DATE) TRANSACTION_DATE
              ON SHARED_MRT_UAT7.FACT_NEW_BUSINESS_SALE.DATE_KEY = TRANSACTION_DATE.DIM_DATE_KEY
            ;;
  }

  ###########################################################################################
  ### Dimensions
  ###########################################################################################

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

  dimension: time_key {
    hidden: yes
    type: string
    sql: ${TABLE}.TIME_KEY ;;
  }

  dimension_group: trx_date {
    label: "Transaction Calendar"
    type: time
    timeframes: [date, week, month, raw]
    convert_tz: no
    sql: ${TABLE}.DATE_DTTM ;;
  }

  dimension: trx_day_month {
    label: "Calendar Day And Month"
    group_label: "Transaction Date Indentifiers"
    type: string
    sql: ${TABLE}.DATE_DD_MON ;;
  }

  dimension: trx_month_day {
    label: "Calendar Month And Day"
    group_label: "Transaction Date Indentifiers"
    type: string
    sql: ${TABLE}.DATE_MM_DD ;;
  }

  dimension: trx_trdwk_number {
    label: "Trading Week Number"
    group_label: "Transaction Date Indentifiers"
    type: string
    sql: ${TABLE}.TRADING_WEEK_NUMBER ;;
  }

  dimension: trx_trdwk_name {
    label: "Trading Week Name"
    group_label: "Transaction Date Indentifiers"
    type: string
    sql: ${TABLE}.TRADING_WEEK_NAME ;;
  }

  dimension: trx_trdwk_day_number {
    label: "Trading Week Day Number"
    group_label: "Transaction Date Indentifiers"
    type: string
    sql: ${TABLE}.TRADING_DAY_NUMBER_OF_WEEK ;;
  }

  dimension: trx_financial_year {
    label: "Financial Year"
    group_label: "Transaction Date Indentifiers"
    type: string
    sql: ${TABLE}.FINANCIAL_YEAR ;;
  }

  dimension: trx_financial_year_name {
    label: "Financial Year Name"
    group_label: "Transaction Date Indentifiers"
    type: string
    sql: ${TABLE}.FINANCIAL_YEAR_NAME ;;
  }

  dimension: trx_financial_week_number{
    label: "Financial Week Number"
    group_label: "Transaction Date Indentifiers"
    type: string
    sql: ${TABLE}.FINANCIAL_WEEK_NUMBER ;;
  }

  dimension: trx_financial_week_yyyyww {
    label: "Financial Year and Week "
    group_label: "Transaction Date Indentifiers"
    type: string
    sql: ${TABLE}.FINANCIAL_WEEK_YYYYWW ;;
  }

  dimension: accounting_treatmenr {
    label: "Accounting Treatment"
    type: string
    sql: ${TABLE}.ACCOUNTING_TREATMENT ;;
  }

  dimension: series_identifier {
    label: "Series Identifier"
    type: string
    sql: ${TABLE}.SERIES_IDENTIFIER ;;
  }

  dimension: series_identifier_fcast {
    label: "Series Identifier Forecast"
    type: string
    sql: CASE WHEN SUBSTR(${TABLE}.SERIES_IDENTIFIER, 1, 2) = 'FY' THEN ${TABLE}.SERIES_IDENTIFIER END  ;;
  }
  dimension: trans_sales_channel_level_2_key {
    label: "Policy Type Level 2 Key"
    hidden:  yes
    type: string
    sql: ${TABLE}.TRANS_SALES_CHANNEL_LEVEL2_KEY ;;
  }

  dimension: policy_type_level_2_key {
    label: "Policy Type Level 2 Key"
    hidden:  yes
    type: string
    sql: ${TABLE}.POLICY_TYPE_LEVEL_2_KEY ;;
  }

  dimension: offer_code {
    label: "Offer Code"
    type: string
    sql: ${TABLE}.OFFER_CODE ;;
  }

  dimension: is_will_join {
    label: "Will Join?"
    type: string
    sql: ${TABLE}.IS_WILL_JOIN ;;
  }

  dimension: split_by_dimension {
    type: "string"
    sql:
        CASE
        WHEN {% condition split_by_filter %} 'Policy Type' {% endcondition %}
          THEN ${policy_type.level_2_policy_type_full_desc}

        WHEN {% condition split_by_filter %} 'Sales Channel' {% endcondition %}
          THEN ${channel.level_2_channel_full_desc}

      END;;
  }

  dimension: product_package_level_2_key {
    type: number
    sql: ${TABLE}.PRODUCT_PACKAGE_LEVEL_2_KEY ;;
  }

  ### Supporting dimensions for measure calculation

  dimension: is_selected_forecast_series {
    hidden: yes
    type: yesno
    sql: ${series_identifier} = {% parameter forecast_series_filter_parameter %} ;;
  }

  dimension: is_selected_day {
    hidden: yes
    type: yesno
    sql: ${trx_date_raw} = TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd') ;;
  }

  dimension: is_selected_day_ly {
    hidden: yes
    type: yesno
    sql: ${trx_date_raw} + 365 = TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd') ;;
  }

  dimension: is_up_to_selected_day {
    hidden: yes
    type: yesno
    sql: ${trx_date_raw} <= TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd') ;;
  }

  dimension: is_up_to_selected_day_ly {
    hidden: yes
    type: yesno
    sql: ${trx_date_raw} + 365 <= TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd') ;;
  }

  dimension: trdwk_derived_by_date_filter {
    type: string
    hidden:  yes
    sql:
        CASE
            WHEN TO_DATE('29-Jan-15') <= TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd') AND TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd') < TO_DATE('28-Jan-16') THEN
              FLOOR((TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd') - TO_DATE('29-Jan-15'))/7)+1

             WHEN TO_DATE('28-Jan-16') <= TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd') AND TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd')  < TO_DATE('26-Jan-17') THEN
               FLOOR((TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd') - TO_DATE('28-Jan-16'))/7)+1

             WHEN TO_DATE('26-Jan-17') <= TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd') AND TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd')  < TO_DATE('25-Jan-18') THEN
               FLOOR((TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd') - TO_DATE('26-Jan-17'))/7)+1

        END ;;
  }

  dimension: trdwk_day_by_date_filter {
    type: string
    hidden:  yes
    sql:
        CASE
            WHEN TO_DATE('29-Jan-15') <= TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd') AND TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd') < TO_DATE('28-Jan-16') THEN
              MOD((TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd') - TO_DATE('29-Jan-15')),7)+1

             WHEN TO_DATE('28-Jan-16') <= TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd') AND TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd')  < TO_DATE('26-Jan-17') THEN
               MOD((TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd') - TO_DATE('28-Jan-16')),7)+1

             WHEN TO_DATE('26-Jan-17') <= TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd') AND TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd')  < TO_DATE('25-Jan-18') THEN
               MOD((TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd') - TO_DATE('26-Jan-17')),7)+1

        END ;;
  }

  dimension: is_selected_trading_week {
    # xxx probably  need to implement trading_year because it is different for the last week of January
    hidden: yes
    type: yesno
    sql: ${trx_trdwk_number}=${trdwk_derived_by_date_filter}  ;;
  }

  dimension: is_up_to_trading_week_day {
    # xxx nned to have trading_week_day in the database; this to solve the problem with last year same week but different day number. Need to trading_week_day <= trading_week_day_derived_by_date_filter_parameter
    hidden: yes
    type: yesno
    sql: ${trx_trdwk_day_number}<=${trdwk_day_by_date_filter}  ;;
  }

  dimension: is_selected_fy {
    hidden: yes
    type: yesno
    sql: ${trx_financial_year}=CAST(TO_CHAR(ADD_MONTHS(TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd'),11)  , 'YYYY') AS INT)  ;;
  }

  dimension: is_selected_last_fy {
    hidden: yes
    type: yesno
    sql: ${trx_financial_year}=CAST(TO_CHAR(ADD_MONTHS(TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd'),11)  , 'YYYY') AS INT)-1  ;;
  }

  dimension: is_selected_year_month {
    hidden: yes
    type: yesno
    sql: CONCAT(EXTRACT(YEAR FROM ${trx_date_raw}), EXTRACT(MONTH FROM ${trx_date_raw})) = CONCAT(EXTRACT(YEAR FROM TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd')), EXTRACT(MONTH FROM TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd'))) ;;
  }

  dimension: is_selected_year_month_ly {
    hidden: yes
    type: yesno
    sql: CONCAT(EXTRACT(YEAR FROM ${trx_date_raw})+1, EXTRACT(MONTH FROM ${trx_date_raw})) = CONCAT(EXTRACT(YEAR FROM TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd')), EXTRACT(MONTH FROM TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd'))) ;;
  }


  ###########################################################################################
  ### Detached filters
  ###########################################################################################

  filter: date_filter_parameter {
    label: "Date Filter"
    group_label: "Filters"
    suggest_dimension: trx_date_date
  }


  filter: forecast_series_filter_parameter {
    label: "Forecast Series Identifier Filter"
    group_label: "Filters"
    suggest_dimension: series_identifier
    suggestable: yes
    # full_suggestions:
    ### xxx need to make only budget available here
  }

  filter: split_by_filter {
    label: "Split By Filter"
    group_label: "Filters"
    suggestions: ["Policy Type", "Sales Channel"]
    default_value: "Policy Type"
  }


  ###########################################################################################
  ### Measures
  ###########################################################################################

  ###############################
  ### Volume
  ###############################

  measure: volume {
    label: "Volume"
    group_label: "Volume"
    type: sum
    sql: ${TABLE}.TRANSACTION_COUNT;;
    value_format_name: decimal_0
  }

  ### Actual Day

  measure: volume_actual_day {
    label: "Volume Day"
    group_label: "Volume"
    type: sum
    sql: ${TABLE}.TRANSACTION_COUNT;;
    filters: {
      field: is_selected_day
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  measure: volume_actual_day_ly {
    label: "Volume Day LY"
    group_label: "Volume"
    type: sum
    sql: ${TABLE}.TRANSACTION_COUNT;;
    filters: {
      field: is_selected_day_ly
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  measure: volume_fcast_day {
    label: "Volume Day Forecast"
    group_label: "Volume"
    type: sum
    sql: ${TABLE}.TRANSACTION_COUNT;;
    filters: {
      field: is_selected_day
      value: "yes"
    }
    filters: {
      field: is_selected_forecast_series
      value: "yes"
    }
    value_format_name: decimal_0
  }

  measure: volume_actual_day_vs_ly {
    label: "Volume Day VS LY %"
    group_label: "Volume"
    type: number
    sql: (NULLIF(${volume_actual_day},0) - NULLIF(${volume_actual_day_ly},0))/NULLIF(${volume_actual_day_ly},0)  ;;
    value_format_name: percent_2
  }

  measure: volume_actual_day_vs_fcast {
    label: "Volume Day VS Forecast   %"
    group_label: "Volume"
    type: number
    sql: (NULLIF(${volume_actual_day},0) - NULLIF(${volume_fcast_day},0))/NULLIF(${volume_fcast_day},0)  ;;
    value_format_name: percent_2
  }

  ### Trading Week

  measure: volume_actual_trdwk {
    label: "Volume Trading WK"
    group_label: "Volume"
    type: sum
    sql: ${TABLE}.TRANSACTION_COUNT;;
    filters: {
      field: is_selected_trading_week
      value: "yes"
    }
    filters: {
      field: is_up_to_trading_week_day
      value: "yes"
    }
    filters: {
      field: is_selected_fy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  measure: volume_actual_trdwk_ly {
    label: "Volume Trading WK LY"
    group_label: "Volume"
    type: sum
    sql: ${TABLE}.TRANSACTION_COUNT;;
    filters: {
      field: is_selected_trading_week
      value: "yes"
    }
    filters: {
      field: is_up_to_trading_week_day
      value: "yes"
    }
    filters: {
      field: is_selected_last_fy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  measure: volume_fcast_trdwk {
    label: "Volume Trading WK Forecast"
    group_label: "Volume"
    type: sum
    sql: ${TABLE}.TRANSACTION_COUNT;;
    filters: {
      field: is_selected_trading_week
      value: "yes"
    }
    filters: {
      field: is_up_to_trading_week_day
      value: "yes"
    }
    filters: {
      field: is_selected_fy
      value: "yes"
    }
    filters: {
      field: is_selected_forecast_series
      value: "yes"
    }
    value_format_name: decimal_0
  }

  measure: volume_actual_trdwk_vs_ly {
    label: "Volume Trading WK VS LY %"
    group_label: "Volume"
    type: number
    sql: (NULLIF(${volume_actual_trdwk},0) - NULLIF(${volume_actual_trdwk_ly},0))/NULLIF(${volume_actual_trdwk_ly},0)  ;;
    value_format_name: percent_2
  }

  measure: volume_actual_trdwk_vs_fcast {
    label: "Volume Trading WK VS Forecast %"
    group_label: "Volume"
    type: number
    sql: (NULLIF(${volume_actual_trdwk},0) - NULLIF(${volume_fcast_trdwk},0))/NULLIF(${volume_fcast_trdwk},0)  ;;
    value_format_name: percent_2
  }

  measure: volume_actual_trdwk_minus_ly {
    label: "Volume Trading WK - WK LY"
    group_label: "Volume"
    type: number
    sql: COALESCE(${volume_actual_trdwk},0) - COALESCE(${volume_actual_trdwk_ly},0);;
    value_format_name: decimal_0
  }
  ### MTD

  measure: volume_actual_mtd {
    label: "Volume MTD"
    group_label: "Volume"
    type: sum
    sql: ${TABLE}.TRANSACTION_COUNT;;
    filters: {
      field: is_selected_year_month
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_day
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  measure: volume_actual_mtd_ly {
    label: "Volume MTD LY"
    group_label: "Volume"
    type: sum
    group_label: "Volume"
    sql: ${TABLE}.TRANSACTION_COUNT;;
    filters: {
      field: is_selected_year_month_ly
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_day_ly
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  measure: volume_fcast_mtd {
    label: "Volume MTD Forecast"
    group_label: "Volume"
    type: sum
    group_label: "Volume"
    sql: ${TABLE}.TRANSACTION_COUNT;;
    filters: {
      field: is_selected_year_month
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_day
      value: "yes"
    }
    filters: {
      field: is_selected_forecast_series
      value: "Yes"
    }
    value_format_name: decimal_0
  }

  measure: volume_actual_mtd_vs_ly {
    label: "Volume MTD VS LY %"
    group_label: "Volume"
    type: number
    sql: (NULLIF(${volume_actual_mtd},0) - NULLIF(${volume_actual_mtd_ly},0))/NULLIF(${volume_actual_mtd_ly},0)  ;;
    value_format_name: percent_2
  }

  measure: volume_actual_mtd_vs_fcast {
    label: "Volume MTD VS Forecast %"
    group_label: "Volume"
    type: number
    sql: (NULLIF(${volume_actual_mtd},0) - NULLIF(${volume_fcast_mtd},0))/NULLIF(${volume_fcast_mtd},0)  ;;
    value_format_name: percent_2
  }

  ### Financial YTD

  measure: volume_actual_fytd {
    label: "Volume FYTD"
    group_label: "Volume"
    type: sum
    sql: ${TABLE}.TRANSACTION_COUNT;;
    filters: {
      field: is_selected_fy
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_day
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  measure: volume_actual_fytd_ly {
    label: "Volume FYTD LY"
    group_label: "Volume"
    type: sum
    sql: ${TABLE}.TRANSACTION_COUNT;;
    filters: {
      field: is_selected_last_fy
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_day_ly
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  measure: volume_fcast_fytd {
    label: "Volume FYTD Forecast"
    group_label: "Volume"
    type: sum
    sql: ${TABLE}.TRANSACTION_COUNT;;
    filters: {
      field: is_selected_fy
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_day
      value: "yes"
    }
    filters: {
      field: is_selected_forecast_series
      value: "Yes"
    }
    value_format_name: decimal_0
  }

  measure: volume_actual_fytd_vs_ly {
    label: "Volume FYTD VS LY %"
    group_label: "Volume"
    type: number
    sql: (NULLIF(${volume_actual_fytd},0) - NULLIF(${volume_actual_fytd_ly},0))/NULLIF(${volume_actual_fytd_ly},0)  ;;
    value_format_name: percent_2
  }

  measure: volume_actual_fytd_vs_fcast {
    label: "Volume FYTD VS Forecast %"
    group_label: "Volume"
    type: number
    sql: (NULLIF(${volume_actual_fytd},0) - NULLIF(${volume_fcast_fytd},0))/NULLIF(${volume_fcast_fytd},0)  ;;
    value_format_name: percent_2
  }

  measure: volume_actual_fytd_minus_ly {
    label: "Volume FYTD - FYTD LY"
    group_label: "Volume"
    type: number
    sql: COALESCE(${volume_actual_fytd},0) - COALESCE(${volume_actual_fytd_ly},0);;
    value_format_name: decimal_0
  }

  ###############################
  ### Annualised Product and Add-on GCP
  ###############################

  ### Trading Week

  measure: agcp_actual_trdwk {
    label: "AGCP Trading WK"
    group_label: "AGCP"
    type: sum
    sql: ${TABLE}.ANNUALISED_PRODUCT_ADDON_GCP;;
    filters: {
      field: is_selected_trading_week
      value: "yes"
    }
    filters: {
      field: is_up_to_trading_week_day
      value: "yes"
    }
    filters: {
      field: is_selected_fy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  measure: agcp_actual_trdwk_ly {
    label: "AGCP Trading WK LY"
    group_label: "AGCP"
    type: sum
    sql: ${TABLE}.ANNUALISED_PRODUCT_ADDON_GCP;;
    filters: {
      field: is_selected_trading_week
      value: "yes"
    }
    filters: {
      field: is_up_to_trading_week_day
      value: "yes"
    }
    filters: {
      field: is_selected_last_fy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  ###############################
  ### AATV
  ###############################

  ### Trading Week

  measure: aatv_actual_trdwk {
    label: "AATV Trading WK"
    group_label: "AATV"
    type: number
    sql: NULLIF(${agcp_actual_trdwk},0) / NULLIF(${volume_actual_trdwk},0);;
    value_format_name: decimal_2
  }

  measure: aatv_actual_trdwk_ly {
    label: "AATV Trading WK LY"
    group_label: "AATV"
    type: number
    sql: NULLIF(${agcp_actual_trdwk_ly},0) / NULLIF(${volume_actual_trdwk_ly},0);;
    value_format_name: decimal_2
  }

  measure: aatv_actual_trdwk_minus_ly {
    label: "AATV Trading WK - WK LY"
    group_label: "AATV"
    type: number
    sql: COALESCE(${aatv_actual_trdwk},0) - COALESCE(${aatv_actual_trdwk_ly},0);;
    value_format_name: decimal_2
  }

}
