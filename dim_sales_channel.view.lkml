view: sales_channel {
  derived_table: {
    sql: SELECT LVL2.SALES_CHANNEL_KEY AS TRANS_SALES_CHANNEL_LEVEL2_KEY,
    LVL2.SALES_CHANNEL_LEVEL,
    LVL2.SALES_CHANNEL_DESC AS LVL_2_SALES_CHANNEL_DESC,
    LVL2.SALES_CHANNEL_FULL_DESC AS LVL_2_SALES_CHANNEL_FULL_DESC,
    LVL1.LVL_1_SALES_CHANNEL_DESC,
    LVL1.LVL_1_SALES_CHANNEL_FULL_DESC
    FROM  (SELECT * FROM SHARED_MRT_UAT7.DIM_SALES_CHANNEL WHERE SALES_CHANNEL_LEVEL  IN ('0', '2')) LVL2
    LEFT JOIN
    (SELECT PARENT_SALES_CHANNEL_KEY, SALES_CHANNEL_KEY, SALES_CHANNEL_DESC AS LVL_1_SALES_CHANNEL_DESC , SALES_CHANNEL_FULL_DESC AS LVL_1_SALES_CHANNEL_FULL_DESC FROM SHARED_MRT_UAT7.DIM_SALES_CHANNEL WHERE SALES_CHANNEL_LEVEL IN ('1' ,'0')) LVL1
    ON NVL(LVL2.PARENT_SALES_CHANNEL_KEY, LVL2.SALES_CHANNEL_KEY)  = LVL1.SALES_CHANNEL_KEY
    ;;
  }

  dimension: trans_sales_channel_level2_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.TRANS_SALES_CHANNEL_LEVEL2_KEY ;;
  }

  dimension: channel_level {
    label: "Sales Channel Level"
    type: string
    sql: ${TABLE}.SALES_CHANNEL_LEVEL ;;
  }

  dimension: sales_channel_lvl1_desc {
    label: "Sales Channel Lvl 1 Desc"
    group_label: "Sales Channel Lvl 1"
    type: string
    sql: ${TABLE}.LVL_1_SALES_CHANNEL_DESC ;;
  }

  dimension: sales_channel_lvl1_full_desc {
    label: "Sales Channel Lvl 1 Full Desc"
    group_label: "Sales Channel Lvl 1"
    type: string
    sql: ${TABLE}.LVL_1_SALES_CHANNEL_FULL_DESC ;;
  }

  dimension: sales_channel_lvl2_desc {
    label: "Sales Channel Lvl 2 Desc"
    group_label: "Sales Channel Lvl 2"
    type: string
    sql: ${TABLE}.LVL_2_SALES_CHANNEL_DESC ;;
  }

  dimension: sales_channel_lvl2_full_desc {
    label: "Sales Channel Lvl 2 Full Desc"
    group_label: "Sales Channel Lvl 2"
    type: string
    sql: ${TABLE}.LVL_2_SALES_CHANNEL_FULL_DESC ;;
  }

}
