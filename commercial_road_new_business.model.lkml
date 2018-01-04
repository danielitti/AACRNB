connection: "hawking_presentation"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: new_business_sale_datagroup {
  sql_trigger: SELECT max(bs.date_key) FROM consumer_road.FACT_NEW_BUSINESS_SALE bs inner join consumer_road.DIM_DATE d on bs.date_key = d.date_key WHERE d.date_dttm <= convert(datetime,convert(date,dateadd(hh,-8,getdate()))) and calendar_day_name = 'Thursday';;
  # minus 8 hour because we imply the ETL finishes at 8 am
  max_cache_age: "168 hours" # 7 days
}

explore: new_business_sale {
  persist_with: new_business_sale_datagroup
  always_filter: {
    filters: {
      field: date_filter_parameter
      value: "null"
    }
    filters: {
      field: forecast_series_filter_parameter
      value: "FY 2018 Q3F"
    }
    filters: {
      field: accounting_treatmenr
      value: "Transacted"
    }
    filters: {
      field: policy_type.policy_type_lvl2_full_desc
      value: "Paid"
    }
  }
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
  join: add_on {
    type: inner
    sql_on: ${new_business_sale.addon_package_level_1_key} = ${add_on.addon_package_level_1_key} ;;
    relationship: many_to_one
  }
  join: contract_and_reccurence {
    type: inner
    sql_on: ${new_business_sale.contract_and_reccurence_key} = ${contract_and_reccurence.contract_and_reccurence_key} ;;
    relationship: many_to_one
  }
  join: marketing_channel {
    type: inner
    sql_on: ${new_business_sale.adjusted_mkt_chan_level_2_key} = ${marketing_channel.marketing_channel_level_2_key} ;;
    relationship: many_to_one
  }
  join: device_type {
    type: inner
    sql_on: ${new_business_sale.device_type_key} = ${device_type.device_type_key} ;;
    relationship: many_to_one
  }
  join: membership_type {
    type: inner
    sql_on: ${new_business_sale.membership_type_level_2_key} = ${membership_type.membership_type_level_2_key} ;;
    relationship: many_to_one
  }
  join: staff {
    type: inner
    sql_on: ${new_business_sale.staff_key} = ${staff.staff_key} ;;
    relationship: many_to_one
  }
  join: fst_staff {
    type: inner
    sql_on: ${new_business_sale.fst_staff_key} = ${fst_staff.staff_key} ;;
    relationship: many_to_one
  }
  join: policy {
    type: inner
    sql_on: ${new_business_sale.policy_key} = ${policy.policy_key} ;;
    relationship: many_to_one
  }
  join: manufacturer {
    type: inner
    sql_on: ${new_business_sale.manufacturer_key} = ${manufacturer.manufacturer_key} ;;
    relationship: many_to_one
  }
  join: call_type {
    type: inner
    sql_on: ${new_business_sale.call_type_key} = ${call_type.call_type_key} ;;
    relationship: many_to_one
  }
  join:  date_filter {
    type: cross
    relationship: many_to_one
  }
}
