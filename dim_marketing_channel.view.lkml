view: marketing_channel {
  derived_table: {
    sql: SELECT LVL2.MARKETING_CHANNEL_KEY AS MARKETING_CHANNEL_L2_KEY
                ,  LVL2.MARKETING_CHANNEL_LEVEL
                ,  LVL2.MARKETING_CHANNEL_DESC AS MARKETING_CHANNEL_LEVEL_2_DESC
                ,  LVL2.MARKETING_CHANNEL_FULL_DESC AS MARKETING_CHANNEL_L2_FULL_DESC
                ,  LVL1.L1_MARKETING_CHANNEL_DESC as MARKETING_CHANNEL_LEVEL_1_DESC
                ,  LVL1.L1_MARKETING_CHANNEL_FULL_DESC as MARKETING_CHANNEL_L1_FULL_DESC
            FROM  (SELECT * FROM {{_user_attributes["commercial_road_new_business_schema_name"]}}.DIM_MARKETING_CHANNEL WHERE MARKETING_CHANNEL_LEVEL  IN ('0', '2')) LVL2
            LEFT JOIN
                (SELECT PARENT_MARKETING_CHANNEL_KEY, MARKETING_CHANNEL_KEY, MARKETING_CHANNEL_DESC AS L1_MARKETING_CHANNEL_DESC , MARKETING_CHANNEL_FULL_DESC AS L1_MARKETING_CHANNEL_FULL_DESC
                FROM {{_user_attributes["commercial_road_new_business_schema_name"]}}.DIM_MARKETING_CHANNEL WHERE MARKETING_CHANNEL_LEVEL IN ('1' ,'0')) LVL1
                ON NVL(LVL2.PARENT_MARKETING_CHANNEL_KEY, LVL2.MARKETING_CHANNEL_KEY)  = LVL1.MARKETING_CHANNEL_KEY
             ;;

    }

    dimension: marketing_channel_level_2_key {
      primary_key: yes
      hidden: yes
      type: string
      sql: ${TABLE}.MARKETING_CHANNEL_L2_KEY ;;
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
