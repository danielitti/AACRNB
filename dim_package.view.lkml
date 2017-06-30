view: package {
  derived_table: {
    sql: SELECT LVL2.PACKAGE_KEY AS PACKAGE_LEVEL_2_KEY,
                LVL2.PACKAGE_LEVEL,
                LVL2.PACKAGE_DESC AS LEVEL_2_PACKAGE_DESC,
                LVL2.PACKAGE_FULL_DESC AS LEVEL_2_PACKAGE_FULL_DESC,
                LVL1.LEVEL_1_PACKAGE_DESC,
                LVL1.LEVEL_1_PACKAGE_FULL_DESC
        FROM  (SELECT * FROM SHARED_MRT.DIM_PACKAGE WHERE PACKAGE_LEVEL  IN ('0', '2')) LVL2
        LEFT JOIN
              (SELECT PARENT_PACKAGE_KEY, PACKAGE_KEY, PACKAGE_DESC AS LEVEL_1_PACKAGE_DESC , PACKAGE_FULL_DESC AS LEVEL_1_PACKAGE_FULL_DESC FROM SHARED_MRT.DIM_PACKAGE WHERE PACKAGE_LEVEL IN ('1' ,'0')) LVL1
        ON NVL(LVL2.PARENT_PACKAGE_KEY, LVL2.PACKAGE_KEY)  = LVL1.PACKAGE_KEY
 ;;
  }

  dimension: package_level_2_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.PACKAGE_LEVEL_2_KEY ;;
  }

  dimension: package_level {
    label: "Package Level"
    type: string
    sql: ${TABLE}.PACKAGE_LEVEL ;;
  }

  dimension: package_lvl1_desc {
    label: "Package Lvl 1 Desc"
    group_label: "Package Lvl 1"
    type: string
    sql: ${TABLE}.LEVEL_1_PACKAGE_DESC ;;
  }

  dimension: package_lvl1_full_desc {
    label: "Package Lvl 1 Full Desc"
    group_label: "Package Lvl 1"
    type: string
    sql: ${TABLE}.LEVEL_1_PACKAGE_FULL_DESC ;;
  }

  dimension: package_lvl2_desc {
    label: "Package Lvl 2 Desc"
    group_label: "Package Lvl 2"
    type: string
    sql: ${TABLE}.LEVEL_2_PACKAGE_DESC ;;
  }

  dimension: package_lvl2_full_desc {
    label: "Package Lvl 2 Full Desc"
    group_label: "Package Lvl 2"
    type: string
    sql: ${TABLE}.LEVEL_2_PACKAGE_FULL_DESC ;;
  }

}