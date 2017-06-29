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
  join: sales_channel {
    type: inner
    sql_on: ${new_business_sale.trans_sales_channel_level_2_key} = ${sales_channel.trans_sales_channel_level2_key} ;;
    relationship: many_to_one
  }
  join: package {
    type: inner
    sql_on: ${new_business_sale.product_package_level_2_key} = ${package.package_level_2_key} ;;
    relationship: many_to_one
  }
  join: contract_and_reccurence {
    type: inner
    sql_on: ${new_business_sale.contract_and_reccurence_key} = ${contract_and_reccurence.contract_and_reccurence_key} ;;
    relationship: many_to_one
  }
  join: marketing_channel {
    type: inner
    sql_on: ${new_business_sale.source_code_key} = ${marketing_channel.source_code_key} ;;
    relationship: many_to_one
  }
  # join: date {
  #   type: full_outer
  #   sql_on: ${new_business_sale.date_key} = ${date.date_date} ;;
  #   relationship: many_to_one
  # }
  join:  date_filter {
    type: cross
    relationship: many_to_one
  }
}
