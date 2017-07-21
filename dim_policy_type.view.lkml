view: policy_type {
  sql_table_name: SHARED_MRT.DIM_POLICY_TYPE_LEVEL_2 ;;

  dimension: policy_type_level_2_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.POLICY_TYPE_LEVEL_2_KEY ;;
  }

  dimension: policy_type_level {
    label: "Policy Type Level"
    type: string
    sql: ${TABLE}.POLICY_TYPE_LEVEL ;;
  }

  dimension: policy_type_lvl1_desc {
    label: "Policy Type Lvl 1 Desc"
    group_label: "Policy Type Lvl 1"
    type: string
    sql: ${TABLE}.POLICY_TYPE_LEVEL_1_DESC ;;
  }

  dimension: policy_type_lvl1_full_desc {
    label: "Policy Type Lvl 1 Full Desc"
    group_label: "Policy Type Lvl 1"
    type: string
    sql: ${TABLE}.POLICY_TYPE_LEVEL_1_FULL_DESC ;;
  }

  dimension: policy_type_lvl2_desc {
    label: "Policy Type Lvl 2 Desc"
    group_label: "Policy Type Lvl 2"
    type: string
    sql: ${TABLE}.POLICY_TYPE_LEVEL_2_DESC ;;
  }

  dimension: policy_type_lvl2_full_desc {
    label: "Policy Type Lvl 2 Full Desc"
    group_label: "Policy Type Lvl 2"
    type: string
    sql: ${TABLE}.POLICY_TYPE_LEVEL_2_FULL_DESC ;;
  }

}
