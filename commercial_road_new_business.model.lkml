connection: "tcid"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: new_business_sale {
  join: policy_type {
    type: inner
    sql_on: ${new_business_sale.policy_type_level_2_key} = ${policy_type.policy_type_level_2_key} ;;
    relationship: many_to_one
  }
  join: channel {
    type: inner
    sql_on: ${new_business_sale.trans_sales_channel_level_2_key} = ${channel.trans_sales_channel_level2_key} ;;
    relationship: many_to_one
  }
}



# - explore: dim_call_type

# - explore: dim_contract_and_recurrence

# - explore: dim_contract_type

# - explore: dim_customer_type

# - explore: dim_date

# - explore: dim_device_type

# - explore: dim_digital_visit_type

# - explore: dim_lead_code

# - explore: dim_lead_group

# - explore: dim_marketing_channel

# - explore: dim_membership_type

# - explore: dim_package

# - explore: dim_payment_method

# - explore: dim_policy_line

# - explore: dim_policy_type

# - explore: dim_recurrence_pattern

# - explore: dim_sales_channel

# - explore: dim_source_code

# - explore: dim_source_system

# - explore: dim_staff

# - explore: dim_time

# - explore: dim_transaction_type

# - explore: fact_interaction_digital_visit

# - explore: fact_interaction_inbound_call

# - explore: fact_interaction_inbound_dial

# - explore: fact_interaction_outbound_dial

# - explore: fact_policy_snp

# - explore: fact_policy_transaction

# - explore: fact_policy_transaction_line

# - explore: fact_staffing
