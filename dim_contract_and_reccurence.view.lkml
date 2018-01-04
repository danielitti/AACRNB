view: contract_and_reccurence {
  derived_table: {
    sql:  SELECT CONTRACT_AND_RECURRENCE_KEY, CONTRACT_AND_RECURRENCE_DESC FROM {{_user_attributes["commercial_road_new_business_schema_name"]}}.DIM_CONTRACT_AND_RECURRENCE;;
  }

  dimension: contract_and_reccurence_key {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.CONTRACT_AND_RECURRENCE_KEY ;;
  }

  dimension: contract_and_reccurence_desc {
    label: "Contract and Recurrence Desc"
    group_label: "Contract and Recurrence"
    type: string
    sql: ${TABLE}.CONTRACT_AND_RECURRENCE_DESC ;;
  }

}
