view: date_filter {
  derived_table: {
    sql: SELECT   DATE_KEY,
                  DATE_DTTM,
                  TRADING_WEEK_NUMBER,
                  TRADING_DAY_NUMBER_OF_WEEK,
                  TRADING_YEAR,
                  TRADING_YEAR-1 AS TRADING_YEAR_LY,
                  FINANCIAL_YEAR,
                  FINANCIAL_YEAR-1 AS FINANCIAL_YEAR_LY,
                  FINANCIAL_DAY_OF_YEAR
          FROM  SHARED_MRT_UAT7.DIM_DATE
          WHERE {% condition new_business_sale.date_filter_parameter %} TO_CHAR(DATE_DTTM, 'yyyy-mm-dd') {% endcondition %}
            ;;
  }

  dimension: date_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.DATE_KEY ;;
  }

  dimension_group: date {
    hidden: yes
    type: time
    timeframes: [date, week, month, raw]
    convert_tz: no
    sql: ${TABLE}.DATE_DTTM ;;
  }

  dimension: trdwk_number {
    hidden: yes
    type: string
    sql: ${TABLE}.TRADING_WEEK_NUMBER ;;
  }

  dimension: trdwk_day_number_of_week {
    hidden: yes
    type: string
    sql: ${TABLE}.TRADING_DAY_NUMBER_OF_WEEK ;;
  }

  dimension: trdwk_year {
    hidden: yes
    type: string
    sql: ${TABLE}.TRADING_YEAR ;;
  }

  dimension: trdwk_year_ly {
    hidden: yes
    type: string
    sql: ${TABLE}.TRADING_YEAR_LY ;;
  }

  dimension: financial_year {
    hidden: yes
    type: string
    sql: ${TABLE}.FINANCIAL_YEAR ;;
  }

  dimension: financial_year_ly {
    hidden: yes
    type: string
    sql: ${TABLE}.FINANCIAL_YEAR_LY ;;
  }

  dimension: financial_day_of_year {
    hidden: yes
    type: string
    sql: ${TABLE}.FINANCIAL_DAY_OF_YEAR ;;
  }

}
