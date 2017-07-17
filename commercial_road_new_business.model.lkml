connection: "hawking_presentation"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

# test comment 20170717
# comment 20170717_1543

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
  join: product_package {
    type: inner
    sql_on: ${new_business_sale.product_package_level_2_key} = ${product_package.product_pkg_level_2_key} ;;
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
  join: device_type {
    type: inner
    sql_on: ${new_business_sale.device_type_key} = ${device_type.device_type_key} ;;
    relationship: many_to_one
  }
  join: interaction_digital_visit {
    type: full_outer
    sql_on: ${new_business_sale.date_key} = ${interaction_digital_visit.date_key}
            AND ${new_business_sale.policy_type_level_2_key} = ${interaction_digital_visit.policy_type_level_2_key}
            AND ${new_business_sale.device_type_key} = ${interaction_digital_visit.device_type_key}
            AND ${marketing_channel.marketing_channel_level_2_key} = ${interaction_digital_visit.marketing_channel_level_2_key}
            ;;
    relationship: many_to_one
  }
  join:  date_filter {
    type: cross
    relationship: many_to_one
  }
}
