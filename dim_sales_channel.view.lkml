view: sales_channel {
  sql_table_name: {{_user_attributes["commercial_road_new_business_schema_name"]}}.DIM_SALES_CHANNEL_LEVEL_2 ;;

  dimension: trans_sales_channel_level2_key {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.SALES_CHANNEL_LEVEL_2_KEY ;;
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
    sql: ${TABLE}.SALES_CHANNEL_LEVEL_1_DESC ;;
  }

  dimension: sales_channel_lvl1_full_desc {
    label: "Sales Channel Lvl 1 Full Desc"
    group_label: "Sales Channel Lvl 1"
    type: string
    sql: ${TABLE}.SALES_CHANNEL_LEVEL1_FULL_DESC ;;
  }

  dimension: sales_channel_lvl2_desc {
    label: "Sales Channel Lvl 2 Desc"
    group_label: "Sales Channel Lvl 2"
    type: string
    sql: ${TABLE}.SALES_CHANNEL_LEVEL_2_DESC ;;
  }

  dimension: sales_channel_lvl2_full_desc {
    label: "Sales Channel Lvl 2 Full Desc"
    group_label: "Sales Channel Lvl 2"
    type: string
    sql: ${TABLE}.SALES_CHANNEL_LEVEL2_FULL_DESC ;;
  }

}
