view: new_business_sale {
  derived_table: {
    sql:  SELECT    ROW_NUMBER() OVER (ORDER BY DATE_KEY) as ROW_ID,
                    FACTS.*,
                    DIM_DATE.DATE_DTTM,
                    DIM_DATE.TRADING_WEEK_NUMBER, DIM_DATE.TRADING_DAY_NUMBER_OF_WEEK, DIM_DATE.TRADING_DAY_SHORT_NAME, DIM_DATE.TRADING_YEAR, DIM_DATE.TRADING_WEEK_NAME, DIM_DATE.TRADING_WEEK_START_DATE, DIM_DATE.TRADING_WEEK_END_DATE,
                    DIM_DATE.FINANCIAL_YEAR, DIM_DATE.FINANCIAL_DAY_OF_YEAR, DIM_DATE.TRADING_DAY_OF_YEAR, DIM_DATE.FINANCIAL_YEAR_NAME
          FROM      (
                    -- FACT_NEW_BUSINESS_SALE
                    SELECT      ACCOUNTING_TREATMENT,
                                DATE_KEY,
                                TIME_KEY,
                                TRANSACTION_KEY,
                                TRANSACTION_ID,
                                POLICY_KEY,
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
                                MANUFACTURER_KEY,
                                OFFER_CODE,
                                IS_WILL_JOIN,
                                SERIES_IDENTIFIER, /* Assume Actual */
                                DAR_CHANNEL,
                                ANNUALISATION_FACTOR,
                                PRODUCT_AND_ADDON_GCP,
                                ANNUALISED_PRODUCT_ADDON_GCP,
                                TRANSACTION_COUNT,
                                null as INBOUND_CALL_CNT,
                                null AS DIGITAL_VISIT_CNT,
                                null AS OUTBOUND_DIAL_CLOSED,
                                null as OUTBOUND_DIAL_DIALLED,
                                null as OUTBOUND_DIAL_NEW_LEAD,
                                null AS INBOUND_CALL_ANSWERED,
                                null AS INBOUND_CALL_ABANDONED,
                                null as INBOUND_CALL_AGCP,
                                null as INBOUND_CALL_SALE
                    FROM        {{_user_attributes["commercial_road_new_business_schema_name"]}}.FACT_NEW_BUSINESS_SALE

                    UNION ALL
                    -- FACT_INTERACTION_INBOUND_CALL
                    SELECT      'Transacted' as ACCOUNTING_TREATMENT,
                                CALL_DATE_KEY as DATE_KEY,
                                CALL_TIME_KEY as TIME_KEY,
                                null as TRANSACTION_KEY,
                                null as TRANSACTION_ID,
                                FIRST_POLICY_KEY as POLICY_KEY,
                                null as TRANSACTION_TYPE_LEVEL_3_KEY,
                                8 as TRANS_SALES_CHANNEL_LEVEL2_KEY,
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
                                null as MANUFACTURER_KEY,
                                null as OFFER_CODE,
                                IS_WILL_JOIN,
                                'Actual' as SERIES_IDENTIFIER, /* Assume Actual */
                                null as DAR_CHANNEL,
                                null as ANNUALISATION_FACTOR,
                                null as PRODUCT_AND_ADDON_GCP,
                                null as ANNUALISED_PRODUCT_ADDON_GCP,
                                null as TRANSACTION_COUNT,
                                SUM(ic.INTERACTION_CNT) AS INBOUND_CALL_CNT, --xxx DO I NEED OFFERED_CALLS HERE?
                                null AS DIGITAL_VISIT_CNT,
                                null AS OUTBOUND_DIAL_CLOSED,
                                null as OUTBOUND_DIAL_DIALLED,
                                null as OUTBOUND_DIAL_NEW_LEAD,
                                SUM(CASE WHEN IS_CALL_ANSWERED = 'Y' THEN 1 ELSE 0 END) AS INBOUND_CALL_ANSWERED,
                                SUM(CASE WHEN IS_CALL_ABANDONED = 'Y' THEN 1 ELSE 0 END) AS INBOUND_CALL_ABANDONED,
                                SUM(s.ANNUALISED_PRODUCT_ADDON_GCP) as INBOUND_CALL_AGCP,
                                SUM(s.TRANSACTION_COUNT) as INBOUND_CALL_SALE
                    FROM        {{_user_attributes["commercial_road_new_business_schema_name"]}}.FACT_INTERACTION_INBOUND_CALL ic
                    LEFT JOIN   (SELECT POLICY_KEY, TRANSACTION_COUNT, ANNUALISED_PRODUCT_ADDON_GCP FROM {{_user_attributes["commercial_road_new_business_schema_name"]}}.FACT_NEW_BUSINESS_SALE WHERE ACCOUNTING_TREATMENT = 'Transacted' and SERIES_IDENTIFIER = 'Actual') s
                    ON          ic.FIRST_POLICY_KEY = s.POLICY_KEY
                    WHERE       CALL_TYPE_KEY = 1 /* Consumer Road New Business */
                    GROUP BY    CALL_DATE_KEY, CALL_TIME_KEY, FIRST_POLICY_KEY, STAFF_KEY, IS_WILL_JOIN


                    UNION ALL
                    -- FACT_INTERACTION_DIGITAL_VISIT
                    SELECT      'Transacted' as ACCOUNTING_TREATMENT,
                                VISIT_DATE_KEY as DATE_KEY,
                                VISIT_TIME_KEY as TIME_KEY,
                                null as TRANSACTION_KEY,
                                null as TRANSACTION_ID,
                                null as POLICY_KEY,
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
                                null as MANUFACTURER_KEY,
                                null as OFFER_CODE,
                                null as IS_WILL_JOIN,
                                'Actual' as SERIES_IDENTIFIER, /* Assume Actual */
                                null as DAR_CHANNEL,
                                null as ANNUALISATION_FACTOR,
                                null as PRODUCT_AND_ADDON_GCP,
                                null as ANNUALISED_PRODUCT_ADDON_GCP,
                                null as TRANSACTION_COUNT,
                                null AS INBOUND_CALL_CNT,
                                INTERACTION_CNT AS DIGITAL_VISIT_CNT,
                                null AS OUTBOUND_DIAL_CLOSED,
                                null as OUTBOUND_DIAL_DIALLED,
                                null as OUTBOUND_DIAL_NEW_LEAD,
                                null AS INBOUND_CALL_ANSWERED,
                                null AS INBOUND_CALL_ABANDONED,
                                null as INBOUND_CALL_AGCP,
                                null as INBOUND_CALL_SALE
                    FROM        {{_user_attributes["commercial_road_new_business_schema_name"]}}.FACT_INTERACTION_DIGITAL_VISIT
                    WHERE       DIGITAL_VISIT_TYPE_KEY = 1 /* Consumer Road New Business */

                    UNION ALL
                    -- FACT_INTERACTION_OUTBOUND_DIAL
                    SELECT      'Transacted' as ACCOUNTING_TREATMENT,
                                DIAL_DATE_KEY as DATE_KEY,
                                DIAL_TIME_KEY as TIME_KEY,
                                null as TRANSACTION_KEY,
                                null as TRANSACTION_ID,
                                POLICY_KEY,
                                null as TRANSACTION_TYPE_LEVEL_3_KEY,
                                9 as TRANS_SALES_CHANNEL_LEVEL2_KEY,
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
                                null as MANUFACTURER_KEY,
                                null as OFFER_CODE,
                                null as IS_WILL_JOIN,
                                'Actual' as SERIES_IDENTIFIER, /* Assume Actual */
                                null as DAR_CHANNEL,
                                null as ANNUALISATION_FACTOR,
                                null as PRODUCT_AND_ADDON_GCP,
                                null as ANNUALISED_PRODUCT_ADDON_GCP,
                                null as TRANSACTION_COUNT,
                                null as INBOUND_CALL_CNT,
                                null AS DIGITAL_VISIT_CNT,
                                INTERACTION_CNT AS OUTBOUND_DIAL_CLOSED,
                                0 as OUTBOUND_DIAL_DIALLED,
                                0 as OUTBOUND_DIAL_NEW_LEAD,
                                null AS INBOUND_CALL_ANSWERED,
                                null AS INBOUND_CALL_ABANDONED,
                                null as INBOUND_CALL_AGCP,
                                null as INBOUND_CALL_SALE
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
                              TRADING_DAY_OF_YEAR,
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

  dimension: manufacturer_key {
    label: "Manufacturer Key"
    hidden:  yes
    type: string
    sql: ${TABLE}.MANUFACTURER_KEY ;;
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

  dimension: is_inbound_call_data {
    label: "Is Inbound Call Data?"
    type: yesno
    sql: ${TABLE}.INBOUND_CALL_CNT = 1 ;;
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
    type: number
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

  dimension: trx_trading_day_of_year {
    label: "Trading Day of Year"
    group_label: "Transaction Trading Date Indentifiers"
    type: string
    sql: ${TABLE}.TRADING_DAY_OF_YEAR ;;
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

  dimension: product_package_level_2_key {
    hidden:  yes
    type: number
    sql: ${TABLE}.PRODUCT_PACKAGE_LEVEL_2_KEY ;;
  }

  ### Supporting dimension from dim_date_filter
  dimension: trdwk_number_by_date_filter {
    hidden:  yes
    type: string
    sql: CASE WHEN ${date_filter.date_raw} = TO_DATE(${date_filter_dimension}, 'yyyy/mm/dd') THEN ${date_filter.trdwk_number} END;;
  }

  dimension: trdwk_number_ly_by_date_filter {
    hidden:  yes
    type: string
    sql: CASE WHEN ${trdwk_number_by_date_filter} = 53 THEN 1 ELSE ${trdwk_number_by_date_filter} END;;
  }

  dimension: trdwk_day_by_date_filter {
    hidden:  yes
    type: string
    sql: CASE WHEN ${date_filter.date_raw} = TO_DATE(${date_filter_dimension}, 'yyyy/mm/dd') THEN ${date_filter.trdwk_day_number_of_week} END;;
  }

  dimension: trdwk_year_by_date_filter {
    hidden:  yes
    type: string
    sql: CASE WHEN ${date_filter.date_raw} = TO_DATE(${date_filter_dimension}, 'yyyy/mm/dd') THEN ${date_filter.trdwk_year} END;;
  }

  dimension: trdwk_year_ly_by_date_filter {
    hidden:  yes
    type: string
    sql: CASE WHEN ${trdwk_number_by_date_filter} = 53 THEN ${trdwk_year_by_date_filter} ELSE ${date_filter.trdwk_year_ly}  END;;
  }

  dimension: trading_doy_by_date_filter {
    hidden:  yes
    type: string
    sql: CASE WHEN ${date_filter.date_raw} = TO_DATE(${date_filter_dimension}, 'yyyy/mm/dd') THEN ${date_filter.trading_day_of_year} END;;
  }

  dimension: financial_year_by_date_filter {
    hidden:  yes
    type: string
    sql: CASE WHEN ${date_filter.date_raw} = TO_DATE(${date_filter_dimension}, 'yyyy/mm/dd') THEN ${date_filter.financial_year} END;;
  }

  dimension: financial_year_ly_by_date_filter {
    hidden:  yes
    type: string
    sql: CASE WHEN ${date_filter.date_raw} = TO_DATE(${date_filter_dimension}, 'yyyy/mm/dd') THEN ${date_filter.financial_year_ly} END;;
  }

  dimension: financial_doy_by_date_filter {
    hidden:  yes
    type: string
    sql: CASE WHEN ${date_filter.date_raw} = TO_DATE(${date_filter_dimension}, 'yyyy/mm/dd') THEN ${date_filter.financial_day_of_year} END;;
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
    sql: ${trx_date_raw} = TO_DATE(${date_filter_dimension}, 'yyyy/mm/dd') ;;
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

  dimension: is_up_to_selected_doy_trdy {
    hidden: yes
    type: yesno
    sql: ${trx_trading_day_of_year}<=${trading_doy_by_date_filter} ;;
  }

  dimension: is_up_to_selected_day {
    hidden: yes
    type: yesno
    sql: ${trx_date_raw} <= TO_DATE(${date_filter_dimension}, 'yyyy/mm/dd') ;;
  }

  dimension: is_up_to_selected_day_ly {
    hidden: yes
    type: yesno
    sql: ${trx_date_raw} <= ADD_MONTHS(TO_DATE(${date_filter_dimension}, 'yyyy/mm/dd'), -12) ;;
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
    sql: CONCAT(EXTRACT(YEAR FROM ${trx_date_raw}), EXTRACT(MONTH FROM ${trx_date_raw})) = CONCAT(EXTRACT(YEAR FROM TO_DATE(${date_filter_dimension}, 'yyyy/mm/dd')), EXTRACT(MONTH FROM TO_DATE(${date_filter_dimension}, 'yyyy/mm/dd'))) ;;
  }

  dimension: is_selected_year_month_ly {
    hidden: yes
    type: yesno
    sql: CONCAT(EXTRACT(YEAR FROM ${trx_date_raw})+1, EXTRACT(MONTH FROM ${trx_date_raw})) = CONCAT(EXTRACT(YEAR FROM TO_DATE(${date_filter_dimension}, 'yyyy/mm/dd')), EXTRACT(MONTH FROM TO_DATE(${date_filter_dimension}, 'yyyy/mm/dd'))) ;;
  }


  ###########################################################################################
  ### Detached filters
  ###########################################################################################

  filter: date_filter_parameter {
    label: "Date Filter Parameter"
    group_label: "Filters"
    type: date
    suggest_dimension: trx_date_date
  }

  dimension: date_filter_dimension {
    label: "Date Filter Dimension"
    #hidden: yes
    type: date
    sql: COALESCE({% date_start date_filter_parameter %},
                  CASE  WHEN TO_CHAR(SYSDATE, 'DY') = 'MON' THEN TRUNC(SYSDATE-5)
                        WHEN TO_CHAR(SYSDATE, 'DY') = 'TUE' THEN TRUNC(SYSDATE-6)
                        WHEN TO_CHAR(SYSDATE, 'DY') = 'WED' THEN TRUNC(SYSDATE-7)
                        WHEN TO_CHAR(SYSDATE, 'DY') = 'THU' THEN TRUNC(SYSDATE-8)
                        WHEN TO_CHAR(SYSDATE, 'DY') = 'FRI' THEN TRUNC(SYSDATE-2)
                        WHEN TO_CHAR(SYSDATE, 'DY') = 'SAT' THEN TRUNC(SYSDATE-3)
                        WHEN TO_CHAR(SYSDATE, 'DY') = 'SUN' THEN TRUNC(SYSDATE-4)
                  END
         );;
  }

  filter: forecast_series_filter_parameter {
    label: "Forecast Series Identifier Filter"
    group_label: "Filters"
    suggest_dimension: series_identifier
    suggestable: yes
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

  ### Trading YTD

  measure: volume_actual_trdytd {
    label: "Volume Trading YTD"
    group_label: "Volume"
    type: sum
    sql: ${TABLE}.TRANSACTION_COUNT;;
    filters: {
      field: is_selected_trading_week_year
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_doy_trdy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  measure: volume_actual_trdytd_ly {
    label: "Volume Trading YTD LY"
    group_label: "Volume"
    type: sum
    sql: ${TABLE}.TRANSACTION_COUNT;;
    filters: {
      field: is_selected_trading_week_year_ly
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_doy_trdy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  ### Trading Year

  measure: volume_actual_trdy_ly {
    label: "Volume Trading Year LY"
    group_label: "Volume"
    type: sum
    sql: ${TABLE}.TRANSACTION_COUNT;;
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

  measure: volume_fcast_trdy {
    label: "Volume Trading Year Forecast"
    group_label: "Volume"
    type: sum
    sql: ${TABLE}.TRANSACTION_COUNT;;
    filters: {
      field: is_selected_trading_week_year
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

  ### Trading YTD

  measure: agcp_actual_trdytd {
    label: "AGCP Trading YTD"
    group_label: "Annualised Product and Add-on GCP"
    type: sum
    sql: ${TABLE}.ANNUALISED_PRODUCT_ADDON_GCP;;
    filters: {
      field: is_selected_trading_week_year
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_doy_trdy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: gbp_0
  }

  measure: agcp_actual_trdytd_ly {
    label: "AGCP Trading YTD LY"
    group_label: "Annualised Product and Add-on GCP"
    type: sum
    sql: ${TABLE}.ANNUALISED_PRODUCT_ADDON_GCP;;
    filters: {
      field: is_selected_trading_week_year_ly
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_doy_trdy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: gbp_0
  }

  ### Trading Year

  measure: agcp_actual_trdy_ly {
    label: "AGCP Trading Year LY"
    group_label: "Annualised Product and Add-on GCP"
    type: sum
    sql: ${TABLE}.ANNUALISED_PRODUCT_ADDON_GCP;;
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

  measure: agcp_fcast_trdy {
    label: "AGCP Trading Year Forecast"
    group_label: "Annualised Product and Add-on GCP"
    type: sum
    sql: ${TABLE}.ANNUALISED_PRODUCT_ADDON_GCP;;
    filters: {
      field: is_selected_trading_week_year
      value: "yes"
    }
    filters: {
      field: is_selected_forecast_series
      value: "Yes"
    }
    value_format_name: gbp_0
  }

  ##############################################################
  ### Annualised Average Transaction Value
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

  ### Trading YTD

  measure: aatv_actual_trdytd {
    label: "AATV Trading YTD"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE(COALESCE(${agcp_actual_trdytd},0) / NULLIF(${volume_actual_trdytd},0),0);;
    value_format_name: gbp
  }

  measure: aatv_actual_trdytd_ly {
    label: "AATV Trading YTD LY"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE(COALESCE(${agcp_actual_trdytd_ly},0) / NULLIF(${volume_actual_trdytd_ly},0),0);;
    value_format_name: gbp
  }

  ### Trading Year

  measure: aatv_actual_trdy_ly {
    label: "AATV Trading Year LY"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE(COALESCE(${agcp_actual_trdy_ly},0) / NULLIF(${volume_actual_trdy_ly},0),0);;
    value_format_name: gbp
  }

  measure: aatv_fcast_trdy {
    label: "AATV Trading Year Forecast"
    group_label: "Annualised Average Transaction Value"
    type: number
    sql: COALESCE(COALESCE(${agcp_fcast_trdy},0) / NULLIF(${volume_fcast_trdy},0),0);;
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

  ### Trading YTD

  measure: digital_visit_actual_trdytd {
    label: "Digital Visit Trading YTD"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.DIGITAL_VISIT_CNT;;
    filters: {
      field: is_selected_trading_week_year
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_doy_trdy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  measure: digital_visit_actual_trdytd_ly {
    label: "Digital Visit Trading YTD LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.DIGITAL_VISIT_CNT;;
    filters: {
      field: is_selected_trading_week_year_ly
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_doy_trdy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  ### Trading Year

  measure: digital_visit_actual_trdy_ly {
    label: "Digital Visit Trading Year LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.DIGITAL_VISIT_CNT;;
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

  measure: digital_visit_fcast_trdy {
    label: "Digital Visit Trading Year Forecast"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.DIGITAL_VISIT_CNT;;
    filters: {
      field: is_selected_trading_week_year
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
    sql: COALESCE(COALESCE(${volume},0) / NULLIF(${digital_visit},0),0);;
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
    sql: COALESCE(COALESCE(${volume_actual_fytd},0) / NULLIF(${digital_visit_actual_fytd},0),0);;
    value_format_name: percent_2
  }

  measure: digital_cr_actual_fytd_ly {
    label: "Digital Visit Conversion Rate FYTD LY"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${volume_actual_fytd_ly},0) / NULLIF(${digital_visit_actual_fytd_ly},0),0);;
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
    sql: COALESCE(COALESCE(${volume_actual_fy_ly},0) / NULLIF(${digital_visit_actual_fy_ly},0),0);;
    value_format_name: percent_2
  }

  measure: digital_cr_fcast_fy {
    label: "Digital Visit Conversion Rate FY Forecast"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${volume_fcast_fy},0) / NULLIF(${digital_visit_fcast_fy},0),0);;
    value_format_name: percent_2
  }

  ### Trading YTD

  measure: digital_cr_actual_trdytd {
    label: "Digital Visit Conversion Rate Trading YTD"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${volume_actual_trdytd},0) / NULLIF(${digital_visit_actual_trdytd},0),0);;
    value_format_name: percent_2
  }

  measure: digital_cr_actual_trdytd_ly {
    label: "Digital Visit Conversion Rate Trading YTD LY"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${volume_actual_trdytd_ly},0) / NULLIF(${digital_visit_actual_trdytd_ly},0),0);;
    value_format_name: percent_2
  }

  ### Trading Year

  measure: digital_cr_actual_trdy_ly {
    label: "Digital Visit Conversion Rate Trading Year LY"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${volume_actual_trdy_ly},0) / NULLIF(${digital_visit_actual_trdy_ly},0),0);;
    value_format_name: percent_2
  }

  measure: digital_cr_fcast_trdy {
    label: "Digital Visit Conversion Rate Trading Year Forecast"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${volume_fcast_trdy},0) / NULLIF(${digital_visit_fcast_trdy},0),0);;
    value_format_name: percent_2
  }

  ##############################################################
  ### Inbound Call
  ##############################################################

  measure: ic {
    label: "Inbound Calls Offered"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_CNT;;
    value_format_name: decimal_0
  }

  ### Trading Week

  measure: ic_actual_trdwk {
    label: "Inbound Calls Offered Trading WK"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_CNT;;
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

  measure: ic_actual_trdwk_ly {
    label: "Inbound Calls Offered Trading WK LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_CNT;;
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

  measure: ic_fcast_trdwk {
    label: "Inbound Calls Offered Trading WK Forecast"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_CNT;;
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

  measure: ic_actual_trdwk_vs_ly {
    label: "Inbound Calls Offered Trading WK VS LY %"
    group_label: "Interaction"
    type: number
    sql: (COALESCE(${ic_actual_trdwk},0) - COALESCE(${ic_actual_trdwk_ly},0))/NULLIF(${ic_actual_trdwk_ly},0)  ;;
    value_format_name: percent_2
  }

  measure: ic_actual_trdwk_vs_fcast {
    label: "Inbound Calls Offered Trading WK VS Forecast %"
    group_label: "Interaction"
    type: number
    sql: (COALESCE(${ic_actual_trdwk},0) - COALESCE(${ic_fcast_trdwk},0))/NULLIF(${ic_fcast_trdwk},0)  ;;
    value_format_name: percent_2
  }

  ### Trading YTD

  measure: ic_actual_trdytd {
    label: "Inbound Calls Offered Trading YTD"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_CNT;;
    filters: {
      field: is_selected_trading_week_year
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_doy_trdy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  measure: ic_actual_trdytd_ly {
    label: "Inbound Calls Offered Trading YTD LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_CNT;;
    filters: {
      field: is_selected_trading_week_year_ly
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_doy_trdy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  ### Trading Year

  measure: ic_actual_trdy_ly {
    label: "Inbound Calls Offered Trading Year LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_CNT;;
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

  measure: ic_fcast_trdy {
    label: "Inbound Calls Offered Trading Year Forecast"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_CNT;;
    filters: {
      field: is_selected_trading_week_year
      value: "yes"
    }
    filters: {
      field: is_selected_forecast_series
      value: "Yes"
    }
    value_format_name: decimal_0
  }

  ##############################################################
  ### Inbound Call Answered
  ##############################################################

  measure: ic_answered {
    label: "Inbound Calls Answered"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_ANSWERED;;
    value_format_name: decimal_0
  }

### Trading Week

  measure: ic_answered_actual_trdwk {
    label: "Inbound Calls Answered Trading WK"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_ANSWERED;;
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

  measure: ic_answered_actual_trdwk_ly {
    label: "Inbound Calls Answered Trading WK LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_ANSWERED;;
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

  measure: ic_answered_fcast_trdwk {
    label: "Inbound Calls Answered Trading WK Forecast"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_ANSWERED;;
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

  measure: ic_answered_actual_trdwk_vs_ly {
    label: "Inbound Calls Answered Trading WK VS LY %"
    group_label: "Interaction"
    type: number
    sql: (COALESCE(${ic_answered_actual_trdwk},0) - COALESCE(${ic_answered_actual_trdwk_ly},0))/NULLIF(${ic_answered_actual_trdwk_ly},0)  ;;
    value_format_name: percent_2
  }

  measure: ic_answered_actual_trdwk_vs_fcast {
    label: "Inbound Calls Answered Trading WK VS Forecast %"
    group_label: "Interaction"
    type: number
    sql: (COALESCE(${ic_answered_actual_trdwk},0) - COALESCE(${ic_answered_fcast_trdwk},0))/NULLIF(${ic_answered_fcast_trdwk},0)  ;;
    value_format_name: percent_2
  }

  ### Trading YTD

  measure: ic_answered_actual_trdytd {
    label: "Inbound Calls Answered Trading YTD"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_ANSWERED;;
    filters: {
      field: is_selected_trading_week_year
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_doy_trdy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  measure: ic_answered_actual_trdytd_ly {
    label: "Inbound Calls Answered Trading YTD LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_ANSWERED;;
    filters: {
      field: is_selected_trading_week_year_ly
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_doy_trdy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  ### Trading Year

  measure: ic_answered_actual_trdy_ly {
    label: "Inbound Calls Answered Trading Year LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_ANSWERED;;
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

  measure: ic_answered_fcast_trdy {
    label: "Inbound Calls Answered Trading Year Forecast"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_ANSWERED;;
    filters: {
      field: is_selected_trading_week_year
      value: "yes"
    }
    filters: {
      field: is_selected_forecast_series
      value: "Yes"
    }
    value_format_name: decimal_0
  }

  ##############################################################
  ### Inbound Call Abandoned
  ##############################################################

  measure: ic_abandoned {
    label: "Inbound Calls Abandoned"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_ABANDONED ;;
    value_format_name: decimal_0
  }

  ### Trading YTD

  measure: ic_abandoned_actual_trdytd {
    label: "Inbound Calls Abandoned Trading YTD"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_ABANDONED;;
    filters: {
      field: is_selected_trading_week_year
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_doy_trdy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  measure: ic_abandoned_actual_trdytd_ly {
    label: "Inbound Calls Abandoned Trading YTD LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_ABANDONED;;
    filters: {
      field: is_selected_trading_week_year_ly
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_doy_trdy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  ### Trading Year

  measure: ic_abandoned_actual_trdy_ly {
    label: "Inbound Calls Abandoned Trading Year LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_ABANDONED;;
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

  measure: ic_abandoned_fcast_trdy {
    label: "Inbound Calls Abandoned Trading Year Forecast"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_ABANDONED;;
    filters: {
      field: is_selected_trading_week_year
      value: "yes"
    }
    filters: {
      field: is_selected_forecast_series
      value: "Yes"
    }
    value_format_name: decimal_0
  }

  ##############################################################
  ### Inbound Call Sale
  ##############################################################

  measure: ic_sale {
    label: "Inbound Calls Sale"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_SALE ;;
    value_format_name: decimal_0
  }

  ### Trading Week

  measure: ic_sale_actual_trdwk {
    label: "Inbound Calls Sale Trading WK"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_SALE;;
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

  measure: ic_sale_actual_trdwk_ly {
    label: "Inbound Calls Sale Trading WK LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_SALE;;
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

  measure: ic_sale_fcast_trdwk {
    label: "Inbound Calls Sale Trading WK Forecast"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_SALE;;
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

  ### Trading YTD

  measure: ic_sale_actual_trdytd {
    label: "Inbound Calls Sale Trading YTD"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_SALE;;
    filters: {
      field: is_selected_trading_week_year
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_doy_trdy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  measure: ic_sale_actual_trdytd_ly {
    label: "Inbound Calls Sale Trading YTD LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_SALE;;
    filters: {
      field: is_selected_trading_week_year_ly
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_doy_trdy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  ### Trading Year

  measure: ic_sale_actual_trdy_ly {
    label: "Inbound Calls Sale Trading Year LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_SALE;;
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

  measure: ic_sale_fcast_trdy {
    label: "Inbound Calls Sale Trading Year Forecast"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_SALE;;
    filters: {
      field: is_selected_trading_week_year
      value: "yes"
    }
    filters: {
      field: is_selected_forecast_series
      value: "Yes"
    }
    value_format_name: decimal_0
  }

  ##############################################################
  ### Inbound Call AGCP
  ##############################################################

  measure: ic_agcp {
    label: "Inbound Calls AGCP"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_AGCP ;;
    value_format_name: gbp_0
  }



  ### Trading YTD

  measure: ic_agcp_actual_trdytd {
    label: "Inbound Calls AGCP Trading YTD"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_AGCP;;
    filters: {
      field: is_selected_trading_week_year
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_doy_trdy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: gbp_0
  }

  measure: ic_agcp_actual_trdytd_ly {
    label: "Inbound Calls AGCP Trading YTD LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_AGCP;;
    filters: {
      field: is_selected_trading_week_year_ly
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_doy_trdy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: gbp_0
  }

  ### Trading Year

  measure: ic_agcp_actual_trdy_ly {
    label: "Inbound Calls AGCP Trading Year LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_AGCP;;
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

  measure: ic_agcp_fcast_trdy {
    label: "Inbound Calls AGCP Trading Year Forecast"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.INBOUND_CALL_AGCP;;
    filters: {
      field: is_selected_trading_week_year
      value: "yes"
    }
    filters: {
      field: is_selected_forecast_series
      value: "Yes"
    }
    value_format_name: gbp_0
  }

  ##############################################################
  ### Inbound Call AATV
  ##############################################################

  measure: ic_aatv {
    label: "Inbound Calls AATV"
    group_label: "Interaction"
    type: number
    sql: COALESCE((COALESCE(${ic_agcp},0) / NULLIF(${ic_sale},0)),0);;
    value_format_name: gbp
  }

  ### Trading YTD

  measure: ic_aatv_actual_trdytd {
    label: "Inbound Calls AATV Trading YTD"
    group_label: "Interaction"
    type: number
    sql: COALESCE(COALESCE(${ic_agcp_actual_trdytd},0) / NULLIF(${ic_sale_actual_trdytd},0),0);;
    value_format_name: gbp
  }

  measure: ic_aatv_actual_trdytd_ly {
    label: "Inbound Calls AATV Trading YTD LY"
    group_label: "Interaction"
    type: number
    sql: COALESCE(COALESCE(${ic_agcp_actual_trdytd_ly},0) / NULLIF(${ic_sale_actual_trdytd_ly},0),0);;
    value_format_name: gbp
  }

  ### Trading Year

  measure: ic_aatv_actual_trdy_ly {
    label: "Inbound Calls AATV Trading Year LY"
    group_label: "Interaction"
    type: number
    sql: COALESCE(COALESCE(${ic_agcp_actual_trdy_ly},0) / NULLIF(${ic_sale_actual_trdy_ly},0),0);;
    value_format_name: gbp
  }

  measure: ic_aatv_fcast_trdy {
    label: "Inbound Calls AATV Trading Year Forecast"
    group_label: "Interaction"
    type: number
    sql: COALESCE(COALESCE(${ic_agcp_fcast_trdy},0) / NULLIF(${ic_sale_fcast_trdy},0),0);;
    value_format_name: gbp
  }

  ##############################################################
  ### Inbound Call Conversion Rate
  ##############################################################

  measure: ic_cr {
    label: "Inbound Calls Conversion Rate"
    group_label: "Rate"
    type: number
    sql: COALESCE(COALESCE(${ic_sale},0) / NULLIF(${ic_answered},0),0);;
    value_format_name: percent_2
  }

  ### Trading YTD

  measure: ic_cr_actual_trdytd {
    label: "Inbound Calls Conversion Rate Trading YTD"
    group_label: "Rate"
    type: number
    sql: COALESCE(COALESCE(${ic_sale_actual_trdytd},0) / NULLIF(${ic_answered_actual_trdytd},0),0);;
    value_format_name: percent_2
  }

  measure: ic_cr_actual_trdytd_ly {
    label: "Inbound Calls Conversion Rate Trading YTD LY"
    group_label: "Rate"
    type: number
    sql: COALESCE(COALESCE(${ic_sale_actual_trdytd_ly},0) / NULLIF(${ic_answered_actual_trdytd_ly},0),0);;
    value_format_name: percent_2
  }

  ### Trading Year

  measure: ic_cr_actual_trdy_ly {
    label: "Inbound Calls Conversion Rate Trading Year LY"
    group_label: "Rate"
    type: number
    sql: COALESCE(COALESCE(${ic_sale_actual_trdy_ly},0) / NULLIF(${ic_answered_actual_trdy_ly},0),0);;
    value_format_name: percent_2
  }

  measure: ic_cr_fcast_trdy {
    label: "Inbound Calls Conversion Rate Trading Year Forecast"
    group_label: "Rate"
    type: number
    sql: COALESCE(COALESCE(${ic_sale_fcast_trdy},0) / NULLIF(${ic_answered_fcast_trdy},0),0);;
    value_format_name: percent_2
  }

  ##############################################################
  ### Inbound Call Abandoned Rate
  ##############################################################

  measure: ic_ar {
    label: "Inbound Calls Abandoned Rate"
    group_label: "Rate"
    type: number
    sql: COALESCE(COALESCE(${ic_abandoned},0) / NULLIF(${ic},0),0);;
    value_format_name: percent_2
  }

  ### Trading YTD

  measure: ic_ar_actual_trdytd {
    label: "Inbound Calls Abandoned Rate Trading YTD"
    group_label: "Rate"
    type: number
    sql: COALESCE(COALESCE(${ic_abandoned_actual_trdytd},0) / NULLIF(${ic_actual_trdytd},0),0);;
    value_format_name: percent_2
  }

  measure: ic_ar_actual_trdytd_ly {
    label: "Inbound Calls Abandoned Rate Trading YTD LY"
    group_label: "Rate"
    type: number
    sql: COALESCE(COALESCE(${ic_abandoned_actual_trdytd_ly},0) / NULLIF(${ic_actual_trdytd_ly},0),0);;
    value_format_name: percent_2
  }

  ### Trading Year

  measure: ic_ar_actual_trdy_ly {
    label: "Inbound Calls Abandoned Rate Trading Year LY"
    group_label: "Rate"
    type: number
    sql: COALESCE(COALESCE(${ic_abandoned_actual_trdy_ly},0) / NULLIF(${ic_actual_trdy_ly},0),0);;
    value_format_name: percent_2
  }

  measure: ic_ar_fcast_trdy {
    label: "Inbound Calls Abandoned Rate Trading Year Forecast"
    group_label: "Rate"
    type: number
    sql: COALESCE(COALESCE(${ic_abandoned_fcast_trdy},0) / NULLIF(${ic_fcast_trdy},0),0);;
    value_format_name: percent_2
  }

  ##############################################################
  ### Outbound Dial Closed
  ##############################################################

  measure: od_closed {
    label: "Outbound Dial Closed"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.OUTBOUND_DIAL_CLOSED ;;
    value_format_name: decimal_0
  }

  ### Trading Week

  measure: od_closed_actual_trdwk {
    label: "Outbound Dial Closed Trading WK"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.OUTBOUND_DIAL_CLOSED;;
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

  measure: od_closed_actual_trdwk_ly {
    label: "Outbound Dial Closed Trading WK LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.OUTBOUND_DIAL_CLOSED;;
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

  measure: od_closed_fcast_trdwk {
    label: "Outbound Dial Closed Trading WK Forecast"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.OUTBOUND_DIAL_CLOSED;;
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

  measure: od_closed_actual_trdwk_vs_ly {
    label: "Outbound Dial Closed Trading WK VS LY %"
    group_label: "Interaction"
    type: number
    sql: (COALESCE(${od_closed_actual_trdwk},0) - COALESCE(${od_closed_actual_trdwk_ly},0))/NULLIF(${od_closed_actual_trdwk_ly},0)  ;;
    value_format_name: percent_2
  }

  measure: od_closed_actual_trdwk_vs_fcast {
    label: "Outbound Dial Closed Trading WK VS Forecast %"
    group_label: "Interaction"
    type: number
    sql: (COALESCE(${od_closed_actual_trdwk},0) - COALESCE(${od_closed_fcast_trdwk},0))/NULLIF(${od_closed_fcast_trdwk},0)  ;;
    value_format_name: percent_2
  }

  ### Financial YTD

  measure: od_closed_actual_fytd {
    label: "Outbound Dial Closed FYTD"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.OUTBOUND_DIAL_CLOSED ;;
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

  measure: od_closed_actual_fytd_ly {
    label: "Outbound Dial Closed FYTD LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.OUTBOUND_DIAL_CLOSED ;;
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

  measure: od_closed_actual_fytd_vs_ly {
    label: "Outbound Dial Closed FYTD VS LY %"
    group_label: "Interaction"
    type: number
    sql: (COALESCE(${od_closed_actual_fytd},0) - COALESCE(${od_closed_actual_fytd_ly},0))/NULLIF(${od_closed_actual_fytd_ly},0)  ;;
    value_format_name: percent_2
  }

  ### Trading YTD

  measure: od_closed_actual_trdytd {
    label: "Outbound Dial Closed Trading YTD"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.OUTBOUND_DIAL_CLOSED;;
    filters: {
      field: is_selected_trading_week_year
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_doy_trdy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  measure: od_closed_actual_trdytd_ly {
    label: "Outbound Dial Closed Trading YTD LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.OUTBOUND_DIAL_CLOSED;;
    filters: {
      field: is_selected_trading_week_year_ly
      value: "yes"
    }
    filters: {
      field: is_up_to_selected_doy_trdy
      value: "yes"
    }
    filters: {
      field: series_identifier
      value: "Actual"
    }
    value_format_name: decimal_0
  }

  ### Trading Year

  measure: od_closed_actual_trdy_ly {
    label: "Outbound Dial Closed Trading Year LY"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.OUTBOUND_DIAL_CLOSED;;
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

  measure: od_closed_fcast_trdy {
    label: "Outbound Dial Closed Trading Year Forecast"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.OUTBOUND_DIAL_CLOSED;;
    filters: {
      field: is_selected_trading_week_year
      value: "yes"
    }
    filters: {
      field: is_selected_forecast_series
      value: "Yes"
    }
    value_format_name: decimal_0
  }

  ##############################################################
  ### Outbound Dialled
  ##############################################################

  measure: od_dialled_actual_trdwk {
    label: "Outbound Dialled Trading WK"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.OUTBOUND_DIAL_DIALLED;;
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

  measure: od_dialled_fcast_trdwk {
    label: "Outbound Dialled Trading WK Forecast"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.OUTBOUND_DIAL_DIALLED;;
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

  measure: od_dialled_actual_trdwk_vs_fcast {
    label: "Outbound Dialled Trading WK VS Forecast %"
    group_label: "Interaction"
    type: number
    sql: (COALESCE(${od_dialled_actual_trdwk},0) - COALESCE(${od_dialled_fcast_trdwk},0))/NULLIF(${od_dialled_fcast_trdwk},0)  ;;
    value_format_name: percent_2
  }

  ##############################################################
  ### Outbound Dial New Lead
  ##############################################################

  measure: od_new_lead_actual_trdwk {
    label: "Outbound Dial New Lead Trading WK"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.OUTBOUND_DIAL_NEW_LEAD;;
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

  measure: od_new_lead_fcast_trdwk {
    label: "Outbound Dial New Lead Trading WK Forecast"
    group_label: "Interaction"
    type: sum
    sql: ${TABLE}.OUTBOUND_DIAL_NEW_LEAD;;
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

  measure: od_new_lead_actual_trdwk_vs_fcast {
    label: "Outbound Dial New Lead Trading WK VS Forecast %"
    group_label: "Interaction"
    type: number
    sql: (COALESCE(${od_new_lead_actual_trdwk},0) - COALESCE(${od_new_lead_fcast_trdwk},0))/NULLIF(${od_new_lead_fcast_trdwk},0)  ;;
    value_format_name: percent_2
  }

  ##############################################################
  ### Outbound Dial Conversion Rate
  ##############################################################

  measure: od_cr {
    label: "Outbound Dial Conversion Rate"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${volume},0) / NULLIF(${od_closed},0),0);;
    value_format_name: percent_2
  }

  ### Trading Week

  measure: od_cr_actual_trdwk {
    label: "Outbound Dial Conversion Rate Trading WK"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${volume_actual_trdwk},0) / NULLIF(${od_closed_actual_trdwk},0),0);;
    value_format_name: percent_2
  }

  measure: od_cr_actual_trdwk_ly {
    label: "Outbound Dial Conversion Rate Trading WK LY"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${volume_actual_trdwk_ly},0) / NULLIF(${od_closed_actual_trdwk_ly},0),0);;
    value_format_name: percent_2
  }

  measure: od_cr_fcast_trdwk {
    label: "Outbound Dial Conversion Rate Trading WK Forecast"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${volume_fcast_trdwk},0) / NULLIF(${od_closed_fcast_trdwk},0),0);;
    value_format_name: gbp
  }

  measure: od_cr_actual_trdwk_vs_ly {
    label: "Outbound Dial Conversion Rate Trading WK VS LY %"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE((COALESCE(${od_cr_actual_trdwk},0) - COALESCE(${od_cr_actual_trdwk_ly},0))/NULLIF(${od_cr_actual_trdwk_ly},0),0)  ;;
    value_format_name: percent_2
  }

  measure: od_cr_actual_trdwk_vs_fcast {
    label: "Outbound Dial Conversion Rate Trading WK VS Forecast %"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE((COALESCE(${od_cr_actual_trdwk},0) - COALESCE(${od_cr_fcast_trdwk},0))/NULLIF(${od_cr_fcast_trdwk},0),0)  ;;
    value_format_name: percent_2
  }


  ### Financial YTD

  measure: od_cr_actual_fytd {
    label: "Outbound Dial Conversion Rate FYTD"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${volume_actual_fytd},0) / NULLIF(${od_closed_actual_fytd},0),0);;
    value_format_name: percent_2
  }

  measure: od_cr_actual_fytd_ly {
    label: "Outbound Dial Conversion Rate FYTD LY"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${volume_actual_fytd_ly},0) / NULLIF(${od_closed_actual_fytd_ly},0),0);;
    value_format_name: percent_2
  }

  measure: od_cr_actual_fytd_vs_ly {
    label: "Outbound Dial Conversion Rate FYTD VS LY %"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE((COALESCE(${od_cr_actual_fytd},0) - COALESCE(${od_cr_actual_fytd_ly},0))/NULLIF(${od_cr_actual_fytd_ly},0),0)  ;;
    value_format_name: percent_2
  }

  ### Trading YTD

  measure: od_cr_actual_trdytd {
    label: "Outbound Dial Conversion Rate Trading YTD"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${volume_actual_trdytd},0) / NULLIF(${od_closed_actual_trdytd},0),0);;
    value_format_name: percent_2
  }

  measure: od_cr_actual_trdytd_ly {
    label: "Outbound Dial Conversion Rate Trading YTD LY"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${volume_actual_trdytd_ly},0) / NULLIF(${od_closed_actual_trdytd_ly},0),0);;
    value_format_name: percent_2
  }

  ### Trading Year

  measure: od_cr_actual_trdy_ly {
    label: "Outbound Dial Conversion Rate Trading Year LY"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${volume_actual_trdy_ly},0) / NULLIF(${od_closed_actual_trdy_ly},0),0);;
    value_format_name: percent_2
  }

  measure: od_cr_fcast_trdy {
    label: "Outbound Dial Conversion Rate Trading Year Forecast"
    group_label: "Conversion Rate"
    type: number
    sql: COALESCE(COALESCE(${volume_fcast_trdy},0) / NULLIF(${od_closed_fcast_trdy},0),0);;
    value_format_name: percent_2
  }


}
