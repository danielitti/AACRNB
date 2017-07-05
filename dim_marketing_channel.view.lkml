view: marketing_channel {
  derived_table: {
    sql: SELECT SC.SOURCE_CODE_KEY
    ,  SC.SOURCE_CODE AS MARKETING_CHANNEL_SOURCE_CODE
    ,  SC.SOURCE_CODE_DESC AS MKTING_CHANNEL_SRC_CODE_DESC
    ,  SC.IS_ACTIVE AS MKTING_CHANNEL_SRC_CODE_ACTIVE
    ,  LVL2.MARKETING_CHANNEL_KEY AS MARKETING_CHANNEL_L2_KEY
    ,  LVL2.MARKETING_CHANNEL_LEVEL
    ,  LVL2.MARKETING_CHANNEL_DESC AS L2_MARKETING_CHANNEL_DESC
    ,  LVL2.MARKETING_CHANNEL_FULL_DESC AS L2_MARKETING_CHANNEL_FULL_DESC
    ,  LVL1.L1_MARKETING_CHANNEL_DESC
    ,  LVL1.L1_MARKETING_CHANNEL_FULL_DESC
FROM  (SELECT * FROM SHARED_MRT.DIM_SOURCE_CODE) SC
  LEFT JOIN
      (SELECT * FROM SHARED_MRT.DIM_MARKETING_CHANNEL WHERE MARKETING_CHANNEL_LEVEL  IN ('0', '2')) LVL2
   ON SC.MARKETING_CHANNEL_KEY = LVL2.MARKETING_CHANNEL_KEY
    LEFT JOIN
    (SELECT PARENT_MARKETING_CHANNEL_KEY, MARKETING_CHANNEL_KEY, MARKETING_CHANNEL_DESC AS L1_MARKETING_CHANNEL_DESC , MARKETING_CHANNEL_FULL_DESC AS L1_MARKETING_CHANNEL_FULL_DESC
    FROM SHARED_MRT.DIM_MARKETING_CHANNEL WHERE MARKETING_CHANNEL_LEVEL IN ('1' ,'0')) LVL1
    ON NVL(LVL2.PARENT_MARKETING_CHANNEL_KEY, LVL2.MARKETING_CHANNEL_KEY)  = LVL1.MARKETING_CHANNEL_KEY
ORDER BY 1            ;;
  }

  dimension: source_code_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_CODE_KEY ;;
  }

  dimension: marketing_channel_level_2_key {
    hidden: yes
    type: string
    sql: ${TABLE}.MARKETING_CHANNEL_L2_KEY ;;
  }

  dimension: marketing_channel_source_code {
    label: "Marketing Channel Source Code"
    group_label: "Marketing Channel Source Code"
    hidden: yes
    type: string
    sql: ${TABLE}.MARKETING_CHANNEL_SOURCE_CODE;;
  }

  dimension: marketing_channel_source_code_desc {
    label: "Marketing Channel Source Code Desc"
    group_label: "Marketing Channel Source Code"
    hidden: yes
    type: string
    sql: ${TABLE}.MKTING_CHANNEL_SRC_CODE_DESC;;
  }

  dimension: marketing_channel_source_code_active {
    label: "Marketing Channel Source Code Active"
    group_label: "Marketing Channel Source Code"
    hidden: yes
    type: string
    sql: ${TABLE}.MKTING_CHANNEL_SRC_CODE_ACTIVE;;
  }


  dimension: marketing_channel_level {
    label: "Marketing Channel Level"
    type: string
    sql: ${TABLE}.MARKETING_CHANNEL_LEVEL ;;
  }

  dimension: marketing_channel_lvl1_desc {
    label: "Marketing Channel Lvl 1 Desc"
    group_label: "Marketing Channel Lvl 1"
    type: string
    sql: ${TABLE}.L1_MARKETING_CHANNEL_DESC ;;
  }

  dimension: marketing_channel_lvl1_full_desc {
    label: "Marketing Channel Lvl 1 Full Desc"
    group_label: "Marketing Channel Lvl 1"
    type: string
    sql: ${TABLE}.L1_MARKETING_CHANNEL_FULL_DESC ;;
  }


  dimension: marketing_channel_lvl2_desc {
    label: "Marketing Channel Lvl 2 Desc"
    group_label: "Marketing Channel Lvl 2"
    type: string
    sql: ${TABLE}.L2_MARKETING_CHANNEL_DESC ;;
  }

  dimension: marketing_channel_lvl2_full_desc {
    label: "Marketing Channel Lvl 2 Full Desc"
    group_label: "Marketing Channel Lvl 2"
    type: string
    sql: ${TABLE}.L2_MARKETING_CHANNEL_FULL_DESC ;;
  }

}
