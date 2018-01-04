view: membership_type {
  sql_table_name: {{_user_attributes["commercial_road_new_business_schema_name"]}}.DIM_MEMBERSHIP_TYPE_LEVEL_2 ;;

  dimension: membership_type_level_2_key {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.MEMBERSHIP_TYPE_LEVEL_2_KEY ;;
  }

  dimension: membership_type_level {
    label: "Membership Type Level"
    type: string
    sql: ${TABLE}.MEMBERSHIP_TYPE_LEVEL ;;
  }

  dimension: membership_type_lvl1_desc {
    label: "Membership Type Lvl 1 Desc"
    group_label: "Membership Type Lvl 1"
    type: string
    sql: ${TABLE}.MEMBERSHIP_TYPE_LEVEL_1_DESC ;;
  }

  dimension: membership_type_lvl1_full_desc {
    label: "Membership Type Lvl 1 Full Desc"
    group_label: "Membership Type Lvl 1"
    type: string
    sql: ${TABLE}.MEMBERSHIP_TYPE_L1_FULL_DESC ;;
  }


  dimension: membership_type_lvl2_desc {
    label: "Membership Type Lvl 2 Desc"
    group_label: "Membership Type Lvl 2"
    type: string
    sql: ${TABLE}.MEMBERSHIP_TYPE_LEVEL_2_DESC ;;
  }

  dimension: membership_type_lvl2_full_desc {
    label: "Membership Type Lvl 2 Full Desc"
    group_label: "Membership Type Lvl 2"
    type: string
    sql: ${TABLE}.MEMBERSHIP_TYPE_L2_FULL_DESC ;;
  }

}
