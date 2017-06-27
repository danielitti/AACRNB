view: contract_and_reccurence {
  derived_table: {
    sql:  SELECT CONTRACT_AND_RECURRENCE_KEY, CONTRACT_AND_RECURRENCE_DESC FROM SHARED_MRT_UAT7.DIM_CONTRACT_AND_RECURRENCE;;
  }

  dimension: contract_and_reccurence_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.CONTRACT_AND_RECURRENCE_KEY ;;
  }

  dimension: contract_and_reccurence_desc {
    label: "Contract and Recurrence Desc"
    group_label: "Contract and Recurrence"
    type: string
    sql: ${TABLE}.CONTRACT_AND_RECURRENCE_DESC ;;
  }

}
