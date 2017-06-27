view: date {
  derived_table: {
    sql: SELECT DATE_KEY,
                  DATE_DTTM,
                  TO_CHAR(date_dttm, 'DD-MON') as DATE_DD_MON,
                  TO_CHAR(date_dttm, 'MMDD') as DATE_MM_DD,
                  FINANCIAL_WEEK_NUMBER as TRADING_WEEK_NUMBER,
                  FINANCIAL_WEEK_NAME as TRADING_WEEK_NAME,
                  CALENDAR_DAY_NUMBER_OF_WEEK as TRADING_DAY_NUMBER_OF_WEEK,
                  FINANCIAL_YEAR AS TRADING_YEAR,
                  FINANCIAL_WEEK_NUMBER,
                  FINANCIAL_WEEK_YYYYWW,
                  FINANCIAL_YEAR,
                  FINANCIAL_YEAR_NAME,
                  CALENDAR_DAY_NUMBER_OF_YEAR AS FINANCIAL_DAY_NUMBER_OF_YEAR
            FROM  SHARED_MRT_UAT7.DIM_DATE
            ;;
    }

    dimension: date_key {
      primary_key: yes
      hidden: yes
      type: string
      sql: ${TABLE}.DATE_KEY ;;
    }

    dimension_group: date {
      #hidden: yes
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

    dimension: financial_week_number{
      hidden: yes
      type: string
      sql: ${TABLE}.FINANCIAL_WEEK_NUMBER ;;
    }

    dimension: financial_week_yyyyww {
      hidden: yes
      type: string
      sql: ${TABLE}.FINANCIAL_WEEK_YYYYWW ;;
    }

    dimension: financial_day_n_of_year {
      hidden: yes
      type: string
      sql: ${TABLE}.FINANCIAL_DAY_NUMBER_OF_YEAR ;;
    }

  }
