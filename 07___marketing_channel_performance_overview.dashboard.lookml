- dashboard: 07___marketing_channel_performance_overview
  title: 07. 📊 Marketing Channel performance overview
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
  - name: Annualised Average Transaction Value
    type: text
    title_text: Annualised Average Transaction Value
    subtitle_text: "(AATV = AGCP / Volume)"
    row: 19
    col: 0
    width: 24
    height: 2
  - name: Volume
    type: text
    title_text: Volume
    subtitle_text: New policy sales, gross of cooling off cancellations
    body_text: ''
    row: 4
    col: 0
    width: 24
    height: 2
  - name: Header - Selected Day
    title: Header - Selected Day
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
    row: 0
    col: 4
    width: 4
    height: 2
  - name: Header - Selected Trading Week
    title: Header - Selected Trading Week
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
    row: 0
    col: 12
    width: 4
    height: 2
  - name: Header - Selected Trading Week Start Date
    title: Header - Selected Trading Week Start Date
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
    row: 0
    col: 16
    width: 4
    height: 2
  - name: Header - Selected Trading Week End Date
    title: Header - Selected Trading Week End Date
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
    row: 0
    col: 20
    width: 4
    height: 2
  - name: MPO - TW AATV vs Forecast
    title: MPO - TW AATV vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: 2017/09/06
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
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
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 344
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
      __LINE_NUM: 339
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
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 361
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
      __LINE_NUM: 356
    hidden_fields:
    - new_business_sale.volume_actual_trdwk_vs_fcast
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 2
    col: 12
    width: 12
    height: 2
  - name: Marketing Channel - Volume Trading YTD Trend
    title: Marketing Channel - Volume Trading YTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.volume_actual_trdytd
    - new_business_sale.volume_actual_trdy_ly
    - marketing_channel.marketing_channel_lvl1_full_desc
    pivots:
    - marketing_channel.marketing_channel_lvl1_full_desc
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - marketing_channel.marketing_channel_lvl1_full_desc 0
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    row_total: right
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
    show_value_labels: true
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
    - new_business_sale.volume_actual_trdy_ly
    - new_business_sale.volume_actual_trdytd
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
    show_null_labels: false
    x_axis_label: Week
    x_axis_label_rotation: -45
    y_axes:
    - label: ''
      maxValue:
      minValue: -1
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: 0, " K"
      series:
      - id: Cross-Sell Propositions - Current
        name: Cross-Sell Propositions - Current
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 486
      - id: Cross-Sell Propositions - Last Year
        name: Cross-Sell Propositions - Last Year
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 490
      - id: Digital Marketing - Current
        name: Digital Marketing - Current
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 494
      - id: Digital Marketing - Last Year
        name: Digital Marketing - Last Year
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 498
      - id: Direct Marketing - Current
        name: Direct Marketing - Current
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 502
      - id: Direct Marketing - Last Year
        name: Direct Marketing - Last Year
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 506
      - id: Face to Face and Outbound - Current
        name: Face to Face and Outbound - Current
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 510
      - id: Face to Face and Outbound - Last Year
        name: Face to Face and Outbound - Last Year
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 514
      - id: Other - Current
        name: Other - Current
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 518
      - id: Other - Last Year
        name: Other - Last Year
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 522
      - id: Partnerships - Current
        name: Partnerships - Current
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 526
      - id: Partnerships - Last Year
        name: Partnerships - Last Year
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 530
      - id: Unknown - Current
        name: Unknown - Current
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 534
      - id: Unknown - Last Year
        name: Unknown - Last Year
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 538
      __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
      __LINE_NUM: 474
    hidden_series:
    - Cross-Sell Propositions - Last Year
    - Digital Marketing - Last Year
    - Direct Marketing - Last Year
    - Face to Face and Outbound - Last Year
    - Other - Last Year
    - Partnerships - Last Year
    - Unknown - Last Year
    x_axis_datetime_tick_count: 3
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 11
    col: 0
    width: 24
    height: 8
  - name: Marketing Channel - AATV Trading YTD Trend
    title: Marketing Channel - AATV Trading YTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.aatv_actual_trdytd
    - marketing_channel.marketing_channel_lvl1_full_desc
    - new_business_sale.aatv_actual_trdy_ly
    pivots:
    - marketing_channel.marketing_channel_lvl1_full_desc
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - marketing_channel.marketing_channel_lvl1_full_desc 0
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    row_total: right
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
    show_value_labels: true
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
    - new_business_sale.aatv_actual_trdy_ly
    - new_business_sale.aatv_actual_trdytd
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
    show_null_labels: false
    x_axis_label: Week
    x_axis_label_rotation: -45
    y_axes:
    - label: ''
      maxValue:
      minValue: 30
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: '"£ "0'
      series:
      - id: Row Total - New Business Sale AATV FYTD
        name: Row Total - New Business Sale AATV FYTD
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 659
      - id: Row Total - New Business Sale AATV FYTD LY
        name: Row Total - New Business Sale AATV FYTD LY
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 663
      - id: Unknown - New Business Sale AATV FYTD
        name: Unknown - New Business Sale AATV FYTD
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 667
      - id: Unknown - New Business Sale AATV FYTD LY
        name: Unknown - New Business Sale AATV FYTD LY
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 671
      - id: Cross-Sell Propositions - New Business Sale AATV FYTD
        name: Cross-Sell Propositions - New Business Sale AATV FYTD
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 675
      - id: Cross-Sell Propositions - New Business Sale AATV FYTD LY
        name: Cross-Sell Propositions - New Business Sale AATV FYTD LY
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 679
      - id: Digital Marketing - New Business Sale AATV FYTD
        name: Digital Marketing - New Business Sale AATV FYTD
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 683
      - id: Digital Marketing - New Business Sale AATV FYTD LY
        name: Digital Marketing - New Business Sale AATV FYTD LY
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 687
      - id: Direct Marketing - New Business Sale AATV FYTD
        name: Direct Marketing - New Business Sale AATV FYTD
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 691
      - id: Direct Marketing - New Business Sale AATV FYTD LY
        name: Direct Marketing - New Business Sale AATV FYTD LY
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 695
      - id: Face to Face and Outbound - New Business Sale AATV FYTD
        name: Face to Face and Outbound - New Business Sale AATV FYTD
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 699
      - id: Face to Face and Outbound - New Business Sale AATV FYTD LY
        name: Face to Face and Outbound - New Business Sale AATV FYTD LY
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 703
      - id: Other - New Business Sale AATV FYTD
        name: Other - New Business Sale AATV FYTD
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 707
      - id: Other - New Business Sale AATV FYTD LY
        name: Other - New Business Sale AATV FYTD LY
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 711
      - id: Partnerships - New Business Sale AATV FYTD
        name: Partnerships - New Business Sale AATV FYTD
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 715
      - id: Partnerships - New Business Sale AATV FYTD LY
        name: Partnerships - New Business Sale AATV FYTD LY
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 719
      __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
      __LINE_NUM: 647
    hidden_series:
    - Cross-Sell Propositions - Last Year
    - Digital Marketing - Last Year
    - Direct Marketing - Last Year
    - Face to Face and Outbound - Last Year
    - Other - Last Year
    - Partnerships - Last Year
    - Unknown - Last Year
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 26
    col: 0
    width: 24
    height: 9
  - name: MPO - TW Volume vs Forecast
    title: MPO - TW Volume vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: 2017/09/06
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
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
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 812
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
      __LINE_NUM: 807
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
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 829
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
      __LINE_NUM: 824
    hidden_fields:
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 2
    col: 0
    width: 12
    height: 2
  - name: MPO - Volume Metrics by Marketing Channel
    title: MPO - Volume Metrics by Marketing Channel
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - marketing_channel.marketing_channel_lvl1_desc
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
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.volume_actual_trdwk desc
    limit: 500
    column_limit: 50
    total: true
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
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 937
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
      __LINE_NUM: 932
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
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 954
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
      __LINE_NUM: 949
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
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 6
    col: 0
    width: 24
    height: 5
  - name: MPO - AATV Metrics by Marketing Channel
    title: MPO - AATV Metrics by Marketing Channel
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - marketing_channel.marketing_channel_lvl1_desc
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
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.volume_actual_trdwk desc
    limit: 500
    column_limit: 50
    total: true
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
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1065
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
      __LINE_NUM: 1060
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
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1082
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
      __LINE_NUM: 1077
    hidden_fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_ly
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY%
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 21
    col: 0
    width: 24
    height: 5
  - name: MPO - Volume Metrics by Marketing Channel Level 2
    title: MPO - Volume Metrics by Marketing Channel Level 2
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - marketing_channel.marketing_channel_lvl2_desc
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
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      marketing_channel.marketing_channel_lvl1_full_desc: Digital Marketing
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.volume_actual_trdwk desc
    limit: 500
    column_limit: 50
    total: true
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
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1197
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
      __LINE_NUM: 1192
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
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1214
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
      __LINE_NUM: 1209
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
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Marketing Channel: marketing_channel.marketing_channel_lvl1_full_desc
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 37
    col: 0
    width: 12
    height: 5
  - name: Header - Selected Marketing Channel
    title: Header - Selected Marketing Channel
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - marketing_channel.marketing_channel_lvl1_desc
    sorts:
    - marketing_channel.marketing_channel_lvl1_desc
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: Detailed review by Marketing Channel Level 2
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Marketing Channel: marketing_channel.marketing_channel_lvl1_full_desc
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 35
    col: 0
    width: 24
    height: 2
  - name: MPO - AATV Metrics by Marketing Channel Level 2
    title: MPO - AATV Metrics by Marketing Channel Level 2
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - marketing_channel.marketing_channel_lvl2_desc
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
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      marketing_channel.marketing_channel_lvl1_full_desc: Digital Marketing
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.volume_actual_trdwk desc
    limit: 500
    column_limit: 50
    total: true
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
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1368
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
      __LINE_NUM: 1363
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
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1385
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
      __LINE_NUM: 1380
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
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY%
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Marketing Channel: marketing_channel.marketing_channel_lvl1_full_desc
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 37
    col: 12
    width: 12
    height: 5
  - name: MPO - AATV Trading YTD Trend
    title: MPO - AATV Trading YTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fy_ly
    - new_business_sale.aatv_fcast_fy
    - new_business_sale.aatv_actual_trdytd
    - new_business_sale.aatv_actual_trdy_ly
    - new_business_sale.aatv_fcast_trdy
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_full_desc: Digital Marketing
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
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fy_ly
    - new_business_sale.aatv_fcast_fy
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
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1530
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1534
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1538
      __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
      __LINE_NUM: 1518
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Marketing Channel: marketing_channel.marketing_channel_lvl1_full_desc
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 42
    col: 12
    width: 12
    height: 5
  - name: MPO - Volume Trading YTD Trend
    title: MPO - Volume Trading YTD Trend
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
      marketing_channel.marketing_channel_lvl1_full_desc: Digital Marketing
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
      minValue:
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
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1657
      - id: current
        name: Current
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1661
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1665
      __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
      __LINE_NUM: 1645
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Marketing Channel: marketing_channel.marketing_channel_lvl1_full_desc
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 42
    col: 0
    width: 12
    height: 5
  - name: MPO - AATV Trading YTD Trend by Marketing Channel Level 2
    title: MPO - AATV Trading YTD Trend by Marketing Channel Level 2
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - marketing_channel.marketing_channel_lvl2_desc
    - new_business_sale.aatv_actual_trdytd
    - new_business_sale.aatv_actual_trdy_ly
    - new_business_sale.trx_trdwk_number
    pivots:
    - marketing_channel.marketing_channel_lvl2_desc
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_full_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - marketing_channel.marketing_channel_lvl2_desc 0
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
      minValue: 60
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: AA.com - Current
        name: AA.com - Current
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1781
      - id: AA.com - Last Year
        name: AA.com - Last Year
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1785
      - id: Affiliates - Current
        name: Affiliates - Current
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1789
      - id: Affiliates - Last Year
        name: Affiliates - Last Year
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1793
      - id: PPC - Current
        name: PPC - Current
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1797
      - id: PPC - Last Year
        name: PPC - Last Year
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1801
      - id: SEO - Current
        name: SEO - Current
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1805
      - id: SEO - Last Year
        name: SEO - Last Year
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1809
      - id: Digital Marketing - Email - Current
        name: Digital Marketing - Email - Current
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1813
      - id: Digital Marketing - Email - Last Year
        name: Digital Marketing - Email - Last Year
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1817
      - id: My AA - Current
        name: My AA - Current
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1821
      - id: My AA - Last Year
        name: My AA - Last Year
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1825
      __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
      __LINE_NUM: 1769
    hidden_series:
    - AA.com - Last Year
    - Affiliates - Last Year
    - Digital Marketing - Email - Last Year
    - Digital Marketing - Other - Last Year
    - My AA - Last Year
    - PPC - Last Year
    - SEO - Last Year
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Marketing Channel: marketing_channel.marketing_channel_lvl1_full_desc
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 47
    col: 12
    width: 12
    height: 7
  - name: MPO - Volume Trading YTD Trend by Marketing Channel Level 2
    title: MPO - Volume Trading YTD Trend by Marketing Channel Level 2
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.volume_actual_trdytd
    - new_business_sale.volume_actual_trdy_ly
    - marketing_channel.marketing_channel_lvl2_desc
    pivots:
    - marketing_channel.marketing_channel_lvl2_desc
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_full_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - marketing_channel.marketing_channel_lvl2_desc 0
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
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: 0.0," K"
      series:
      - id: AA.com - Current
        name: AA.com - Current
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1950
      - id: AA.com - Last Year
        name: AA.com - Last Year
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1954
      - id: Affiliates - Current
        name: Affiliates - Current
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1958
      - id: Affiliates - Last Year
        name: Affiliates - Last Year
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1962
      - id: Direct, including MyAA - Current
        name: Direct, including MyAA - Current
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1966
      - id: Direct, including MyAA - Last Year
        name: Direct, including MyAA - Last Year
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1970
      - id: PPC - Current
        name: PPC - Current
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1974
      - id: PPC - Last Year
        name: PPC - Last Year
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1978
      - id: SEO - Current
        name: SEO - Current
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1982
      - id: SEO - Last Year
        name: SEO - Last Year
        __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
        __LINE_NUM: 1986
      __FILE: commercial_road_new_business/07___marketing_channel_performance_overview.dashboard.lookml
      __LINE_NUM: 1938
    hidden_series:
    - AA.com - Last Year
    - Affiliates - Last Year
    - Digital Marketing - Email - Last Year
    - Digital Marketing - Other - Last Year
    - My AA - Last Year
    - PPC - Last Year
    - SEO - Last Year
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Marketing Channel: marketing_channel.marketing_channel_lvl1_full_desc
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 47
    col: 0
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
  - name: Policy Type
    title: Policy Type
    type: field_filter
    default_value: Paid
    model: commercial_road_new_business
    explore: new_business_sale
    field: policy_type.policy_type_lvl2_full_desc
    listens_to_filters: []
    allow_multiple_values: true
  - name: Forecast
    title: Forecast
    type: field_filter
    default_value: FY 2018 Q3F
    model: commercial_road_new_business
    explore: new_business_sale
    field: new_business_sale.series_identifier_fcast
    listens_to_filters: []
    allow_multiple_values: true
  - name: Accounting Treatment
    title: Accounting Treatment
    type: field_filter
    default_value: Transacted
    model: commercial_road_new_business
    explore: new_business_sale
    field: new_business_sale.accounting_treatmenr
    listens_to_filters: []
    allow_multiple_values: false
  - name: Marketing Channel
    title: Marketing Channel
    type: field_filter
    default_value: Digital Marketing
    model: commercial_road_new_business
    explore: new_business_sale
    field: marketing_channel.marketing_channel_lvl1_full_desc
    listens_to_filters: []
    allow_multiple_values: false