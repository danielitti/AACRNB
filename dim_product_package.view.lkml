view: product_package {
  sql_table_name: SHARED_MRT.DIM_PACKAGE_LEVEL_2 ;;

  dimension: product_pkg_level_2_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.PACKAGE_LEVEL_2_KEY ;;
  }

  dimension: product_pkg_level {
    label: "Product Package Level"
    type: string
    sql: ${TABLE}.PACKAGE_LEVEL ;;
  }

  dimension: product_pkg_lvl1_desc {
    label: "Product Package Lvl 1 Desc"
    group_label: "Product Package Lvl 1"
    type: string
    sql: ${TABLE}.PACKAGE_LEVEL_1_DESC ;;
  }

  dimension: product_pkg_lvl1_full_desc {
    label: "Product Package Lvl 1 Full Desc"
    group_label: "Product Package Lvl 1"
    type: string
    sql: ${TABLE}.PACKAGE_LEVEL_1_FULL_DESC ;;
  }

  dimension: product_pkg_lvl2_desc {
    label: "Product Package Lvl 2 Desc"
    group_label: "Product Package Lvl 2"
    type: string
    sql: ${TABLE}.PACKAGE_LEVEL_2_DESC ;;
  }

  dimension: product_pkg_lvl2_full_desc {
    label: "Product Package Lvl 2 Full Desc"
    group_label: "Product Package Lvl 2"
    type: string
    sql: ${TABLE}.PACKAGE_LEVEL_2_FULL_DESC ;;
  }

}
