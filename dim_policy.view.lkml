view: policy {
  derived_table: {
    sql:  SELECT  POLICY_KEY, MAX(POLICY_CUSTOMER_ID) AS POLICY_CUSTOMER_ID
          FROM    {{_user_attributes["commercial_road_new_business_schema_name"]}}.FACT_POLICY_SNP
          GROUP   BY POLICY_KEY ;;
  }

  dimension: policy_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.POLICY_KEY ;;
  }

  dimension: policy_customer_id {
    label: "Policy Number"
    type: string
    sql: ${TABLE}.POLICY_CUSTOMER_ID ;;
  }
}
