view: date_filter {
  derived_table: {
    sql: SELECT   DATE_KEY,
                    DATE_DTTM,
                    TRADING_WEEK_NUMBER,
                    TRADING_DAY_NUMBER_OF_WEEK,
                    TRADING_YEAR,
                    TRADING_YEAR-1 AS TRADING_YEAR_LY,
                    FINANCIAL_YEAR,
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

  dimension: day_month {
    hidden: yes
    type: string
    sql: ${TABLE}.DATE_DD_MON ;;
  }

  dimension: month_day {
    hidden: yes
    type: string
    sql: ${TABLE}.DATE_MM_DD ;;
  }

  dimension: trdwk_number {
    hidden: yes
    type: string
    sql: ${TABLE}.TRADING_WEEK_NUMBER ;;
  }

  dimension: trdwk_name {
    hidden: yes
    type: string
    sql: ${TABLE}.TRADING_WEEK_NAME ;;
  }

  dimension: trdwk_day_number {
    hidden: yes
    type: string
    sql: ${TABLE}.TRADING_DAY_NUMBER_OF_WEEK ;;
  }

  dimension: trdwk_year {
    hidden: yes
    type: string
    sql: ${TABLE}.TRADING_YEAR ;;
  }

  dimension: financial_year {
    hidden: yes
    type: string
    sql: ${TABLE}.FINANCIAL_YEAR ;;
  }

  dimension: financial_year_name {
    hidden: yes
    type: string
    sql: ${TABLE}.FINANCIAL_YEAR_NAME ;;
  }

#   dimension: financial_week_number{
#     hidden: yes
#     type: string
#     sql: ${TABLE}.FINANCIAL_WEEK_NUMBER ;;
#   }
#
#   dimension: financial_week_yyyyww {
#     hidden: yes
#     type: string
#     sql: ${TABLE}.FINANCIAL_WEEK_YYYYWW ;;
#   }

  dimension: financial_day_n_of_year {
    hidden: yes
    type: string
    sql: ${TABLE}.FINANCIAL_DAY_NUMBER_OF_YEAR ;;
  }

}
