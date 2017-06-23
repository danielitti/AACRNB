######################################################################
### To update complitely
######################################################################
view: channel {
  derived_table: {
    sql:
          SELECT lvl2.*, lvl1.lvl1, lvl1.full_lvl1
          FROM (SELECT * FROM SHARED_MRT_UAT7.DIM_SALES_CHANNEL WHERE sales_channel_level IN ('0', '2')) lvl2
          LEFT JOIN
                (SELECT sales_channel_key, sales_channel_desc as lvl1 , sales_channel_full_desc
                as full_lvl1 FROM SHARED_MRT_UAT7.DIM_SALES_CHANNEL WHERE sales_channel_level in ('1' ,'0')) lvl1
          ON NVL(lvl2.parent_sales_channel_key , lvl2.sales_channel_key) = lvl1.sales_channel_key
        ;;
  }

  dimension: trans_sales_channel_level2_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.SALES_CHANNEL_KEY ;;
  }

  dimension: channel_level {
    type: string
    sql: ${TABLE}.SALES_CHANNEL_LEVEL ;;
  }

  dimension: channel_desc_lvl2 {
    group_label: "Channel Description"
    label: "Level 2 Channel Description"
    type: string
    sql: ${TABLE}.SALES_CHANNEL_DESC ;;
  }

  dimension: channel_desc_lvl1 {
    group_label: "Channel Description"
    label: "Level 1 Channel Description"
    type: string
    sql: ${TABLE}.lvl1 ;;
  }

  dimension: level_2_channel_full_desc {
    group_label: "Channel Full Description"
    label: "Level 2 Channel Full Description"
    type: string
    sql: ${TABLE}.SALES_CHANNEL_FULL_DESC ;;
  }

  dimension: channel_full_desc_lvl1 {
    group_label: "Channel Full Description"
    label: "Level 1 Channel Full Description"
    type: string
    sql: ${TABLE}.full_lvl1 ;;
  }

}
