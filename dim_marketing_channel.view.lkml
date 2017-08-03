view: marketing_channel {
  sql_table_name: {{_user_attributes["commercial_road_new_business_schema_name"]}}.DIM_MARKETING_SOURCE ;;

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
    type: string
    sql: ${TABLE}.SOURCE_CODE;;
  }

  dimension: marketing_channel_source_code_desc {
    label: "Marketing Channel Source Code Desc"
    group_label: "Marketing Channel Source Code"
    type: string
    sql: ${TABLE}.SOURCE_CODE_DESC;;
  }

  dimension: marketing_channel_source_code_active {
    label: "Marketing Channel Source Code Active"
    group_label: "Marketing Channel Source Code"
    hidden: yes
    type: string
    sql: ${TABLE}.IS_ACTIVE;;
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
    sql: ${TABLE}.MARKETING_CHANNEL_LEVEL_1_DESC ;;
  }

  dimension: marketing_channel_lvl1_full_desc {
    label: "Marketing Channel Lvl 1 Full Desc"
    group_label: "Marketing Channel Lvl 1"
    type: string
    sql: ${TABLE}.MARKETING_CHANNEL_L1_FULL_DESC ;;
  }


  dimension: marketing_channel_lvl2_desc {
    label: "Marketing Channel Lvl 2 Desc"
    group_label: "Marketing Channel Lvl 2"
    type: string
    sql: ${TABLE}.MARKETING_CHANNEL_LEVEL_2_DESC ;;
  }

  dimension: marketing_channel_lvl2_full_desc {
    label: "Marketing Channel Lvl 2 Full Desc"
    group_label: "Marketing Channel Lvl 2"
    type: string
    sql: ${TABLE}.MARKETING_CHANNEL_L2_FULL_DESC ;;
  }

}
