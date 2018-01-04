view: add_on {
  derived_table: {
    sql:  SELECT  package_key as addon_package_level_1_key,
                  package_desc as ADD_ON_LEVEL_1_DESC,
                  package_full_desc as ADD_ON_LEVEL_1_FULL_DESC
          FROM    {{_user_attributes["commercial_road_new_business_schema_name"]}}.DIM_PACKAGE
          WHERE   package_type = 'Add-on' or package_key in (0, -1);;
  }

  dimension: addon_package_level_1_key {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.addon_package_level_1_key ;;
  }

  dimension: add_on_lvl_1_desc {
    group_label: "Add-On Lvl 1"
    label: "Add-On Lvl 1 Desc"
    type: string
    sql: ${TABLE}.ADD_ON_LEVEL_1_DESC ;;
  }

  dimension: add_on_lvl_1_full_desc {
    group_label: "Add-On Lvl 1"
    label: "Add-On Lvl 1 Full Desc"
    type: string
    sql: ${TABLE}.ADD_ON_LEVEL_1_FULL_DESC ;;
  }

}
