- dashboard: 06___focus_on_face_to_face_sales_channel
  title: 06. 👩 Focus on Face To Face Sales Channel
  layout: newspaper
  elements:
  - name: 'Performance to end of day:'
    type: text
    title_text: 'Performance to end of day:'
    row: 0
    col: 0
    width: 4
    height: 2
  - name: 'Trading Week:'
    type: text
    title_text: 'Trading Week:'
    subtitle_text: "(TW)"
    row: 0
    col: 8
    width: 4
    height: 2
  - name: Annualised Average Transaction Value_1
    type: text
    title_text: Annualised Average Transaction Value
    subtitle_text: "(AATV = AGCP / Volume)"
    row: 16
    col: 16
    width: 8
    height: 2
  - name: Volume_1
    type: text
    title_text: Volume
    subtitle_text: New policy sales, gross of cooling off cancellations
    row: 16
    col: 8
    width: 8
    height: 2
  - name: Workforce Productivity
    type: text
    title_text: Workforce Productivity
    subtitle_text: On staffed FTEs
    row: 16
    col: 0
    width: 8
    height: 2
  - name: Split by Region
    type: text
    title_text: Split by Region
    subtitle_text: ''
    body_text: ''
    row: 26
    col: 0
    width: 24
    height: 2
  - name: Split by Staffing Model
    type: text
    title_text: Split by Staffing Model
    subtitle_text: ''
    row: 37
    col: 0
    width: 24
    height: 2
  - name: FTE count
    type: text
    title_text: FTE count
    subtitle_text: ''
    row: 50
    col: 0
    width: 8
    height: 2
  - name: FTE count by Region
    type: text
    title_text: FTE count by Region
    subtitle_text: ''
    row: 50
    col: 8
    width: 8
    height: 2
  - name: FTE count by Staffing Model
    type: text
    title_text: FTE count by Staffing Model
    subtitle_text: ''
    row: 50
    col: 16
    width: 8
    height: 2
  - name: Staffing
    type: text
    title_text: Staffing
    row: 48
    col: 0
    width: 24
    height: 2
  - name: Volume_2
    type: text
    title_text: Volume
    subtitle_text: New policy sales, gross of cooling off cancellations
    row: 4
    col: 0
    width: 12
    height: 2
  - name: Annualised Average Transaction Value_2
    type: text
    title_text: Annualised Average Transaction Value
    subtitle_text: "(AATV = AGCP / Volume)"
    body_text: ''
    row: 4
    col: 12
    width: 12
    height: 2
  - name: Field Sales Team Section
    type: text
    title_text: Field Sales Team Section
    row: 14
    col: 0
    width: 24
    height: 2
  - name: Placeholder_1
    type: text
    title_text: Placeholder
    row: 39
    col: 0
    width: 8
    height: 9
  - name: Placeholder_2
    type: text
    title_text: Placeholder
    row: 28
    col: 0
    width: 8
    height: 9
  - name: Patrol Section
    type: text
    title_text: Patrol Section
    row: 61
    col: 0
    width: 24
    height: 2
  - name: Outbound Section
    type: text
    title_text: Outbound Section
    row: 71
    col: 0
    width: 24
    height: 2
  - name: Placeholder_3
    type: text
    title_text: Placeholder
    row: 63
    col: 0
    width: 8
    height: 8
  - title: Header - Selected Trading Week
    name: Header - Selected Trading Week
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - date_filter.header_day
    - date_filter.trdwk_number
    - date_filter.header_tw_start
    - date_filter.header_tw_end
    filters:
      new_business_sale.date_filter_parameter: 2017/05/05
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - date_filter.header_day
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields:
    - date_filter.header_day
    single_value_title: Trading Week Number
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 0
    col: 12
    width: 4
    height: 2
  - title: Header - Selected Day
    name: Header - Selected Day
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - date_filter.header_day
    - date_filter.trdwk_number
    - date_filter.header_tw_start
    - date_filter.header_tw_end
    filters:
      new_business_sale.date_filter_parameter: 2017/06/12
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - date_filter.header_day
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    single_value_title: Selected
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 0
    col: 4
    width: 4
    height: 2
  - title: FTF - Volume TW vs Forecast
    name: FTF - Volume TW vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_full_desc: Face to Face and Outbound
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.aatv_actual_trdwk
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    single_value_title: TW Volume vs Forecast
    value_format: "+0.0%;-0.0%"
    conditional_formatting:
    - type: less than
      value: '0'
      background_color:
      font_color: "#ff0000"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 587
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 582
    - type: greater than
      value: '0'
      background_color:
      font_color: "#00b050"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 600
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 595
    hidden_fields:
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 2
    col: 0
    width: 12
    height: 2
  - title: Header - Selected Trading Week End Date
    name: Header - Selected Trading Week End Date
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - date_filter.header_day
    - date_filter.trdwk_number
    - date_filter.header_tw_start
    - date_filter.header_tw_end
    filters:
      new_business_sale.date_filter_parameter: 2017/05/05
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - date_filter.header_day
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields:
    - date_filter.header_day
    - date_filter.trdwk_number
    - date_filter.header_tw_start
    single_value_title: Trading Week End Date
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 0
    col: 20
    width: 4
    height: 2
  - title: Header - Selected Trading Week Start Date
    name: Header - Selected Trading Week Start Date
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - date_filter.header_day
    - date_filter.trdwk_number
    - date_filter.header_tw_start
    - date_filter.header_tw_end
    filters:
      new_business_sale.date_filter_parameter: 2017/05/05
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - date_filter.header_day
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields:
    - date_filter.header_day
    - date_filter.trdwk_number
    single_value_title: Trading Week Start Date
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 0
    col: 16
    width: 4
    height: 2
  - title: FTF - AATV TW vs Forecast
    name: FTF - AATV TW vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_full_desc: Face to Face and Outbound
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.aatv_actual_trdwk
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    single_value_title: TW AATV vs Forecast
    value_format: "+0.0%;-0.0%"
    conditional_formatting:
    - type: less than
      value: '0'
      background_color:
      font_color: "#ff0000"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 765
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 760
    - type: greater than
      value: '0'
      background_color:
      font_color: "#00b050"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 778
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 773
    hidden_fields:
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 2
    col: 12
    width: 12
    height: 2
  - title: FTF - AATV Metrics
    name: FTF - AATV Metrics
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_full_desc: Face to Face and Outbound
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.aatv_actual_trdwk
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    single_value_title: Day
    value_format: '"£ "0," K"'
    conditional_formatting:
    - type: less than
      value: '0'
      background_color:
      font_color: "#ff0000"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 1056
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 1051
    - type: greater than
      value: '0'
      background_color:
      font_color: "#00b050"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 1069
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 1064
    hidden_fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY %
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 6
    col: 12
    width: 12
    height: 2
  - name: FTF - Workforce Productivity Metrics Field Sales Team
    title: FTF - Workforce Productivity Metrics Field Sales Team
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.workforce_productivity_actual_trdwk
    - new_business_sale.workforce_productivity_actual_trdwk_vs_ly
    - new_business_sale.workforce_productivity_actual_trdwk_vs_fcast
    - new_business_sale.workforce_productivity_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Direct Sales Force
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields:
    - new_business_sale.workforce_productivity_actual_trdwk
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    single_value_title: Day
    value_format: '"£ "0," K"'
    conditional_formatting:
    - type: less than
      value: '0'
      background_color:
      font_color: "#ff0000"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 354
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 349
    - type: greater than
      value: '0'
      background_color:
      font_color: "#00b050"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 367
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 362
    hidden_fields: []
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.workforce_productivity_actual_trdwk_vs_ly: Trading WK vs LY
        %
      new_business_sale.workforce_productivity_actual_trdwk_vs_fcast: Trading WK vs
        Forecast %
      new_business_sale.workforce_productivity_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.workforce_productivity_actual_trdwk: Productivity Trading
        WK
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 18
    col: 0
    width: 8
    height: 2
  - title: FTF - Volume Metrics
    name: FTF - Volume Metrics
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_full_desc: Face to Face and Outbound
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.aatv_actual_trdwk
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    single_value_title: Day
    value_format: '"£ "0," K"'
    conditional_formatting:
    - type: less than
      value: '0'
      background_color:
      font_color: "#ff0000"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 883
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 878
    - type: greater than
      value: '0'
      background_color:
      font_color: "#00b050"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 896
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 891
    hidden_fields:
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 6
    col: 0
    width: 12
    height: 2
  - title: FTF - Volume Trading YTD Trend
    name: FTF - Volume Trading YTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.volume_actual_trdytd
    - new_business_sale.volume_actual_trdy_ly
    - new_business_sale.volume_fcast_trdy
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_full_desc: Face to Face and Outbound
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.volume_actual_trdytd}=0, null, ${new_business_sale.volume_actual_trdytd})
      value_format:
      value_format_name: decimal_0
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.volume_actual_trdy_ly}=0, null, ${new_business_sale.volume_actual_trdy_ly})
      value_format:
      value_format_name: decimal_0
    - table_calculation: forecast
      label: Forecast
      expression: if(${new_business_sale.volume_fcast_trdy}=0,null, ${new_business_sale.volume_fcast_trdy})
      value_format:
      value_format_name: decimal_0
    query_timezone: Europe/London
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    - new_business_sale.volume_actual_trdytd
    - new_business_sale.volume_actual_trdy_ly
    - new_business_sale.volume_fcast_trdy
    hidden_points_if_no:
    - vizualisation_filter
    limit_displayed_rows_values:
      show_hide: show
      first_last: last
      num_rows: '7'
    series_labels:
      new_business_sale.volume_actual_fytd: Current
      new_business_sale.volume_actual_fytd_ly: Last Year
      new_business_sale.volume_fcast_fytd: Forecast
      new_business_sale.agcp_actual_fytd: Current
      new_business_sale.agcp_actual_fytd_ly: Last Year
      new_business_sale.agcp_fcast_fytd: Forecast
    show_null_labels: false
    x_axis_label: Week
    x_axis_label_rotation: -45
    y_axes:
    - label: ''
      maxValue:
      minValue: 0
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: 0," K"
      series:
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 1200
      - id: current
        name: Current
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 1202
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 1204
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 1188
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 8
    col: 0
    width: 12
    height: 6
  - title: FTF - AATV Trading YTD Trend
    name: FTF - AATV Trading YTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.aatv_actual_trdytd
    - new_business_sale.aatv_actual_trdy_ly
    - new_business_sale.aatv_fcast_trdy
    - new_business_sale.trx_trdwk_number
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_full_desc: Face to Face and Outbound
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.aatv_actual_trdytd}=0, null, ${new_business_sale.aatv_actual_trdytd})
      value_format:
      value_format_name: gbp
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.aatv_actual_trdy_ly}=0, null, ${new_business_sale.aatv_actual_trdy_ly})
      value_format:
      value_format_name: gbp
    - table_calculation: forecast
      label: Forecast
      expression: if(${new_business_sale.aatv_fcast_trdy}=0, null, ${new_business_sale.aatv_fcast_trdy}
        )
      value_format:
      value_format_name: gbp
    query_timezone: Europe/London
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    - new_business_sale.aatv_actual_trdytd
    - new_business_sale.aatv_actual_trdy_ly
    - new_business_sale.aatv_fcast_trdy
    hidden_points_if_no:
    - vizualisation_filter
    limit_displayed_rows_values:
      show_hide: show
      first_last: last
      num_rows: '7'
    series_labels:
      new_business_sale.volume_actual_fytd: Current
      new_business_sale.volume_actual_fytd_ly: Last Year
      new_business_sale.volume_fcast_fytd: Forecast
      new_business_sale.aatv_actual_fytd: Current
      new_business_sale.aatv_actual_fytd_ly: Last Year
      new_business_sale.aatv_fcast_fytd: Forecast
    show_null_labels: false
    x_axis_label: Week
    x_axis_label_rotation: -45
    y_axes:
    - label: ''
      maxValue:
      minValue: 80
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: '"£ "0'
      series:
      - id: current
        name: Current
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 263
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 265
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 267
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 251
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 8
    col: 12
    width: 12
    height: 6
  - title: FTF - Volume Metrics Field Sales Team
    name: FTF - Volume Metrics Field Sales Team
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Direct Sales Force
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.aatv_actual_trdwk
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    single_value_title: Day
    value_format: '"£ "0," K"'
    conditional_formatting:
    - type: less than
      value: '0'
      background_color:
      font_color: "#ff0000"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 354
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 349
    - type: greater than
      value: '0'
      background_color:
      font_color: "#00b050"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 367
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 362
    hidden_fields:
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 18
    col: 8
    width: 8
    height: 2
  - title: FTF - AATV Metrics Field Sales Team
    name: FTF - AATV Metrics Field Sales Team
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Direct Sales Force
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.aatv_actual_trdwk
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    single_value_title: Day
    value_format: '"£ "0," K"'
    conditional_formatting:
    - type: less than
      value: '0'
      background_color:
      font_color: "#ff0000"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 1291
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 1286
    - type: greater than
      value: '0'
      background_color:
      font_color: "#00b050"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 1304
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 1299
    hidden_fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY %
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 18
    col: 16
    width: 8
    height: 2
  - title: FTF - AATV Trading YTD Trend Field Sales Team
    name: FTF - AATV Trading YTD Trend Field Sales Team
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.aatv_actual_trdytd
    - new_business_sale.aatv_actual_trdy_ly
    - new_business_sale.aatv_fcast_trdy
    - new_business_sale.trx_trdwk_number
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Direct Sales Force
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.aatv_actual_trdytd}=0, null, ${new_business_sale.aatv_actual_trdytd})
      value_format:
      value_format_name: gbp
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.aatv_actual_trdy_ly}=0, null, ${new_business_sale.aatv_actual_trdy_ly})
      value_format:
      value_format_name: gbp
    - table_calculation: forecast
      label: Forecast
      expression: if(${new_business_sale.aatv_fcast_trdy}=0, null, ${new_business_sale.aatv_fcast_trdy}
        )
      value_format:
      value_format_name: gbp
    query_timezone: Europe/London
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    - new_business_sale.aatv_actual_trdytd
    - new_business_sale.aatv_actual_trdy_ly
    - new_business_sale.aatv_fcast_trdy
    hidden_points_if_no:
    - vizualisation_filter
    limit_displayed_rows_values:
      show_hide: show
      first_last: last
      num_rows: '7'
    series_labels:
      new_business_sale.volume_actual_fytd: Current
      new_business_sale.volume_actual_fytd_ly: Last Year
      new_business_sale.volume_fcast_fytd: Forecast
      new_business_sale.aatv_actual_fytd: Current
      new_business_sale.aatv_actual_fytd_ly: Last Year
      new_business_sale.aatv_fcast_fytd: Forecast
    show_null_labels: false
    x_axis_label: Week
    x_axis_label_rotation: -45
    y_axes:
    - label: ''
      maxValue:
      minValue: 80
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: '"£ "0'
      series:
      - id: current
        name: Current
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 497
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 499
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 501
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 485
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 20
    col: 16
    width: 8
    height: 6
  - title: FTF - Volume Trading YTD Trend Field Sales Team
    name: FTF - Volume Trading YTD Trend Field Sales Team
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.volume_actual_trdytd
    - new_business_sale.volume_actual_trdy_ly
    - new_business_sale.volume_fcast_trdy
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Direct Sales Force
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.volume_actual_trdytd}=0, null, ${new_business_sale.volume_actual_trdytd})
      value_format:
      value_format_name: decimal_0
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.volume_actual_trdy_ly}=0, null, ${new_business_sale.volume_actual_trdy_ly})
      value_format:
      value_format_name: decimal_0
    - table_calculation: forecast
      label: Forecast
      expression: if(${new_business_sale.volume_fcast_trdy}=0,null, ${new_business_sale.volume_fcast_trdy})
      value_format:
      value_format_name: decimal_0
    query_timezone: Europe/London
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    - new_business_sale.volume_actual_trdytd
    - new_business_sale.volume_actual_trdy_ly
    - new_business_sale.volume_fcast_trdy
    hidden_points_if_no:
    - vizualisation_filter
    limit_displayed_rows_values:
      show_hide: show
      first_last: last
      num_rows: '7'
    series_labels:
      new_business_sale.volume_actual_fytd: Current
      new_business_sale.volume_actual_fytd_ly: Last Year
      new_business_sale.volume_fcast_fytd: Forecast
      new_business_sale.agcp_actual_fytd: Current
      new_business_sale.agcp_actual_fytd_ly: Last Year
      new_business_sale.agcp_fcast_fytd: Forecast
    show_null_labels: false
    x_axis_label: Week
    x_axis_label_rotation: -45
    y_axes:
    - label: ''
      maxValue:
      minValue: 0
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: 0," K"
      series:
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 1436
      - id: current
        name: Current
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 1438
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 1440
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 1424
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 20
    col: 8
    width: 8
    height: 6
  - name: FTF - Workforce Productivity Trading YTD Trend Field Sales Team
    title: FTF - Workforce Productivity Trading YTD Trend Field Sales Team
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.workforce_productivity_actual_trdytd
    - new_business_sale.workforce_productivity_actual_trdy_ly
    - new_business_sale.workforce_productivity_fcast_trdy
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Direct Sales Force
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
    sorts:
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.workforce_productivity_actual_trdytd}=0,
        null, ${new_business_sale.workforce_productivity_actual_trdytd})
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.workforce_productivity_actual_trdy_ly}=0,
        null, ${new_business_sale.workforce_productivity_actual_trdy_ly})
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: forecast
      label: Forecast
      expression: if(${new_business_sale.workforce_productivity_fcast_trdy}=0,null,
        ${new_business_sale.workforce_productivity_fcast_trdy})
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      _type_hint: number
    query_timezone: Europe/London
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    - new_business_sale.workforce_productivity_actual_trdytd
    - new_business_sale.workforce_productivity_actual_trdy_ly
    - new_business_sale.workforce_productivity_fcast_trdy
    hidden_points_if_no:
    - vizualisation_filter
    limit_displayed_rows_values:
      show_hide: show
      first_last: last
      num_rows: '7'
    series_labels:
      new_business_sale.volume_actual_fytd: Current
      new_business_sale.volume_actual_fytd_ly: Last Year
      new_business_sale.volume_fcast_fytd: Forecast
      new_business_sale.agcp_actual_fytd: Current
      new_business_sale.agcp_actual_fytd_ly: Last Year
      new_business_sale.agcp_fcast_fytd: Forecast
    show_null_labels: false
    x_axis_label: Week
    x_axis_label_rotation: -45
    y_axes:
    - label: ''
      maxValue:
      minValue: 0
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: '0.0'
      series:
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 1436
      - id: current
        name: Current
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 1438
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 1440
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 1424
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 20
    col: 0
    width: 8
    height: 6
  - title: FTF - AATV Metrics Field Sales Team by Region
    name: FTF - AATV Metrics Field Sales Team by Region
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    - fst_staff.region
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      fst_staff.region: North,South
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Direct Sales Force
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - fst_staff.region
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.aatv_actual_trdwk
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    single_value_title: Day
    value_format: '"£ "0," K"'
    conditional_formatting:
    - type: less than
      value: '0'
      background_color:
      font_color: "#ff0000"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 1651
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 1646
    - type: greater than
      value: '0'
      background_color:
      font_color: "#00b050"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 1664
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 1659
    hidden_fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY %
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 28
    col: 16
    width: 8
    height: 3
  - title: FTF - Volume Metrics Field Sales Team by Region
    name: FTF - Volume Metrics Field Sales Team by Region
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    - fst_staff.region
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      fst_staff.region: North,South
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Direct Sales Force
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - fst_staff.region
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.aatv_actual_trdwk
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    single_value_title: Day
    value_format: '"£ "0," K"'
    conditional_formatting:
    - type: less than
      value: '0'
      background_color:
      font_color: "#ff0000"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 1531
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 1526
    - type: greater than
      value: '0'
      background_color:
      font_color: "#00b050"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 1544
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 1539
    hidden_fields:
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 28
    col: 8
    width: 8
    height: 3
  - title: FTF - AATV Trading YTD Trend Field Sales Team by Region
    name: FTF - AATV Trading YTD Trend Field Sales Team by Region
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.aatv_actual_trdytd
    - new_business_sale.aatv_actual_trdy_ly
    - new_business_sale.trx_trdwk_number
    - fst_staff.region
    pivots:
    - fst_staff.region
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      fst_staff.region: North,South
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Direct Sales Force
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.trx_trdwk_number
    - fst_staff.region
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.aatv_actual_trdytd}=0, null, ${new_business_sale.aatv_actual_trdytd})
      value_format:
      value_format_name: gbp
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.aatv_actual_trdy_ly}=0, null, ${new_business_sale.aatv_actual_trdy_ly})
      value_format:
      value_format_name: gbp
    query_timezone: Europe/London
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    - new_business_sale.aatv_actual_trdytd
    - new_business_sale.aatv_actual_trdy_ly
    hidden_points_if_no:
    - vizualisation_filter
    limit_displayed_rows_values:
      show_hide: show
      first_last: last
      num_rows: '7'
    series_labels:
      new_business_sale.volume_actual_fytd: Current
      new_business_sale.volume_actual_fytd_ly: Last Year
      new_business_sale.volume_fcast_fytd: Forecast
      new_business_sale.aatv_actual_fytd: Current
      new_business_sale.aatv_actual_fytd_ly: Last Year
      new_business_sale.aatv_fcast_fytd: Forecast
    show_null_labels: false
    x_axis_label: Week
    x_axis_label_rotation: -45
    y_axes:
    - label: ''
      maxValue:
      minValue: 80
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: North - Current
        name: North - Current
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 2034
      - id: North - Last Year
        name: North - Last Year
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 2036
      - id: South - Current
        name: South - Current
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 2038
      - id: South - Last Year
        name: South - Last Year
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 2040
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 2022
    hidden_series:
    - North - Last Year
    - South - Last Year
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 31
    col: 16
    width: 8
    height: 6
  - title: FTF - Volume Trading YTD Trend Field Sales Team by Region
    name: FTF - Volume Trading YTD Trend Field Sales Team by Region
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.volume_actual_trdytd
    - new_business_sale.volume_actual_trdy_ly
    - fst_staff.region
    pivots:
    - fst_staff.region
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      fst_staff.region: North,South
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Direct Sales Force
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.trx_trdwk_number
    - fst_staff.region
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.volume_actual_trdytd}=0, null, ${new_business_sale.volume_actual_trdytd})
      value_format:
      value_format_name: decimal_0
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.volume_actual_trdy_ly}=0, null, ${new_business_sale.volume_actual_trdy_ly})
      value_format:
      value_format_name: decimal_0
    query_timezone: Europe/London
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    - new_business_sale.volume_actual_trdytd
    - new_business_sale.volume_actual_trdy_ly
    hidden_points_if_no:
    - vizualisation_filter
    limit_displayed_rows_values:
      show_hide: show
      first_last: last
      num_rows: '7'
    series_labels:
      new_business_sale.volume_actual_fytd: Current
      new_business_sale.volume_actual_fytd_ly: Last Year
      new_business_sale.volume_fcast_fytd: Forecast
      new_business_sale.agcp_actual_fytd: Current
      new_business_sale.agcp_actual_fytd_ly: Last Year
      new_business_sale.agcp_fcast_fytd: Forecast
    show_null_labels: false
    x_axis_label: Week
    x_axis_label_rotation: -45
    y_axes:
    - label: ''
      maxValue: 7000
      minValue: 0
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: 0," K"
      series:
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 1794
      - id: current
        name: Current
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 1796
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 1798
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 1782
    hidden_series:
    - North - Last Year
    - South - Last Year
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 31
    col: 8
    width: 8
    height: 6
  - title: FTF - Volume Metrics Field Sales Team by Staffing Model
    name: FTF - Volume Metrics Field Sales Team by Staffing Model
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    - fst_staff.staff_type
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      fst_staff.staff_type: FST - Employed,FST - Self Employed
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Direct Sales Force
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - fst_staff.staff_type
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.aatv_actual_trdwk
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    single_value_title: Day
    value_format: '"£ "0," K"'
    conditional_formatting:
    - type: less than
      value: '0'
      background_color:
      font_color: "#ff0000"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 2134
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 2129
    - type: greater than
      value: '0'
      background_color:
      font_color: "#00b050"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 2147
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 2142
    hidden_fields:
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 39
    col: 8
    width: 8
    height: 3
  - title: FTF - Volume Trading YTD Trend Field Sales Team by Staffing Model
    name: FTF - Volume Trading YTD Trend Field Sales Team by Staffing Model
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.volume_actual_trdytd
    - new_business_sale.volume_actual_trdy_ly
    - fst_staff.staff_type
    pivots:
    - fst_staff.staff_type
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      fst_staff.staff_type: FST - Employed,FST - Self Employed
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Direct Sales Force
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.trx_trdwk_number
    - fst_staff.staff_type
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.volume_actual_trdytd}=0, null, ${new_business_sale.volume_actual_trdytd})
      value_format:
      value_format_name: decimal_0
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.volume_actual_trdy_ly}=0, null, ${new_business_sale.volume_actual_trdy_ly})
      value_format:
      value_format_name: decimal_0
    query_timezone: Europe/London
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    - new_business_sale.volume_actual_trdytd
    - new_business_sale.volume_actual_trdy_ly
    hidden_points_if_no:
    - vizualisation_filter
    limit_displayed_rows_values:
      show_hide: show
      first_last: last
      num_rows: '7'
    series_labels:
      new_business_sale.volume_actual_fytd: Current
      new_business_sale.volume_actual_fytd_ly: Last Year
      new_business_sale.volume_fcast_fytd: Forecast
      new_business_sale.agcp_actual_fytd: Current
      new_business_sale.agcp_actual_fytd_ly: Last Year
      new_business_sale.agcp_fcast_fytd: Forecast
    show_null_labels: false
    x_axis_label: Week
    x_axis_label_rotation: -45
    y_axes:
    - label: ''
      maxValue: 7000
      minValue: 0
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: 0," K"
      series:
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 2397
      - id: current
        name: Current
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 2399
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 2401
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 2385
    hidden_series:
    - FST - Employed - Last Year
    - FST - Self Employed - Last Year
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 42
    col: 8
    width: 8
    height: 6
  - title: FTF - AATV Metrics Field Sales Team by Staffing Model
    name: FTF - AATV Metrics Field Sales Team by Staffing Model
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    - fst_staff.staff_type
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      fst_staff.staff_type: FST - Employed,FST - Self Employed
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Direct Sales Force
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - fst_staff.staff_type
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.aatv_actual_trdwk
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    single_value_title: Day
    value_format: '"£ "0," K"'
    conditional_formatting:
    - type: less than
      value: '0'
      background_color:
      font_color: "#ff0000"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 2254
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 2249
    - type: greater than
      value: '0'
      background_color:
      font_color: "#00b050"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 2267
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 2262
    hidden_fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY %
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 39
    col: 16
    width: 8
    height: 3
  - title: FTF - AATV Trading YTD Trend Field Sales Team by Staffing Model
    name: FTF - AATV Trading YTD Trend Field Sales Team by Staffing Model
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.aatv_actual_trdytd
    - new_business_sale.aatv_actual_trdy_ly
    - new_business_sale.trx_trdwk_number
    - fst_staff.staff_type
    pivots:
    - fst_staff.staff_type
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      fst_staff.staff_type: FST - Employed,FST - Self Employed
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Direct Sales Force
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.trx_trdwk_number
    - fst_staff.staff_type
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.aatv_actual_trdytd}=0, null, ${new_business_sale.aatv_actual_trdytd})
      value_format:
      value_format_name: gbp
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.aatv_actual_trdy_ly}=0, null, ${new_business_sale.aatv_actual_trdy_ly})
      value_format:
      value_format_name: gbp
    query_timezone: Europe/London
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    - new_business_sale.aatv_actual_trdytd
    - new_business_sale.aatv_actual_trdy_ly
    hidden_points_if_no:
    - vizualisation_filter
    limit_displayed_rows_values:
      show_hide: show
      first_last: last
      num_rows: '7'
    series_labels:
      new_business_sale.volume_actual_fytd: Current
      new_business_sale.volume_actual_fytd_ly: Last Year
      new_business_sale.volume_fcast_fytd: Forecast
      new_business_sale.aatv_actual_fytd: Current
      new_business_sale.aatv_actual_fytd_ly: Last Year
      new_business_sale.aatv_fcast_fytd: Forecast
    show_null_labels: false
    x_axis_label: Week
    x_axis_label_rotation: -45
    y_axes:
    - label: ''
      maxValue:
      minValue: 80
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: FST - Employed - Current
        name: FST - Employed - Current
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 2515
      - id: FST - Employed - Last Year
        name: FST - Employed - Last Year
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 2517
      - id: FST - Self Employed - Current
        name: FST - Self Employed - Current
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 2519
      - id: FST - Self Employed - Last Year
        name: FST - Self Employed - Last Year
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 2521
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 2503
    hidden_series:
    - FST - Employed - Last Year
    - FST - Self Employed - Last Year
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 42
    col: 16
    width: 8
    height: 6
  - title: FTF - FTE Count Metrics Field Sales Team by Region
    name: FTF - FTE Count Metrics Field Sales Team by Region
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.fst_staff_actual_trdwk
    - new_business_sale.fst_staff_actual_trdwk_vs_ly
    - new_business_sale.fst_staff_actual_trdwk_vs_fcast
    - new_business_sale.fst_staff_actual_fytd_vs_ly
    - fst_staff.region
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      fst_staff.region: North,South
      fst_staff.staff_type: FST - Employed,FST - Self Employed
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Direct Sales Force
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
    sorts:
    - fst_staff.region
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields:
    - new_business_sale.fst_staff_actual_trdwk
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    single_value_title: Day
    value_format: '"£ "0," K"'
    conditional_formatting:
    - type: less than
      value: '0'
      background_color:
      font_color: "#ff0000"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 2719
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 2714
    - type: greater than
      value: '0'
      background_color:
      font_color: "#00b050"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 2732
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 2727
    hidden_fields: []
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.fst_staff_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.fst_staff_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.fst_staff_actual_fytd_vs_ly: FYTD vs LY %
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 52
    col: 8
    width: 8
    height: 3
  - title: FTF - FTE Count Metrics Field Sales Team
    name: FTF - FTE Count Metrics Field Sales Team
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.fst_staff_actual_trdwk
    - new_business_sale.fst_staff_actual_trdwk_vs_ly
    - new_business_sale.fst_staff_actual_trdwk_vs_fcast
    - new_business_sale.fst_staff_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Direct Sales Force
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields:
    - new_business_sale.fst_staff_actual_trdwk
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    single_value_title: Day
    value_format: '"£ "0," K"'
    conditional_formatting:
    - type: less than
      value: '0'
      background_color:
      font_color: "#ff0000"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 2604
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 2599
    - type: greater than
      value: '0'
      background_color:
      font_color: "#00b050"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 2617
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 2612
    hidden_fields: []
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.fst_staff_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.fst_staff_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.fst_staff_actual_fytd_vs_ly: FYTD vs LY %
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 52
    col: 0
    width: 8
    height: 3
  - title: FTF - FTE Count Metrics Field Sales Team by Staffing Model
    name: FTF - FTE Count Metrics Field Sales Team by Staffing Model
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.fst_staff_actual_trdwk
    - new_business_sale.fst_staff_actual_trdwk_vs_ly
    - new_business_sale.fst_staff_actual_trdwk_vs_fcast
    - new_business_sale.fst_staff_actual_fytd_vs_ly
    - fst_staff.staff_type
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      fst_staff.region: North,South
      fst_staff.staff_type: FST - Employed,FST - Self Employed
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Direct Sales Force
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
    sorts:
    - fst_staff.staff_type
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields:
    - new_business_sale.fst_staff_actual_trdwk
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    single_value_title: Day
    value_format: '"£ "0," K"'
    conditional_formatting:
    - type: less than
      value: '0'
      background_color:
      font_color: "#ff0000"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 2834
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 2829
    - type: greater than
      value: '0'
      background_color:
      font_color: "#00b050"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 2847
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 2842
    hidden_fields: []
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.fst_staff_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.fst_staff_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.fst_staff_actual_fytd_vs_ly: FYTD vs LY %
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 52
    col: 16
    width: 8
    height: 3
  - title: FTF - FTE Count Trading YTD Trend Field Sales Team
    name: FTF - FTE Count Trading YTD Trend Field Sales Team
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.fst_staff_actual_trdytd
    - new_business_sale.fst_staff_actual_trdy_ly
    - new_business_sale.fst_staff_fcast_trdy
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Direct Sales Force
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
    sorts:
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.fst_staff_actual_trdytd}=0, null, ${new_business_sale.fst_staff_actual_trdytd})
      value_format:
      value_format_name: decimal_0
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.fst_staff_actual_trdy_ly}=0, null, ${new_business_sale.fst_staff_actual_trdy_ly})
      value_format:
      value_format_name: decimal_0
    - table_calculation: forecast
      label: Forecast
      expression: if(${new_business_sale.fst_staff_fcast_trdy}=0,null, ${new_business_sale.fst_staff_fcast_trdy})
      value_format:
      value_format_name: decimal_0
    query_timezone: Europe/London
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    - new_business_sale.fst_staff_actual_trdytd
    - new_business_sale.fst_staff_actual_trdy_ly
    - new_business_sale.fst_staff_fcast_trdy
    hidden_points_if_no:
    - vizualisation_filter
    limit_displayed_rows_values:
      show_hide: show
      first_last: last
      num_rows: '7'
    series_labels:
      new_business_sale.volume_actual_fytd: Current
      new_business_sale.volume_actual_fytd_ly: Last Year
      new_business_sale.volume_fcast_fytd: Forecast
      new_business_sale.agcp_actual_fytd: Current
      new_business_sale.agcp_actual_fytd_ly: Last Year
      new_business_sale.agcp_fcast_fytd: Forecast
    show_null_labels: false
    x_axis_label: Week
    x_axis_label_rotation: -45
    y_axes:
    - label: ''
      maxValue:
      minValue: 100
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: ''
      series:
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 3092
      - id: current
        name: Current
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 3094
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 3096
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 3080
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 55
    col: 0
    width: 8
    height: 6
  - title: FTF - FTE Count Trading YTD Trend Field Sales Team by Region
    name: FTF - FTE Count Trading YTD Trend Field Sales Team by Region
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.fst_staff_actual_trdytd
    - new_business_sale.fst_staff_actual_trdy_ly
    - fst_staff.region
    pivots:
    - fst_staff.region
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      fst_staff.region: North,South
      fst_staff.staff_type: FST - Employed,FST - Self Employed
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Direct Sales Force
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
    sorts:
    - new_business_sale.trx_trdwk_number
    - fst_staff.region
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.fst_staff_actual_trdytd}=0, null, ${new_business_sale.fst_staff_actual_trdytd})
      value_format:
      value_format_name: decimal_0
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.fst_staff_actual_trdy_ly}=0, null, ${new_business_sale.fst_staff_actual_trdy_ly})
      value_format:
      value_format_name: decimal_0
    query_timezone: Europe/London
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    - new_business_sale.fst_staff_actual_trdytd
    - new_business_sale.fst_staff_actual_trdy_ly
    hidden_points_if_no:
    - vizualisation_filter
    limit_displayed_rows_values:
      show_hide: show
      first_last: last
      num_rows: '7'
    series_labels:
      new_business_sale.volume_actual_fytd: Current
      new_business_sale.volume_actual_fytd_ly: Last Year
      new_business_sale.volume_fcast_fytd: Forecast
      new_business_sale.agcp_actual_fytd: Current
      new_business_sale.agcp_actual_fytd_ly: Last Year
      new_business_sale.agcp_fcast_fytd: Forecast
    show_null_labels: false
    x_axis_label: Week
    x_axis_label_rotation: -45
    y_axes:
    - label: ''
      maxValue:
      minValue: 0
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: ''
      series:
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 2974
      - id: current
        name: Current
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 2976
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 2978
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 2962
    hidden_series:
    - North - Last Year
    - South - Last Year
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 55
    col: 8
    width: 8
    height: 6
  - title: FTF - FTE Count Trading YTD Trend Field Sales Team by Staffing Model
    name: FTF - FTE Count Trading YTD Trend Field Sales Team by Staffing Model
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.fst_staff_actual_trdytd
    - new_business_sale.fst_staff_actual_trdy_ly
    - fst_staff.staff_type
    pivots:
    - fst_staff.staff_type
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      fst_staff.region: North,South
      fst_staff.staff_type: FST - Employed,FST - Self Employed
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Direct Sales Force
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
    sorts:
    - new_business_sale.trx_trdwk_number
    - fst_staff.staff_type
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.fst_staff_actual_trdytd}=0, null, ${new_business_sale.fst_staff_actual_trdytd})
      value_format:
      value_format_name: decimal_0
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.fst_staff_actual_trdy_ly}=0, null, ${new_business_sale.fst_staff_actual_trdy_ly})
      value_format:
      value_format_name: decimal_0
    query_timezone: Europe/London
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    - new_business_sale.fst_staff_actual_trdytd
    - new_business_sale.fst_staff_actual_trdy_ly
    hidden_points_if_no:
    - vizualisation_filter
    limit_displayed_rows_values:
      show_hide: show
      first_last: last
      num_rows: '7'
    series_labels:
      new_business_sale.volume_actual_fytd: Current
      new_business_sale.volume_actual_fytd_ly: Last Year
      new_business_sale.volume_fcast_fytd: Forecast
      new_business_sale.agcp_actual_fytd: Current
      new_business_sale.agcp_actual_fytd_ly: Last Year
      new_business_sale.agcp_fcast_fytd: Forecast
    show_null_labels: false
    x_axis_label: Week
    x_axis_label_rotation: -45
    y_axes:
    - label: ''
      maxValue:
      minValue: 0
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: ''
      series:
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 3208
      - id: current
        name: Current
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 3210
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 3212
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 3196
    hidden_series:
    - FST - Employed - Last Year
    - FST - Self Employed - Last Year
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 55
    col: 16
    width: 8
    height: 6
  - title: FTF - Volume Metrics Patrol
    name: FTF - Volume Metrics Patrol
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Patrol
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.aatv_actual_trdwk
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    single_value_title: Day
    value_format: '"£ "0," K"'
    conditional_formatting:
    - type: less than
      value: '0'
      background_color:
      font_color: "#ff0000"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 3302
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 3297
    - type: greater than
      value: '0'
      background_color:
      font_color: "#00b050"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 3315
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 3310
    hidden_fields:
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 63
    col: 8
    width: 8
    height: 2
  - title: FTF - AATV Metrics Patrol
    name: FTF - AATV Metrics Patrol
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Patrol
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.aatv_actual_trdwk
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    single_value_title: Day
    value_format: '"£ "0," K"'
    conditional_formatting:
    - type: less than
      value: '0'
      background_color:
      font_color: "#ff0000"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 3418
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 3413
    - type: greater than
      value: '0'
      background_color:
      font_color: "#00b050"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 3431
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 3426
    hidden_fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY %
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 63
    col: 16
    width: 8
    height: 2
  - title: FTF - Volume Trading YTD Trend Patrol
    name: FTF - Volume Trading YTD Trend Patrol
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.volume_actual_trdytd
    - new_business_sale.volume_actual_trdy_ly
    - new_business_sale.volume_fcast_trdy
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Patrol
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.volume_actual_trdytd}=0, null, ${new_business_sale.volume_actual_trdytd})
      value_format:
      value_format_name: decimal_0
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.volume_actual_trdy_ly}=0, null, ${new_business_sale.volume_actual_trdy_ly})
      value_format:
      value_format_name: decimal_0
    - table_calculation: forecast
      label: Forecast
      expression: if(${new_business_sale.volume_fcast_trdy}=0,null, ${new_business_sale.volume_fcast_trdy})
      value_format:
      value_format_name: decimal_0
    query_timezone: Europe/London
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    - new_business_sale.volume_actual_trdytd
    - new_business_sale.volume_actual_trdy_ly
    - new_business_sale.volume_fcast_trdy
    hidden_points_if_no:
    - vizualisation_filter
    limit_displayed_rows_values:
      show_hide: show
      first_last: last
      num_rows: '7'
    series_labels:
      new_business_sale.volume_actual_fytd: Current
      new_business_sale.volume_actual_fytd_ly: Last Year
      new_business_sale.volume_fcast_fytd: Forecast
      new_business_sale.agcp_actual_fytd: Current
      new_business_sale.agcp_actual_fytd_ly: Last Year
      new_business_sale.agcp_fcast_fytd: Forecast
    show_null_labels: false
    x_axis_label: Week
    x_axis_label_rotation: -45
    y_axes:
    - label: ''
      maxValue:
      minValue: 0
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: ''
      series:
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 3563
      - id: current
        name: Current
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 3565
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 3567
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 3551
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 65
    col: 8
    width: 8
    height: 6
  - title: FTF - Volume Metrics Outbound
    name: FTF - Volume Metrics Outbound
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Outbound
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.aatv_actual_trdwk
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    single_value_title: Day
    value_format: '"£ "0," K"'
    conditional_formatting:
    - type: less than
      value: '0'
      background_color:
      font_color: "#ff0000"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 3772
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 3767
    - type: greater than
      value: '0'
      background_color:
      font_color: "#00b050"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 3785
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 3780
    hidden_fields:
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 73
    col: 0
    width: 12
    height: 2
  - title: FTF - AATV Trading YTD Trend Patrol
    name: FTF - AATV Trading YTD Trend Patrol
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.aatv_actual_trdytd
    - new_business_sale.aatv_actual_trdy_ly
    - new_business_sale.aatv_fcast_trdy
    - new_business_sale.trx_trdwk_number
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Patrol
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.aatv_actual_trdytd}=0, null, ${new_business_sale.aatv_actual_trdytd})
      value_format:
      value_format_name: gbp
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.aatv_actual_trdy_ly}=0, null, ${new_business_sale.aatv_actual_trdy_ly})
      value_format:
      value_format_name: gbp
    - table_calculation: forecast
      label: Forecast
      expression: if(${new_business_sale.aatv_fcast_trdy}=0, null, ${new_business_sale.aatv_fcast_trdy}
        )
      value_format:
      value_format_name: gbp
    query_timezone: Europe/London
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    - new_business_sale.aatv_actual_trdytd
    - new_business_sale.aatv_actual_trdy_ly
    - new_business_sale.aatv_fcast_trdy
    hidden_points_if_no:
    - vizualisation_filter
    limit_displayed_rows_values:
      show_hide: show
      first_last: last
      num_rows: '7'
    series_labels:
      new_business_sale.volume_actual_fytd: Current
      new_business_sale.volume_actual_fytd_ly: Last Year
      new_business_sale.volume_fcast_fytd: Forecast
      new_business_sale.aatv_actual_fytd: Current
      new_business_sale.aatv_actual_fytd_ly: Last Year
      new_business_sale.aatv_fcast_fytd: Forecast
    show_null_labels: false
    x_axis_label: Week
    x_axis_label_rotation: -45
    y_axes:
    - label: ''
      maxValue:
      minValue: 60
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: '"£ "0'
      series:
      - id: current
        name: Current
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 3681
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 3683
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 3685
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 3669
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 65
    col: 16
    width: 8
    height: 6
  - title: FTF - AATV Metrics Outbound
    name: FTF - AATV Metrics Outbound
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Outbound
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_ignored_fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.aatv_actual_trdwk
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    single_value_title: Day
    value_format: '"£ "0," K"'
    conditional_formatting:
    - type: less than
      value: '0'
      background_color:
      font_color: "#ff0000"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 3888
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 3883
    - type: greater than
      value: '0'
      background_color:
      font_color: "#00b050"
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 3901
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 3896
    hidden_fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY %
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 73
    col: 12
    width: 12
    height: 2
  - title: FTF - AATV Trading YTD Trend Outbound
    name: FTF - AATV Trading YTD Trend Outbound
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.aatv_actual_trdytd
    - new_business_sale.aatv_actual_trdy_ly
    - new_business_sale.aatv_fcast_trdy
    - new_business_sale.trx_trdwk_number
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Outbound
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.aatv_actual_trdytd}=0, null, ${new_business_sale.aatv_actual_trdytd})
      value_format:
      value_format_name: gbp
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.aatv_actual_trdy_ly}=0, null, ${new_business_sale.aatv_actual_trdy_ly})
      value_format:
      value_format_name: gbp
    - table_calculation: forecast
      label: Forecast
      expression: if(${new_business_sale.aatv_fcast_trdy}=0, null, ${new_business_sale.aatv_fcast_trdy}
        )
      value_format:
      value_format_name: gbp
    query_timezone: Europe/London
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    - new_business_sale.aatv_actual_trdytd
    - new_business_sale.aatv_actual_trdy_ly
    - new_business_sale.aatv_fcast_trdy
    hidden_points_if_no:
    - vizualisation_filter
    limit_displayed_rows_values:
      show_hide: show
      first_last: last
      num_rows: '7'
    series_labels:
      new_business_sale.volume_actual_fytd: Current
      new_business_sale.volume_actual_fytd_ly: Last Year
      new_business_sale.volume_fcast_fytd: Forecast
      new_business_sale.aatv_actual_fytd: Current
      new_business_sale.aatv_actual_fytd_ly: Last Year
      new_business_sale.aatv_fcast_fytd: Forecast
    show_null_labels: false
    x_axis_label: Week
    x_axis_label_rotation: -45
    y_axes:
    - label: ''
      maxValue:
      minValue: 60
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: '"£ "0'
      series:
      - id: current
        name: Current
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 4034
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 4036
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 4038
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 4022
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 75
    col: 0
    width: 12
    height: 7
  - title: FTF - Volume Trading YTD Trend Outbound
    name: FTF - Volume Trading YTD Trend Outbound
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.volume_actual_trdytd
    - new_business_sale.volume_actual_trdy_ly
    - new_business_sale.volume_fcast_trdy
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl2_full_desc: Face to Face and Outbound
        - Outbound
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.volume_actual_trdytd}=0, null, ${new_business_sale.volume_actual_trdytd})
      value_format:
      value_format_name: decimal_0
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.volume_actual_trdy_ly}=0, null, ${new_business_sale.volume_actual_trdy_ly})
      value_format:
      value_format_name: decimal_0
    - table_calculation: forecast
      label: Forecast
      expression: if(${new_business_sale.volume_fcast_trdy}=0,null, ${new_business_sale.volume_fcast_trdy})
      value_format:
      value_format_name: decimal_0
    query_timezone: Europe/London
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    - new_business_sale.volume_actual_trdytd
    - new_business_sale.volume_actual_trdy_ly
    - new_business_sale.volume_fcast_trdy
    hidden_points_if_no:
    - vizualisation_filter
    limit_displayed_rows_values:
      show_hide: show
      first_last: last
      num_rows: '7'
    series_labels:
      new_business_sale.volume_actual_fytd: Current
      new_business_sale.volume_actual_fytd_ly: Last Year
      new_business_sale.volume_fcast_fytd: Forecast
      new_business_sale.agcp_actual_fytd: Current
      new_business_sale.agcp_actual_fytd_ly: Last Year
      new_business_sale.agcp_fcast_fytd: Forecast
    show_null_labels: false
    x_axis_label: Week
    x_axis_label_rotation: -45
    y_axes:
    - label: ''
      maxValue:
      minValue: 0
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: ''
      series:
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 4151
      - id: current
        name: Current
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 4153
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
        __LINE_NUM: 4155
      __FILE: commercial_road_new_business/06___focus_on_face_to_face_sales_channel.dashboard.lookml
      __LINE_NUM: 4139
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 75
    col: 12
    width: 12
    height: 7
  filters:
  - name: 'Performance to end of day:'
    title: 'Performance to end of day:'
    type: date_filter
    default_value: 'NULL'
    model:
    explore:
    field:
    listens_to_filters: []
    allow_multiple_values: true
    required: false
  - name: Forecast
    title: Forecast
    type: field_filter
    default_value: FY 2018 Q3F
    model: commercial_road_new_business
    explore: new_business_sale
    field: new_business_sale.series_identifier_fcast
    listens_to_filters: []
    allow_multiple_values: false
    required: false