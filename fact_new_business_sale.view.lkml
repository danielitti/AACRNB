view: new_business_sale {
  derived_table: {
    sql:  SELECT    ROW_NUMBER() OVER (ORDER BY DATE_KEY) as ROW_ID,
                    FACTS.*,
                    DIM_DATE.DATE_DTTM,
                    DIM_DATE.TRADING_WEEK_NUMBER, DIM_DATE.TRADING_DAY_NUMBER_OF_WEEK, DIM_DATE.TRADING_DAY_SHORT_NAME, DIM_DATE.TRADING_YEAR, DIM_DATE.TRADING_WEEK_NAME, DIM_DATE.TRADING_WEEK_START_DATE, DIM_DATE.TRADING_WEEK_END_DATE,
                    DIM_DATE.FINANCIAL_YEAR, DIM_DATE.FINANCIAL_DAY_OF_YEAR, DIM_DATE.FINANCIAL_YEAR_NAME
          FROM      (
                    -- FACT_NEW_BUSINESS_SALE
                    SELECT      ACCOUNTING_TREATMENT,
                                DATE_KEY,
                                TIME_KEY,
                                TRANSACTION_KEY,
                                TRANSACTION_ID,
                                POLICY_KEY,
                                null as FIRST_POLICY_KEY,
                                TRANSACTION_TYPE_LEVEL_3_KEY,
                                TRANS_SALES_CHANNEL_LEVEL2_KEY,
                                CUSTOMER_TYPE_KEY,
                                POLICY_TYPE_LEVEL_2_KEY,
                                CONTRACT_TYPE_LEVEL_2_KEY,
                                RECURRENCE_PATTERN_KEY,
                                PAYMENT_METHOD_LEVEL_1_KEY,
                                CONTRACT_AND_RECURRENCE_KEY,
                                PRODUCT_PACKAGE_LEVEL_2_KEY, --this one for waterfall
                                ADDON_PACKAGE_LEVEL_1_KEY,
                                DEVICE_TYPE_KEY,
                                SOURCE_CODE_KEY,
                                STAFF_KEY,
                                LEAD_CODE_KEY,
                                MEMBERSHIP_TYPE_LEVEL_2_KEY,
                                OFFER_CODE,
                                IS_WILL_JOIN,
                                SERIES_IDENTIFIER, /* Assume Actual */
                                DAR_CHANNEL,
                                ANNUALISATION_FACTOR,
                                PRODUCT_AND_ADDON_GCP,
                                ANNUALISED_PRODUCT_ADDON_GCP,
                                TRANSACTION_COUNT,
                                null as INBOUND_CALL_CNT,
                                null as INBOUND_CALL_HTS,
                                null AS DIGITAL_VISIT_CNT,
                                null AS INBOUND_DIAL_CNT,
                                null AS OUTBOUND_DIAL_CNT
                    FROM        {{_user_attributes["commercial_road_new_business_schema_name"]}}.FACT_NEW_BUSINESS_SALE

                    UNION ALL
                    -- FACT_INTERACTION_INBOUND_CALL
                    SELECT      'Transacted' as ACCOUNTING_TREATMENT,
                                CALL_DATE_KEY as DATE_KEY,
                                CALL_TIME_KEY as TIME_KEY,
                                null as TRANSACTION_KEY,
                                null as TRANSACTION_ID,
                                null as POLICY_KEY,
                                FIRST_POLICY_KEY as FIRST_POLICY_KEY,
                                null as TRANSACTION_TYPE_LEVEL_3_KEY,
                                null as TRANS_SALES_CHANNEL_LEVEL2_KEY,
                                null as CUSTOMER_TYPE_KEY,
                                3 as POLICY_TYPE_LEVEL_2_KEY, /* Assume Paid */
                                null as CONTRACT_TYPE_LEVEL_2_KEY,
                                null as RECURRENCE_PATTERN_KEY,
                                null as PAYMENT_METHOD_LEVEL_1_KEY,
                                null as CONTRACT_AND_RECURRENCE_KEY,
                                null as PRODUCT_PACKAGE_LEVEL_2_KEY,
                                null as ADDON_PACKAGE_LEVEL_1_KEY,
                                null as DEVICE_TYPE_KEY,
                                null as SOURCE_CODE_KEY,
                                STAFF_KEY,
                                null as LEAD_CODE_KEY,
                                null as MEMBERSHIP_TYPE_LEVEL_2_KEY,
                                null as OFFER_CODE,
                                null as IS_WILL_JOIN,
                                'Actual' as SERIES_IDENTIFIER, /* Assume Actual */
                                null as DAR_CHANNEL,
                                null as ANNUALISATION_FACTOR,
                                null as PRODUCT_AND_ADDON_GCP,
                                null as ANNUALISED_PRODUCT_ADDON_GCP,
                                null as TRANSACTION_COUNT,
                                INTERACTION_CNT AS INBOUND_CALL_CNT,
                                HANDLING_TIME_SECONDS AS INBOUND_CALL_HTS,
                                null AS DIGITAL_VISIT_CNT,
                                null AS INBOUND_DIAL_CNT,
                                null AS OUTBOUND_DIAL_CNT
                    FROM        {{_user_attributes["commercial_road_new_business_schema_name"]}}.FACT_INTERACTION_INBOUND_CALL
                    WHERE       CALL_TYPE_KEY = 1 /* Consumer Road New Business */

                    UNION ALL
                    -- FACT_INTERACTION_DIGITAL_VISIT
                    SELECT      'Transacted' as ACCOUNTING_TREATMENT,
                                VISIT_DATE_KEY as DATE_KEY,
                                VISIT_TIME_KEY as TIME_KEY,
                                null as TRANSACTION_KEY,
                                null as TRANSACTION_ID,
                                null as POLICY_KEY,
                                null as FIRST_POLICY_KEY,
                                null as TRANSACTION_TYPE_LEVEL_3_KEY,
                                5 as TRANS_SALES_CHANNEL_LEVEL2_KEY, --XXX NEED TO HAVE THIS IN THE FACT TABLE
                                null as CUSTOMER_TYPE_KEY,
                                3 as POLICY_TYPE_LEVEL_2_KEY, /* Assume Paid */
                                null as CONTRACT_TYPE_LEVEL_2_KEY,
                                null as RECURRENCE_PATTERN_KEY,
                                null as PAYMENT_METHOD_LEVEL_1_KEY,
                                null as CONTRACT_AND_RECURRENCE_KEY,
                                null as PRODUCT_PACKAGE_LEVEL_2_KEY,
                                null as ADDON_PACKAGE_LEVEL_1_KEY,
                                DEVICE_TYPE_KEY,
                                SOURCE_CODE_KEY,
                                null as STAFF_KEY,
                                null as LEAD_CODE_KEY,
                                null as MEMBERSHIP_TYPE_LEVEL_2_KEY,
                                null as OFFER_CODE,
                                null as IS_WILL_JOIN,
                                'Actual' as SERIES_IDENTIFIER, /* Assume Actual */
                                null as DAR_CHANNEL,
                                null as ANNUALISATION_FACTOR,
                                null as PRODUCT_AND_ADDON_GCP,
                                null as ANNUALISED_PRODUCT_ADDON_GCP,
                                null as TRANSACTION_COUNT,
                                null AS INBOUND_CALL_CNT,
                                null AS INBOUND_CALL_HTS,
                                INTERACTION_CNT AS DIGITAL_VISIT_CNT,
                                null AS INBOUND_DIAL_CNT,
                                null AS OUTBOUND_DIAL_CNT
                    FROM        {{_user_attributes["commercial_road_new_business_schema_name"]}}.FACT_INTERACTION_DIGITAL_VISIT
                    WHERE       DIGITAL_VISIT_TYPE_KEY = 1 /* Consumer Road New Business */

                    UNION ALL
                    -- FACT_INTERACTION_INBOUND_DIAL
                    SELECT      'Transacted' as ACCOUNTING_TREATMENT,
                                DIAL_DATE_KEY as DATE_KEY,
                                DIAL_TIME_KEY as TIME_KEY,
                                null as TRANSACTION_KEY,
                                null as TRANSACTION_ID,
                                null as POLICY_KEY,
                                null as FIRST_POLICY_KEY,
                                null as TRANSACTION_TYPE_LEVEL_3_KEY,
                                null as TRANS_SALES_CHANNEL_LEVEL2_KEY,
                                null as CUSTOMER_TYPE_KEY,
                                3 as POLICY_TYPE_LEVEL_2_KEY, /* Assume Paid */
                                null as CONTRACT_TYPE_LEVEL_2_KEY,
                                null as RECURRENCE_PATTERN_KEY,
                                null as PAYMENT_METHOD_LEVEL_1_KEY,
                                null as CONTRACT_AND_RECURRENCE_KEY,
                                null as PRODUCT_PACKAGE_LEVEL_2_KEY,
                                null as ADDON_PACKAGE_LEVEL_1_KEY,
                                null as DEVICE_TYPE_KEY,
                                null as SOURCE_CODE_KEY, --XXX MARKETING_CHANNEL_LEVEL_2_KEY ONLY AVAILABLE
                                null as STAFF_KEY,
                                null as LEAD_CODE_KEY,
                                null as MEMBERSHIP_TYPE_LEVEL_2_KEY,
                                null as OFFER_CODE,
                                null as IS_WILL_JOIN,
                                'Actual' as SERIES_IDENTIFIER, /* Assume Actual */
                                null as DAR_CHANNEL,
                                null as ANNUALISATION_FACTOR,
                                null as PRODUCT_AND_ADDON_GCP,
                                null as ANNUALISED_PRODUCT_ADDON_GCP,
                                null as TRANSACTION_COUNT,
                                null as INBOUND_CALL_CNT,
                                null as INBOUND_CALL_HTS,
                                null AS DIGITAL_VISIT_CNT,
                                INTERACTION_CNT AS INBOUND_DIAL_CNT,
                                null AS OUTBOUND_DIAL_CNT
                    FROM        {{_user_attributes["commercial_road_new_business_schema_name"]}}.FACT_INTERACTION_INBOUND_DIAL
                    WHERE       CALL_TYPE_KEY = 1 /* Consumer Road New Business */

                    UNION ALL
                    -- FACT_INTERACTION_OUTBOUND_DIAL
                    SELECT      'Transacted' as ACCOUNTING_TREATMENT,
                                DIAL_DATE_KEY as DATE_KEY,
                                DIAL_TIME_KEY as TIME_KEY,
                                null as TRANSACTION_KEY,
                                null as TRANSACTION_ID,
                                POLICY_KEY,
                                null as FIRST_POLICY_KEY,
                                null as TRANSACTION_TYPE_LEVEL_3_KEY,
                                null as TRANS_SALES_CHANNEL_LEVEL2_KEY,
                                null as CUSTOMER_TYPE_KEY,
                                3 as POLICY_TYPE_LEVEL_2_KEY, /* Assume Paid */
                                null as CONTRACT_TYPE_LEVEL_2_KEY,
                                null as RECURRENCE_PATTERN_KEY,
                                null as PAYMENT_METHOD_LEVEL_1_KEY,
                                null as CONTRACT_AND_RECURRENCE_KEY,
                                null as PRODUCT_PACKAGE_LEVEL_2_KEY,
                                null as ADDON_PACKAGE_LEVEL_1_KEY,
                                null as DEVICE_TYPE_KEY,
                                null as SOURCE_CODE_KEY,
                                STAFF_KEY,
                                LEAD_CODE_KEY,
                                null as MEMBERSHIP_TYPE_LEVEL_2_KEY,
                                null as OFFER_CODE,
                                null as IS_WILL_JOIN,
                                'Actual' as SERIES_IDENTIFIER, /* Assume Actual */
                                null as DAR_CHANNEL,
                                null as ANNUALISATION_FACTOR,
                                null as PRODUCT_AND_ADDON_GCP,
                                null as ANNUALISED_PRODUCT_ADDON_GCP,
                                null as TRANSACTION_COUNT,
                                null as INBOUND_CALL_CNT,
                                null as INBOUND_CALL_HTS,
                                null AS DIGITAL_VISIT_CNT,
                                null AS INBOUND_DIAL_CNT,
                                INTERACTION_CNT AS OUTBOUND_DIAL_CNT
                    FROM        {{_user_attributes["commercial_road_new_business_schema_name"]}}.FACT_INTERACTION_OUTBOUND_DIAL
                    WHERE       CALL_TYPE_KEY = 1 /* Consumer Road New Business */
                    ) FACTS
          INNER JOIN
                    (SELECT   DATE_KEY AS DIM_DATE_KEY,
                              DATE_DTTM,
                              TRADING_WEEK_NUMBER,
                              TRADING_DAY_NUMBER_OF_WEEK,
                              CALENDAR_DAY_SHORT_NAME AS TRADING_DAY_SHORT_NAME,
                              TRADING_YEAR,
                              FINANCIAL_YEAR,
                              FINANCIAL_DAY_OF_YEAR,
                              TRADING_WEEK_NAME,
                              TRADING_WEEK_START_DATE,
                              TRADING_WEEK_END_DATE,
                              FINANCIAL_YEAR_NAME
                    FROM      {{_user_attributes["commercial_road_new_business_schema_name"]}}.DIM_DATE) DIM_DATE
          ON        FACTS.DATE_KEY = DIM_DATE.DIM_DATE_KEY
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

  dimension: dar_channel {
    label: "DAR Channel"
    type: string
    sql: ${TABLE}.DAR_CHANNEL ;;
  }

  dimension: series_identifier_fcast {
    label: "Series Identifier Forecast"
    hidden:  yes
    type: string
    sql: CASE WHEN SUBSTR(${TABLE}.SERIES_IDENTIFIER, 1, 2) = 'FY' THEN ${TABLE}.SERIES_IDENTIFIER END  ;;
  }

  dimension: trans_sales_channel_level_2_key {
    label: "Policy Type Level 2 Key"
    hidden:  yes
    type: string
    sql: ${TABLE}.TRANS_SALES_CHANNEL_LEVEL2_KEY ;;
  }

  dimension: device_type_key {
    label: "Device Type Key"
    hidden:  yes
    type: string
    sql: ${TABLE}.DEVICE_TYPE_KEY;;
  }

  dimension: source_code_key {
    label: "Source Code Key"
    hidden:  yes
    type: string
    sql: ${TABLE}.SOURCE_CODE_KEY;;
  }

  dimension: staff_key {
    label: "Staff Key"
    hidden:  yes
    type: string
    sql: ${TABLE}.STAFF_KEY;;
  }

  dimension: policy_key {
    label: "Policy Key"
    hidden: yes
    type: string
    sql: ${TABLE}.POLICY_KEY ;;
  }

  dimension: lead_code_key {
    label: "Lead Code Key"
    hidden:  yes
    type: string
    sql: ${TABLE}.LEAD_CODE_KEY;;
  }

  dimension: policy_type_level_2_key {
    label: "Policy Type Level 2 Key"
    hidden:  yes
    type: string
    sql: ${TABLE}.POLICY_TYPE_LEVEL_2_KEY ;;
  }

  dimension: contract_and_reccurence_key {
    label: "Contract and Reccurence Key"
    hidden:  yes
    type: string
    sql: ${TABLE}.CONTRACT_AND_RECURRENCE_KEY ;;
  }

  dimension: offer_code {
    label: "Offer Code"
    type: string
    sql: ${TABLE}.OFFER_CODE ;;
  }

  dimension: is_will_join {
    label: "Is Will Join?"
    type: string
    sql: ${TABLE}.IS_WILL_JOIN ;;
  }

  dimension: split_by_dimension {
    type: "string"
    sql:
        CASE
        WHEN {% condition split_by_filter %} 'Product Package Level 1' {% endcondition %}
          THEN ${product_package.product_pkg_lvl1_full_desc}

        WHEN {% condition split_by_filter %} 'Product Package Level 2' {% endcondition %}
          THEN ${product_package.product_pkg_lvl2_full_desc}

        WHEN {% condition split_by_filter %} 'Sales Channel Level 1' {% endcondition %}
          THEN ${sales_channel.sales_channel_lvl1_full_desc}

        WHEN {% condition split_by_filter %} 'Sales Channel Level 2' {% endcondition %}
          THEN ${sales_channel.sales_channel_lvl2_full_desc}

        WHEN {% condition split_by_filter %} 'Contract and Reccurence' {% endcondition %}
          THEN ${contract_and_reccurence.contract_and_reccurence_desc}

        WHEN {% condition split_by_filter %} 'Marketing Channel Level 1' {% endcondition %}
          THEN ${marketing_channel.marketing_channel_lvl1_full_desc}

        WHEN {% condition split_by_filter %} 'Marketing Channel Level 2' {% endcondition %}
          THEN ${marketing_channel.marketing_channel_lvl2_full_desc}

      END;;
  }

  dimension_group: trx_date {
    label: "Transaction Calendar"
    type: time
    timeframes: [date, week, month, raw]
    convert_tz: no
    sql: ${TABLE}.DATE_DTTM ;;
  }

  dimension: trx_trdwk_number {
    label: "Trading Week Number"
    group_label: "Transaction Trading Date Indentifiers"
    type: string
    sql: ${TABLE}.TRADING_WEEK_NUMBER ;;
  }

  dimension: trx_trdwk_name {
    label: "Trading Week Name"
    group_label: "Transaction Trading Date Indentifiers"
    type: string
    sql: ${TABLE}.TRADING_WEEK_NAME ;;
  }

  dimension: trx_trdwk_start_date {
    label: "Trading Week Start Date"
    group_label: "Transaction Trading Date Indentifiers"
    type: date
    sql: ${TABLE}.TRADING_WEEK_START_DATE ;;
  }

  dimension: trx_trdwk_end_date {
    label: "Trading Week End Date"
    group_label: "Transaction Trading Date Indentifiers"
    type: date
    sql: ${TABLE}.TRADING_WEEK_END_DATE ;;
  }

  dimension: trx_trdwk_day_of_week {
    label: "Trading Week Day Number"
    group_label: "Transaction Trading Date Indentifiers"
    type: string
    sql: ${TABLE}.TRADING_DAY_NUMBER_OF_WEEK ;;
  }

  dimension: trx_trdwk_day_short_name {
    label: "Trading Week Day Short Name"
    group_label: "Transaction Trading Date Indentifiers"
    type: string
    sql: ${TABLE}.TRADING_DAY_SHORT_NAME ;;
  }

  dimension: trx_trdwk_year {
    label: "Trading Year"
    group_label: "Transaction Trading Date Indentifiers"
    type: string
    sql: ${TABLE}.TRADING_YEAR ;;
  }

  dimension: trx_financial_year {
    label: "Financial Year"
    group_label: "Transaction Financial Date Indentifiers"
    type: string
    sql: ${TABLE}.FINANCIAL_YEAR ;;
  }

  dimension: trx_financial_year_name {
    label: "Financial Year Name"
    group_label: "Transaction Financial Date Indentifiers"
    type: string
    sql: ${TABLE}.FINANCIAL_YEAR_NAME ;;
  }

  dimension: trx_financial_day_of_year {
    label: "Financial Day of Year"
    group_label: "Transaction Financial Date Indentifiers"
    type: string
    sql: ${TABLE}.FINANCIAL_DAY_OF_YEAR ;;
  }

  dimension: trx_financial_week_number{
    label: "Financial Week Number"
    group_label: "Transaction Financial Date Indentifiers"
    type: number
    sql: ${TABLE}.TRADING_WEEK_NUMBER ;;
  }

  dimension: trx_financial_day_n_of_year {
    label: "Financial Year and Week "
    group_label: "Transaction Financial Date Indentifiers"
    type: string
    sql: ${TABLE}.FINANCIAL_DAY_NUMBER_OF_YEAR ;;
  }

  dimension: product_package_level_2_key {
    hidden:  yes
    type: number
    sql: ${TABLE}.PRODUCT_PACKAGE_LEVEL_2_KEY ;;
  }

  ### Supporting dimension from dim_date_filter

  dimension: trdwk_number_by_date_filter {
    hidden:  yes
    type: string
    sql: CASE WHEN ${date_filter.date_raw} = TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd') THEN ${date_filter.trdwk_number} END;;
  }

  dimension: trdwk_number_ly_by_date_filter {
    hidden:  yes
    type: string
    sql: CASE WHEN ${trdwk_number_by_date_filter} = 53 THEN 1 ELSE ${trdwk_number_by_date_filter} END;;
  }

  dimension: trdwk_day_by_date_filter {
    hidden:  yes
    type: string
    sql: CASE WHEN ${date_filter.date_raw} = TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd') THEN ${date_filter.trdwk_day_number_of_week} END;;
  }

  dimension: trdwk_year_by_date_filter {
    hidden:  yes
    type: string
    sql: CASE WHEN ${date_filter.date_raw} = TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd') THEN ${date_filter.trdwk_year} END;;
  }

  dimension: trdwk_year_ly_by_date_filter {
    hidden:  yes
    type: string
    sql: CASE WHEN ${trdwk_number_by_date_filter} = 53 THEN ${trdwk_year_by_date_filter} ELSE ${date_filter.trdwk_year_ly}  END;;
  }

  dimension: financial_year_by_date_filter {
    hidden:  yes
    type: string
    sql: CASE WHEN ${date_filter.date_raw} = TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd') THEN ${date_filter.financial_year} END;;
  }

  dimension: financial_year_ly_by_date_filter {
    hidden:  yes
    type: string
    sql: CASE WHEN ${date_filter.date_raw} = TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd') THEN ${date_filter.financial_year_ly} END;;
  }

  dimension: financial_doy_by_date_filter {
    hidden:  yes
    type: string
    sql: CASE WHEN ${date_filter.date_raw} = TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd') THEN ${date_filter.financial_day_of_year} END;;
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

  dimension: is_selected_trading_week {
    hidden: yes
    type: yesno
    sql: ${trx_trdwk_number}=${trdwk_number_by_date_filter}  ;;
  }

  dimension: is_selected_trading_week_ly {
    hidden: yes
    type: yesno
    sql: ${trx_trdwk_number}=${trdwk_number_ly_by_date_filter}  ;;
  }

  dimension: is_selected_trading_week_day {
    hidden: yes
    type: yesno
    sql: ${trx_trdwk_day_of_week}=${trdwk_day_by_date_filter}  ;;
  }

  dimension: is_up_to_trading_week_day {
    hidden: yes
    type: yesno
    sql: ${trx_trdwk_day_of_week}<=${trdwk_day_by_date_filter}  ;;
  }

  dimension: is_selected_trading_week_year {
    hidden: yes
    type: yesno
    sql: ${trx_trdwk_year}=${trdwk_year_by_date_filter}  ;;
  }

  dimension: is_selected_trading_week_year_ly {
    hidden: yes
    type: yesno
    sql: ${trx_trdwk_year}=${trdwk_year_ly_by_date_filter}  ;;
  }

  dimension: is_up_to_selected_day {
    hidden: yes
    type: yesno
    sql: ${trx_date_raw} <= TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd') ;;
  }

  dimension: is_up_to_selected_day_ly {
    hidden: yes
    type: yesno
    sql: ${trx_date_raw} <= ADD_MONTHS(TO_DATE({% parameter date_filter_parameter %}, 'yyyy/mm/dd'), -12) ;;
  }

  dimension: is_selected_fy {
    hidden: yes
    type: yesno
    sql: ${trx_financial_year}=${financial_year_by_date_filter} ;;
  }

  dimension: is_selected_last_fy {
    hidden: yes
    type: yesno
    sql: ${trx_financial_year}=${financial_year_ly_by_date_filter} ;;
  }

  dimension: is_up_to_selected_doy_fy {
    hidden: yes
    type: yesno
    sql: ${trx_financial_day_of_year}<=${financial_doy_by_date_filter} ;;
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
    suggestions: ["Product Package Level 1", "Product Package Level 2", "Sales Channel Level 1", "Sales Channel Level 2", "Contract and Reccurence", "Marketing Channel Level 1", "Marketing Channel Level 2"]
    default_value: "Product Package Level 1"
  }

  ###########################################################################################
  ### Measures
  ###########################################################################################

  ##############################################################
  ### Volume
  ##############################################################

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
      field: is_selected_trading_week_ly
      value: "yes"
    }
    filters: {
      field: is_selected_trading_week_day
      value: "yes"
    }
    filters: {
      field: is_selected_trading_week_year_ly
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
    sql: (COALESCE(${volume_actual_day},0) - COALESCE(${volume_actual_day_ly},0))/NULLIF(${volume_actual_day_ly},0)  ;;
    value_format_name: percent_2
  }

  measure: volume_actual_day_vs_fcast {
    label: "Volume Day VS Forecast   %"
    group_label: "Volume"
    type: number
    sql: (COALESCE(${volume_actual_day},0) - COALESCE(${volume_fcast_day},0))/NULLIF(${volume_fcast_day},0)  ;;
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
      field: is_selected_trading_week_year
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
      field: is_selected_trading_week_ly
      value: "yes"
    }
    filters: {
      field: is_up_to_trading_week_day
      value: "yes"
    }
    filters: {
      field: is_selected_trading_week_year_ly
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
      field: is_selected_trading_week_year
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
    sql: (COALESCE(${volume_actual_trdwk},0) - COALESCE(${volume_actual_trdwk_ly},0))/NULLIF(${volume_actual_trdwk_ly},0)  ;;
    value_format_name: percent_2
  }

  measure: volume_actual_trdwk_vs_fcast {
    label: "Volume Trading WK VS Forecast %"
    group_label: "Volume"
    type: number
    sql: (COALESCE(${volume_actual_trdwk},0) - COALESCE(${volume_fcast_trdwk},0))/NULLIF(${volume_fcast_trdwk},0)  ;;
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
    sql: (COALESCE(${volume_actual_mtd},0) - COALESCE(${volume_actual_mtd_ly},0))/NULLIF(${volume_actual_mtd_ly},0)  ;;
    value_format_name: percent_2
  }

  measure: volume_actual_mtd_vs_fcast {
    label: "Volume MTD VS Forecast %"
    group_label: "Volume"
    type: number
    sql: (COALESCE(${volume_actual_mtd},0) - COALESCE(${volume_fcast_mtd},0))/NULLIF(${volume_fcast_mtd},0)  ;;
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
      field: is_up_to_selected_doy_fy
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
      field: is_up_to_selected_doy_fy
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
      field: is_up_to_selected_doy_fy
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
    sql: (COALESCE(${volume_actual_fytd},0) - COALESCE(${volume_actual_fytd_ly},0))/NULLIF(${volume_actual_fytd_ly},0)  ;;
    value_format_name: percent_2
  }

  measure: volume_actual_fytd_vs_fcast {
    label: "Volume FYTD VS Forecast %"
    group_label: "Volume"
    type: number
    sql: (COALESCE(${volume_actual_fytd},0) - COALESCE(${volume_fcast_fytd},0))/NULLIF(${volume_fcast_fytd},0)  ;;
    value_format_name: percent_2
  }

  measure: volume_actual_fytd_minus_ly {
    label: "Volume FYTD - FYTD LY"
    group_label: "Volume"
    type: number
    sql: COALESCE(${volume_actual_fytd},0) - COALESCE(${volume_actual_fytd_ly},0);;
    value_format_name: decimal_0
  }

  ### Financial Year

  measure: volume_actual_fy_ly {
    label: "Volume FY LY"
    group_label: "Volume"
    type: sum
    sql: ${TABLE}.TRANSACTION_COUNT;;
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

  measure: volume_fcast_fy {
    label: "Volume FY Forecast"
    group_label: "Volume"
    type: sum
    sql: ${TABLE}.TRANSACTION_COUNT;;
    filters: {
      field: is_selected_fy
      value: "yes"
    }
    filters: {
      field: is_selected_forecast_series
      value: "Yes"
    }
    value_format_name: decimal_0
  }

  ##############################################################
  ### Annualised Product and Add-on GCP
  ##############################################################

  measure: agcp {
    label: "AGCP"
    group_label: "Annualised Product and Add-on GCP"
    type: sum
    sql: ${TABLE}.ANNUALISED_PRODUCT_ADDON_GCP;;
    value_format_name: gbp_0
  }

  ### Actual Day

  measure: agcp_actual_day {
    label: "AGCP Day"
    group_label: "Annualised Product and Add-on GCP"
    type: sum
    sql: ${TABLE}.ANNUALISED_PRODUCT_ADDON_GCP;;
    filters: {
      field: is_selected_day
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: gbp_0
  }

  measure: agcp_actual_day_ly {
    label: "AGCP Day LY"
    group_label: "Annualised Product and Add-on GCP"
    type: sum
    sql: ${TABLE}.ANNUALISED_PRODUCT_ADDON_GCP;;
    filters: {
      field: is_selected_trading_week_ly
      value: "yes"
    }
    filters: {
      field: is_selected_trading_week_day
      value: "yes"
    }
    filters: {
      field: is_selected_trading_week_year_ly
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: gbp_0
  }

  measure: agcp_fcast_day {
    label: "AGCP Day Forecast"
    group_label: "Annualised Product and Add-on GCP"
    type: sum
    sql: ${TABLE}.ANNUALISED_PRODUCT_ADDON_GCP;;
    filters: {
      field: is_selected_day
      value: "yes"
    }
    filters: {
      field: is_selected_forecast_series
      value: "yes"
    }
    value_format_name: gbp_0
  }

  measure: agcp_actual_day_vs_ly {
    label: "AGCP Day VS LY %"
    group_label: "Annualised Product and Add-on GCP"
    type: number
    sql: (COALESCE(${agcp_actual_day},0) - COALESCE(${agcp_actual_day_ly},0))/NULLIF(${agcp_actual_day_ly},0)  ;;
    value_format_name: percent_2
  }

  measure: agcp_actual_day_vs_fcast {
    label: "AGCP Day VS Forecast   %"
    group_label: "Annualised Product and Add-on GCP"
    type: number
    sql: (COALESCE(${agcp_actual_day},0) - COALESCE(${agcp_fcast_day},0))/NULLIF(${agcp_fcast_day},0)  ;;
    value_format_name: percent_2
  }

  ### Trading Week

  measure: agcp_actual_trdwk {
    label: "AGCP Trading WK"
    group_label: "Annualised Product and Add-on GCP"
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
      field: is_selected_trading_week_year
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: gbp_0
  }

  measure: agcp_actual_trdwk_ly {
    label: "AGCP Trading WK LY"
    group_label: "Annualised Product and Add-on GCP"
    type: sum
    sql: ${TABLE}.ANNUALISED_PRODUCT_ADDON_GCP;;
    filters: {
      field: is_selected_trading_week_ly
      value: "yes"
    }
    filters: {
      field: is_up_to_trading_week_day
      value: "yes"
    }
    filters: {
      field: is_selected_trading_week_year_ly
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: gbp_0
  }

  measure: agcp_fcast_trdwk {
    label: "AGCP Trading WK Forecast"
    group_label: "Annualised Product and Add-on GCP"
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
      field: is_selected_trading_week_year
      value: "yes"
    }
    filters: {
      field: is_selected_forecast_series
      value: "yes"
    }
    value_format_name: gbp_0
  }

  measure: agcp_actual_trdwk_vs_ly {
    label: "AGCP Trading WK VS LY %"
    group_label: "Annualised Product and Add-on GCP"
    type: number
    sql: (COALESCE(${agcp_actual_trdwk},0) - COALESCE(${agcp_actual_trdwk_ly},0))/NULLIF(${agcp_actual_trdwk_ly},0)  ;;
    value_format_name: percent_2
  }

  measure: agcp_actual_trdwk_vs_fcast {
    label: "AGCP Trading WK VS Forecast %"
    group_label: "Annualised Product and Add-on GCP"
    type: number
    sql: (COALESCE(${agcp_actual_trdwk},0) - COALESCE(${agcp_fcast_trdwk},0))/NULLIF(${agcp_fcast_trdwk},0)  ;;
    value_format_name: percent_2
  }

  measure: agcp_actual_trdwk_minus_ly {
    label: "AGCP Trading WK - WK LY"
    group_label: "Annualised Product and Add-on GCP"
    type: number
    sql: COALESCE(${agcp_actual_trdwk},0) - COALESCE(${agcp_actual_trdwk_ly},0);;
    value_format_name: gbp_0
  }
  ### MTD

  measure: agcp_actual_mtd {
    label: "AGCP MTD"
    group_label: "Annualised Product and Add-on GCP"
    type: sum
    sql: ${TABLE}.ANNUALISED_PRODUCT_ADDON_GCP;;
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
    value_format_name: gbp_0
  }

  measure: agcp_actual_mtd_ly {
    label: "AGCP MTD LY"
    group_label: "Annualised Product and Add-on GCP"
    type: sum
    sql: ${TABLE}.ANNUALISED_PRODUCT_ADDON_GCP;;
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
    value_format_name: gbp_0
  }

  measure: agcp_fcast_mtd {
    label: "AGCP MTD Forecast"
    group_label: "Annualised Product and Add-on GCP"
    type: sum
    sql: ${TABLE}.ANNUALISED_PRODUCT_ADDON_GCP;;
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
    value_format_name: gbp_0
  }

  measure: agcp_actual_mtd_vs_ly {
    label: "AGCP MTD VS LY %"
    group_label: "Annualised Product and Add-on GCP"
    type: number
    sql: (COALESCE(${agcp_actual_mtd},0) - COALESCE(${agcp_actual_mtd_ly},0))/NULLIF(${agcp_actual_mtd_ly},0)  ;;
    value_format_name: percent_2
  }

  measure: agcp_actual_mtd_vs_fcast {
    label: "AGCP MTD VS Forecast %"
    group_label: "Annualised Product and Add-on GCP"
    type: number
    sql: (COALESCE(${agcp_actual_mtd},0) - COALESCE(${agcp_fcast_mtd},0))/NULLIF(${agcp_fcast_mtd},0)  ;;
    value_format_name: percent_2
  }

  ### Financial YTD

  measure: agcp_actual_fytd {
    label: "AGCP FYTD"
    group_label: "Annualised Product and Add-on GCP"
    type: sum
    sql: ${TABLE}.ANNUALISED_PRODUCT_ADDON_GCP;;
    filters: {
      field: is_selected_fy
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_doy_fy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: gbp_0
  }

  measure: agcp_actual_fytd_ly {
    label: "AGCP FYTD LY"
    group_label: "Annualised Product and Add-on GCP"
    type: sum
    sql: ${TABLE}.ANNUALISED_PRODUCT_ADDON_GCP;;
    filters: {
      field: is_selected_last_fy
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_doy_fy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: gbp_0
  }

  measure: agcp_fcast_fytd {
    label: "AGCP FYTD Forecast"
    group_label: "Annualised Product and Add-on GCP"
    type: sum
    sql: ${TABLE}.ANNUALISED_PRODUCT_ADDON_GCP;;
    filters: {
      field: is_selected_fy
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_doy_fy
      value: "yes"
    }
    filters: {
      field: is_selected_forecast_series
      value: "Yes"
    }
    value_format_name: gbp_0
  }

  measure: agcp_actual_fytd_vs_ly {
    label: "AGCP FYTD VS LY %"
    group_label: "Annualised Product and Add-on GCP"
    type: number
    sql: (COALESCE(${agcp_actual_fytd},0) - COALESCE(${agcp_actual_fytd_ly},0))/NULLIF(${agcp_actual_fytd_ly},0)  ;;
    value_format_name: percent_2
  }

  measure: agcp_actual_fytd_vs_fcast {
    label: "AGCP FYTD VS Forecast %"
    group_label: "Annualised Product and Add-on GCP"
    type: number
    sql: (COALESCE(${agcp_actual_fytd},0) - COALESCE(${agcp_fcast_fytd},0))/NULLIF(${agcp_fcast_fytd},0)  ;;
    value_format_name: percent_2
  }

  measure: agcp_actual_fytd_minus_ly {
    label: "AGCP FYTD - FYTD LY"
    group_label: "Annualised Product and Add-on GCP"
    type: number
    sql: COALESCE(${agcp_actual_fytd},0) - COALESCE(${agcp_actual_fytd_ly},0);;
    value_format_name: gbp_0
  }

  ### Financial Year

  measure: agcp_actual_fy_ly {
    label: "AGCP FY LY"
    group_label: "Annualised Product and Add-on GCP"
    type: sum
    sql: ${TABLE}.ANNUALISED_PRODUCT_ADDON_GCP;;
    filters: {
      field: is_selected_last_fy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: gbp_0
  }

  measure: agcp_fcast_fy {
    label: "AGCP FY Forecast"
    group_label: "Annualised Product and Add-on GCP"
    type: sum
    sql: ${TABLE}.ANNUALISED_PRODUCT_ADDON_GCP;;
    filters: {
      field: is_selected_fy
      value: "yes"
    }
    filters: {
      field: is_selected_forecast_series
      value: "Yes"
    }
    value_format_name: gbp_0
  }

  ##############################################################
  ### Annualised Product and Add-on GCP
  ##############################################################

  measure: aatv {
    label: "AATV"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE((COALESCE(${agcp},0) / NULLIF(${volume},0)),0);;
    value_format_name: gbp
  }

  ### Actual Day

  measure: aatv_actual_day {
    label: "AATV Day"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE(COALESCE(${agcp_actual_day},0) / NULLIF(${volume_actual_day},0),0);;
    value_format_name: gbp
  }

  measure: aatv_actual_day_ly {
    label: "AATV Day LY"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE(COALESCE(${agcp_actual_day_ly},0) / NULLIF(${volume_actual_day_ly},0),0);;
    value_format_name: gbp
  }

  measure: aatv_fcast_day {
    label: "AATV Day Forecast"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE(COALESCE(${agcp_fcast_day},0) / NULLIF(${volume_fcast_day},0),0);;
    value_format_name: gbp
  }

  measure: aatv_actual_day_vs_ly {
    label: "AATV Day VS LY %"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE((COALESCE(${aatv_actual_day},0) - COALESCE(${aatv_actual_day_ly},0))/NULLIF(${aatv_actual_day_ly},0),0)  ;;
    value_format_name: percent_2
  }

  measure: aatv_actual_day_vs_fcast {
    label: "AATV Day VS Forecast   %"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE((COALESCE(${aatv_actual_day},0) - COALESCE(${aatv_fcast_day},0))/NULLIF(${aatv_fcast_day},0),0)  ;;
    value_format_name: percent_2
  }

  ### Trading Week

  measure: aatv_actual_trdwk {
    label: "AATV Trading WK"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE(COALESCE(${agcp_actual_trdwk},0) / NULLIF(${volume_actual_trdwk},0),0);;
    value_format_name: gbp
  }

  measure: aatv_actual_trdwk_ly {
    label: "AATV Trading WK LY"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE(COALESCE(${agcp_actual_trdwk_ly},0) / NULLIF(${volume_actual_trdwk_ly},0),0);;
    value_format_name: gbp
  }

  measure: aatv_fcast_trdwk {
    label: "AATV Trading WK Forecast"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE(COALESCE(${agcp_fcast_trdwk},0) / NULLIF(${volume_fcast_trdwk},0),0);;
    value_format_name: gbp
  }

  measure: aatv_actual_trdwk_vs_ly {
    label: "AATV Trading WK VS LY %"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE((COALESCE(${aatv_actual_trdwk},0) - COALESCE(${aatv_actual_trdwk_ly},0))/NULLIF(${aatv_actual_trdwk_ly},0),0)  ;;
    value_format_name: percent_2
  }

  measure: aatv_actual_trdwk_vs_fcast {
    label: "AATV Trading WK VS Forecast %"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE((COALESCE(${aatv_actual_trdwk},0) - COALESCE(${aatv_fcast_trdwk},0))/NULLIF(${aatv_fcast_trdwk},0),0)  ;;
    value_format_name: percent_2
  }

  measure: aatv_actual_trdwk_minus_ly {
    label: "AATV Trading WK - WK LY"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE(COALESCE(${aatv_actual_trdwk},0) - COALESCE(${aatv_actual_trdwk_ly},0),0);;
    value_format_name: gbp
  }

  ### MTD

  measure: aatv_actual_mtd {
    label: "AATV MTD"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE(COALESCE(${agcp_actual_mtd},0) / NULLIF(${volume_actual_mtd},0),0);;
    value_format_name: gbp
  }

  measure: aatv_actual_mtd_ly {
    label: "AATV MTD LY"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE(COALESCE(${agcp_actual_mtd_ly},0) / NULLIF(${volume_actual_mtd_ly},0),0);;
    value_format_name: gbp
  }

  measure: aatv_fcast_mtd {
    label: "AATV MTD Forecast"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE(COALESCE(${agcp_fcast_mtd},0) / NULLIF(${volume_fcast_mtd},0),0);;
    value_format_name: gbp
  }

  measure: aatv_actual_mtd_vs_ly {
    label: "AATV MTD VS LY %"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE((COALESCE(${aatv_actual_mtd},0) - COALESCE(${aatv_actual_mtd_ly},0))/NULLIF(${aatv_actual_mtd_ly},0),0)  ;;
    value_format_name: percent_2
  }

  measure: aatv_actual_mtd_vs_fcast {
    label: "AATV MTD VS Forecast %"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE((COALESCE(${aatv_actual_mtd},0) - COALESCE(${aatv_fcast_mtd},0))/NULLIF(${aatv_fcast_mtd},0),0)  ;;
    value_format_name: percent_2
  }

  ### Financial YTD

  measure: aatv_actual_fytd {
    label: "AATV FYTD"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE(COALESCE(${agcp_actual_fytd},0) / NULLIF(${volume_actual_fytd},0),0);;
    value_format_name: gbp
  }

  measure: aatv_actual_fytd_ly {
    label: "AATV FYTD LY"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE(COALESCE(${agcp_actual_fytd_ly},0) / NULLIF(${volume_actual_fytd_ly},0),0);;
    value_format_name: gbp
  }

  measure: aatv_fcast_fytd {
    label: "AATV FYTD Forecast"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE(COALESCE(${agcp_fcast_fytd},0) / NULLIF(${volume_fcast_fytd},0),0);;
    value_format_name: gbp
  }

  measure: aatv_actual_fytd_vs_ly {
    label: "AATV FYTD VS LY %"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE((COALESCE(${aatv_actual_fytd},0) - COALESCE(${aatv_actual_fytd_ly},0))/NULLIF(${aatv_actual_fytd_ly},0),0)  ;;
    value_format_name: percent_2
  }

  measure: aatv_actual_fytd_vs_fcast {
    label: "AATV FYTD VS Forecast %"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE((COALESCE(${aatv_actual_fytd},0) - COALESCE(${aatv_fcast_fytd},0))/NULLIF(${aatv_fcast_fytd},0),0)  ;;
    value_format_name: percent_2
  }

  measure: aatv_actual_fytd_minus_ly {
    label: "AATV FYTD - FYTD LY"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE(COALESCE(${aatv_actual_fytd},0) - COALESCE(${aatv_actual_fytd_ly},0),0);;
    value_format_name: gbp
  }

### Financial Year

  measure: aatv_actual_fy_ly {
    label: "AATV FY LY"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE(COALESCE(${agcp_actual_fy_ly},0) / NULLIF(${volume_actual_fy_ly},0),0);;
    value_format_name: gbp
  }

  measure: aatv_fcast_fy {
    label: "AATV FY Forecast"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE(COALESCE(${agcp_fcast_fy},0) / NULLIF(${volume_fcast_fy},0),0);;
    value_format_name: gbp
  }

  ##############################################################
  ### Digital Visit
  ##############################################################

  measure: digital_visit {
    label: "Digital Visit"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.DIGITAL_VISIT_CNT ;;
    value_format_name: decimal_0
  }

  ### Trading Week

  measure: digital_visit_actual_trdwk {
    label: "Digital Visit Trading WK"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.DIGITAL_VISIT_CNT;;
    filters: {
      field: is_selected_trading_week
      value: "yes"
    }
    filters: {
      field: is_up_to_trading_week_day
      value: "yes"
    }
    filters: {
      field: is_selected_trading_week_year
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  measure: digital_visit_actual_trdwk_ly {
    label: "Digital Visit Trading WK LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.DIGITAL_VISIT_CNT;;
    filters: {
      field: is_selected_trading_week_ly
      value: "yes"
    }
    filters: {
      field: is_up_to_trading_week_day
      value: "yes"
    }
    filters: {
      field: is_selected_trading_week_year_ly
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  measure: digital_visit_fcast_trdwk {
    label: "Digital Visit Trading WK Forecast"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.DIGITAL_VISIT_CNT;;
    filters: {
      field: is_selected_trading_week
      value: "yes"
    }
    filters: {
      field: is_up_to_trading_week_day
      value: "yes"
    }
    filters: {
      field: is_selected_trading_week_year
      value: "yes"
    }
    filters: {
      field: is_selected_forecast_series
      value: "yes"
    }
    value_format_name: decimal_0
  }

  measure: digital_visit_actual_trdwk_vs_ly {
    label: "Digital Visit Trading WK VS LY %"
    group_label: "Interaction"
    type: number
    sql: (COALESCE(${digital_visit_actual_trdwk},0) - COALESCE(${digital_visit_actual_trdwk_ly},0))/NULLIF(${digital_visit_actual_trdwk_ly},0)  ;;
    value_format_name: percent_2
  }

  measure: digital_visit_actual_trdwk_vs_fcast {
    label: "Digital Visit Trading WK VS Forecast %"
    group_label: "Interaction"
    type: number
    sql: (COALESCE(${digital_visit_actual_trdwk},0) - COALESCE(${digital_visit_fcast_trdwk},0))/NULLIF(${digital_visit_fcast_trdwk},0)  ;;
    value_format_name: percent_2
  }


  ### Financial YTD

  measure: digital_visit_actual_fytd {
    label: "Digital Visit FYTD"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.DIGITAL_VISIT_CNT ;;
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
    type: sum
    sql: ${TABLE}.DIGITAL_VISIT_CNT ;;
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

  measure: digital_visit_actual_fytd_vs_ly {
    label: "Digital Visit FYTD VS LY %"
    group_label: "Interaction"
    type: number
    sql: COALESCE((COALESCE(${digital_visit_actual_fytd},0) - COALESCE(${digital_visit_actual_fytd_ly},0))/NULLIF(${digital_visit_actual_fytd_ly},0),0)  ;;
    value_format_name: percent_2
  }

  ### Financial Year

  measure: digital_visit_actual_fy_ly {
    label: "Digital Visit FY LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.DIGITAL_VISIT_CNT ;;
    filters: {
      field: new_business_sale.is_selected_last_fy
      value: "yes"
    }
    filters: {
      field: new_business_sale.series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  measure: digital_visit_fcast_fy {
    label: "Digital Visit FY Forecast"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.DIGITAL_VISIT_CNT;;
    filters: {
      field: is_selected_fy
      value: "yes"
    }
    filters: {
      field: is_selected_forecast_series
      value: "Yes"
    }
    value_format_name: decimal_0
  }

  ##############################################################
  ### Digital Visit Conversion Rate
  ##############################################################

  measure: digital_cr {
    label: "Digital Visit Conversion Rate"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${new_business_sale.volume},0) / NULLIF(${digital_visit},0),0);;
    value_format_name: percent_2
  }

  ### Trading Week

  measure: digital_cr_actual_trdwk {
    label: "Digital Visit Conversion Rate Trading WK"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${volume_actual_trdwk},0) / NULLIF(${digital_visit_actual_trdwk},0),0);;
    value_format_name: percent_2
  }

  measure: digital_cr_actual_trdwk_ly {
    label: "Digital Visit Conversion Rate Trading WK LY"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${volume_actual_trdwk_ly},0) / NULLIF(${digital_visit_actual_trdwk_ly},0),0);;
    value_format_name: percent_2
  }

  measure: digital_cr_fcast_trdwk {
    label: "Digital Visit Conversion Rate Trading WK Forecast"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${volume_fcast_trdwk},0) / NULLIF(${digital_visit_fcast_trdwk},0),0);;
    value_format_name: gbp
  }

  measure: digital_cr_actual_trdwk_vs_ly {
    label: "Digital Visit Conversion Rate Trading WK VS LY %"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE((COALESCE(${digital_cr_actual_trdwk},0) - COALESCE(${digital_cr_actual_trdwk_ly},0))/NULLIF(${digital_cr_actual_trdwk_ly},0),0)  ;;
    value_format_name: percent_2
  }

  measure: digital_cr_actual_trdwk_vs_fcast {
    label: "Digital Visit Conversion Rate Trading WK VS Forecast %"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE((COALESCE(${digital_cr_actual_trdwk},0) - COALESCE(${digital_cr_fcast_trdwk},0))/NULLIF(${digital_cr_fcast_trdwk},0),0)  ;;
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

  measure: digital_cr_actual_fytd_vs_ly {
    label: "Digital Visit Conversion Rate FYTD VS LY %"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE((COALESCE(${digital_cr_actual_fytd},0) - COALESCE(${digital_cr_actual_fytd_ly},0))/NULLIF(${digital_cr_actual_fytd_ly},0),0)  ;;
    value_format_name: percent_2
  }

  ### Financial Year

  measure: digital_cr_actual_fy_ly {
    label: "Digital Visit Conversion Rate FY LY"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${new_business_sale.volume_actual_fy_ly},0) / NULLIF(${digital_visit_actual_fy_ly},0),0);;
    value_format_name: percent_2
  }

  measure: digital_cr_fcast_fy {
    label: "Digital Visit Conversion Rate FY Forecast"
        group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${volume_fcast_fy},0) / NULLIF(${digital_visit_fcast_fy},0),0);;
    value_format_name: gbp
  }

  ##############################################################
  ### Inbound Call
  ##############################################################

  measure: inbound_call {
    label: "Inbound Call"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_CNT ;;
    value_format_name: decimal_0
  }

  ### Financial YTD

  measure: inbound_call_actual_fytd {
    label: "Inbound Call FYTD"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_CNT ;;
    filters: {
      field: is_selected_fy
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_doy_fy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  measure: inbound_call_actual_fytd_ly {
    label: "Inbound Call FYTD LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_CNT ;;
    filters: {
      field: is_selected_last_fy
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_doy_fy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  ### Financial Year

  measure: inbound_call_actual_fy_ly {
    label: "Inbound Call FY LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_CNT ;;
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

  ##############################################################
  ### Inbound Call Conversion Rate
  ##############################################################

  measure: inbound_call_cr {
    label: "Inbound Call Conversion Rate"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${new_business_sale.volume},0) / NULLIF(${inbound_call},0),0);;
    value_format_name: percent_2
  }

  ### Financial YTD

  measure: inbound_call_cr_actual_fytd {
    label: "Inbound Call Conversion Rate FYTD"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${new_business_sale.volume_actual_fytd},0) / NULLIF(${inbound_call_actual_fytd},0),0);;
    value_format_name: percent_2
  }

  measure: inbound_call_cr_actual_fytd_ly {
    label: "Inbound Call Conversion Rate FYTD LY"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${new_business_sale.volume_actual_fytd_ly},0) / NULLIF(${inbound_call_actual_fytd_ly},0),0);;
    value_format_name: percent_2
  }

  ### Financial Year

  measure: inbound_call_cr_actual_fy_ly {
    label: "Inbound Call Conversion Rate FY LY"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${new_business_sale.volume_actual_fy_ly},0) / NULLIF(${inbound_call_actual_fy_ly},0),0);;
    value_format_name: percent_2
  }

  ##############################################################
  ### Inbound Dial
  ##############################################################

  measure: inbound_dial {
    label: "Inbound Dial"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_DIAL_CNT ;;
    value_format_name: decimal_0
  }

  ### Financial YTD

  measure: inbound_dial_actual_fytd {
    label: "Inbound Dial FYTD"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_DIAL_CNT ;;
    filters: {
      field: is_selected_fy
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_doy_fy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  measure: inbound_dial_actual_fytd_ly {
    label: "Inbound Dial FYTD LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_DIAL_CNT ;;
    filters: {
      field: is_selected_last_fy
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_doy_fy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  ### Financial Year

  measure: inbound_dial_actual_fy_ly {
    label: "Inbound Dial FY LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_DIAL_CNT ;;
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

  ##############################################################
  ### Inbound Dial Conversion Rate
  ##############################################################

  measure: inbound_dial_cr {
    label: "Inbound Dial Conversion Rate"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${new_business_sale.volume},0) / NULLIF(${inbound_dial},0),0);;
    value_format_name: percent_2
  }

  ### Financial YTD

  measure: inbound_dial_cr_actual_fytd {
    label: "Inbound Dial Conversion Rate FYTD"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${new_business_sale.volume_actual_fytd},0) / NULLIF(${inbound_dial_actual_fytd},0),0);;
    value_format_name: percent_2
  }

  measure: inbound_dial_cr_actual_fytd_ly {
    label: "Inbound Dial Conversion Rate FYTD LY"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${new_business_sale.volume_actual_fytd_ly},0) / NULLIF(${inbound_dial_actual_fytd_ly},0),0);;
    value_format_name: percent_2
  }

  ### Financial Year

  measure: inbound_dial_cr_actual_fy_ly {
    label: "Inbound Dial Conversion Rate FY LY"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${new_business_sale.volume_actual_fy_ly},0) / NULLIF(${inbound_dial_actual_fy_ly},0),0);;
    value_format_name: percent_2
  }

  ##############################################################
  ### Outbound Dial
  ##############################################################

  measure: outbound_dial {
    label: "Outbound Dial"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.OUTBOUND_DIAL_CNT ;;
    value_format_name: decimal_0
  }

  ### Financial YTD

  measure: outbound_dial_actual_fytd {
    label: "Outbound Dial FYTD"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.OUTBOUND_DIAL_CNT ;;
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

  measure: outbound_dial_actual_fytd_ly {
    label: "Outbound Dial FYTD LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.OUTBOUND_DIAL_CNT ;;
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


  ### Financial Year

  measure: outbound_dial_actual_fy_ly {
    label: "Outbound Dial FY LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.OUTBOUND_DIAL_CNT ;;
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

  ##############################################################
  ### Outbound Dial Conversion Rate
  ##############################################################

  measure: outbound_dial_cr {
    label: "Outbound Dial Conversion Rate"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${new_business_sale.volume},0) / NULLIF(${outbound_dial},0),0);;
    value_format_name: percent_2
  }

  ### Financial YTD

  measure: outbound_dial_cr_actual_fytd {
    label: "Outbound Dial Conversion Rate FYTD"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${new_business_sale.volume_actual_fytd},0) / NULLIF(${outbound_dial_actual_fytd},0),0);;
    value_format_name: percent_2
  }

  measure: outbound_call_cr_actual_fytd_ly {
    label: "Outbound Dial Conversion Rate FYTD LY"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${new_business_sale.volume_actual_fytd_ly},0) / NULLIF(${outbound_dial_actual_fytd_ly},0),0);;
    value_format_name: percent_2
  }

  ### Financial Year

  measure: outbound_dial_cr_actual_fy_ly {
    label: "Outbound Dial Conversion Rate FY LY"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${new_business_sale.volume_actual_fy_ly},0) / NULLIF(${outbound_dial_actual_fy_ly},0),0);;
    value_format_name: percent_2
  }

}
