- dashboard: 02___sales_channel_performance_overview
  title: 02. 📊 Sales Channel performance overview
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
  - name: Total
    type: text
    title_text: Total
    row: 4
    col: 0
    width: 24
    height: 2
  - name: Inbound
    type: text
    title_text: Inbound
    row: 30
    col: 0
    width: 24
    height: 2
  - name: Digital
    type: text
    title_text: Digital
    row: 40
    col: 0
    width: 24
    height: 2
  - name: Face to Face
    type: text
    title_text: Face to Face
    row: 60
    col: 0
    width: 24
    height: 2
  - name: Volume Effect
    type: text
    title_text: Volume Effect
    row: 80
    col: 0
    width: 6
    height: 2
  - name: Annualised ATV Effect
    type: text
    title_text: Annualised ATV Effect
    row: 80
    col: 6
    width: 6
    height: 2
  - name: Of which, Price Effect
    type: text
    title_text: Of which, Price Effect
    subtitle_text: "(split of AATV Effect)"
    row: 80
    col: 12
    width: 6
    height: 2
  - name: Of which, Mix Effect
    type: text
    title_text: Of which, Mix Effect
    subtitle_text: "(split of AATV Effect)"
    row: 80
    col: 18
    width: 6
    height: 2
  - name: SCPO - AATV Metrics
    title: SCPO - AATV Metrics
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.split_by_dimension
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.split_by_filter: Sales Channel Level 1
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
      bold: false
      italic: false
      strikethrough: false
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
      bold: false
      italic: false
      strikethrough: false
    hidden_fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_fytd_vs_ly
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.split_by_dimension: Sales Channel Level 1
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 18
    col: 0
    width: 24
    height: 4
  - name: SCPO - Volume Metrics
    title: SCPO - Volume Metrics
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.split_by_dimension
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.split_by_filter: Sales Channel Level 1
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
      bold: false
      italic: false
      strikethrough: false
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
      bold: false
      italic: false
      strikethrough: false
    hidden_fields:
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_fytd_vs_ly
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.split_by_dimension: Sales Channel Level 1
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 6
    col: 0
    width: 24
    height: 4
  - name: SCPO - Volume Trading YTD Trend
    title: SCPO - Volume Trading YTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.volume_actual_trdytd
    - new_business_sale.volume_actual_trdy_ly
    - new_business_sale.split_by_dimension
    pivots:
    - new_business_sale.split_by_dimension
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.split_by_filter: Sales Channel Level 1
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.split_by_dimension 0
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
      valueFormat: 0, " K"
      series:
      - id: Digital - Current
        name: Digital - Current
      - id: Digital - Last Year
        name: Digital - Last Year
      - id: Direct - Current
        name: Direct - Current
      - id: Direct - Last Year
        name: Direct - Last Year
      - id: Face to Face - Current
        name: Face to Face - Current
      - id: Face to Face - Last Year
        name: Face to Face - Last Year
      - id: Inbound - Current
        name: Inbound - Current
      - id: Inbound - Last Year
        name: Inbound - Last Year
      - id: Outbound - Current
        name: Outbound - Current
      - id: Outbound - Last Year
        name: Outbound - Last Year
      - id: Unknown - Current
        name: Unknown - Current
      - id: Unknown - Last Year
        name: Unknown - Last Year
    hidden_series:
    - Digital - Last Year
    - Face to Face - Last Year
    - Inbound - Last Year
    - Other - Last Year
    - Outbound - Last Year
    x_axis_datetime_tick_count: 3
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 10
    col: 0
    width: 24
    height: 8
  - name: SCPO - AATV Trading YTD Trend
    title: SCPO - AATV Trading YTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.split_by_dimension
    - new_business_sale.trx_trdwk_number
    - new_business_sale.aatv_actual_trdytd
    - new_business_sale.aatv_actual_trdy_ly
    pivots:
    - new_business_sale.split_by_dimension
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.split_by_filter: Sales Channel Level 1
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.split_by_dimension 0
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
      - id: Digital - Current
        name: Digital - Current
      - id: Digital - Last Year
        name: Digital - Last Year
      - id: Direct - Current
        name: Direct - Current
      - id: Direct - Last Year
        name: Direct - Last Year
      - id: Face to Face - Current
        name: Face to Face - Current
      - id: Face to Face - Last Year
        name: Face to Face - Last Year
      - id: Inbound - Current
        name: Inbound - Current
      - id: Inbound - Last Year
        name: Inbound - Last Year
      - id: Outbound - Current
        name: Outbound - Current
      - id: Outbound - Last Year
        name: Outbound - Last Year
      - id: Unknown - Current
        name: Unknown - Current
      - id: Unknown - Last Year
        name: Unknown - Last Year
    hidden_series:
    - Digital - Last Year
    - Face to Face - Last Year
    - Inbound - Last Year
    - Other - Last Year
    - Outbound - Last Year
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 22
    col: 0
    width: 24
    height: 8
  - name: SCPO - Volume Metrics - Inbound
    title: SCPO - Volume Metrics - Inbound
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
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Inbound
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
      bold: false
      italic: false
      strikethrough: false
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
      bold: false
      italic: false
      strikethrough: false
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
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 32
    col: 0
    width: 12
    height: 2
  - name: SCPO - AATV Metrics - Inbound
    title: SCPO - AATV Metrics - Inbound
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
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Inbound
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
      bold: false
      italic: false
      strikethrough: false
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
      bold: false
      italic: false
      strikethrough: false
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
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 32
    col: 12
    width: 12
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
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 0
    col: 4
    width: 4
    height: 2
  - name: SCPO - Volume Trading YTD Trend - Inbound
    title: SCPO - Volume Trading YTD Trend - Inbound
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
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Inbound
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
      - id: current
        name: Current
      - id: last_year
        name: Last Year
      - id: forecast
        name: Forecast
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 34
    col: 0
    width: 12
    height: 6
  - name: SCPO - AATV Trading YTD Trend - Inbound
    title: SCPO - AATV Trading YTD Trend - Inbound
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
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
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
      - id: last_year
        name: Last Year
      - id: forecast
        name: Forecast
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 34
    col: 12
    width: 12
    height: 6
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
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 0
    col: 12
    width: 4
    height: 2
  - name: SCPO - Volume Metrics - Digital
    title: SCPO - Volume Metrics - Digital
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
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Digital
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
      bold: false
      italic: false
      strikethrough: false
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
      bold: false
      italic: false
      strikethrough: false
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
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 42
    col: 0
    width: 12
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
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 0
    col: 16
    width: 4
    height: 2
  - name: SCPO - AATV Metrics - Digital
    title: SCPO - AATV Metrics - Digital
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
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Digital
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
      bold: false
      italic: false
      strikethrough: false
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
      bold: false
      italic: false
      strikethrough: false
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
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 42
    col: 12
    width: 12
    height: 2
  - name: SCPO - Volume Trading YTD Trend - Digital
    title: SCPO - Volume Trading YTD Trend - Digital
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
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Digital
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
      - id: current
        name: Current
      - id: last_year
        name: Last Year
      - id: forecast
        name: Forecast
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 44
    col: 0
    width: 12
    height: 6
  - name: SCPO - AATV Trading YTD Trend - Digital
    title: SCPO - AATV Trading YTD Trend - Digital
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
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Digital
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
      - id: last_year
        name: Last Year
      - id: forecast
        name: Forecast
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 44
    col: 12
    width: 12
    height: 6
  - name: SCPO - Volume Metrics - Face To Face
    title: SCPO - Volume Metrics - Face To Face
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
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Face to Face
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
      bold: false
      italic: false
      strikethrough: false
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
      bold: false
      italic: false
      strikethrough: false
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
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 62
    col: 0
    width: 12
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
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 0
    col: 20
    width: 4
    height: 2
  - name: SCPO - AATV Metrics - Face To Face
    title: SCPO - AATV Metrics - Face To Face
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
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Face to Face
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
      bold: false
      italic: false
      strikethrough: false
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
      bold: false
      italic: false
      strikethrough: false
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
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 62
    col: 12
    width: 12
    height: 2
  - name: SCPO - Volume Trading YTD Trend - Face To Face
    title: SCPO - Volume Trading YTD Trend - Face To Face
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
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Face to Face
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
      - id: current
        name: Current
      - id: last_year
        name: Last Year
      - id: forecast
        name: Forecast
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 64
    col: 0
    width: 12
    height: 6
  - name: SCPO - Volume TW vs Forecast
    title: SCPO - Volume TW vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
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
    conditional_formatting_ignored_fields: []
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
      bold: false
      italic: false
      strikethrough: false
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
      bold: false
      italic: false
      strikethrough: false
    hidden_fields: []
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 2
    col: 0
    width: 12
    height: 2
  - name: SCPO - AATV TW vs Forecast
    title: SCPO - AATV TW vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
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
    conditional_formatting_ignored_fields: []
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
      bold: false
      italic: false
      strikethrough: false
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
      bold: false
      italic: false
      strikethrough: false
    hidden_fields:
    - new_business_sale.volume_actual_trdwk_vs_fcast
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 2
    col: 12
    width: 12
    height: 2
  - name: SCPO - AATV Trading YTD Trend - Face To Face
    title: SCPO - AATV Trading YTD Trend - Face To Face
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
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Face to Face
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
      - id: last_year
        name: Last Year
      - id: forecast
        name: Forecast
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 64
    col: 12
    width: 12
    height: 6
  - name: SCPO - Waterfall AATV Effect
    title: SCPO - Waterfall AATV Effect
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_column
    fields:
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_ly
    - new_business_sale.volume_actual_trdwk_minus_ly
    - new_business_sale.volume_actual_trdwk_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_ly
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_minus_ly
    - sales_channel.sales_channel_lvl1_full_desc
    filters:
      new_business_sale.date_filter_parameter: 2017/07/05
      new_business_sale.split_by_filter: Sales Channel Level 1
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - sales_channel.sales_channel_lvl1_full_desc
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - table_calculation: volume_trading_wk_ly
      label: Volume Trading WK LY %
      expression: "${new_business_sale.volume_actual_trdwk_ly}/ ${new_business_sale.volume_actual_trdwk_ly:total}"
      value_format:
      value_format_name: decimal_4
    - table_calculation: aatv_weighted_wk_ly
      label: AATV Weighted WK LY
      expression: sum(${new_business_sale.aatv_actual_trdwk_ly} * ${volume_trading_wk_ly})
      value_format:
      value_format_name:
    - table_calculation: volume_trading_wk
      label: Volume Trading WK %
      expression: "${new_business_sale.volume_actual_trdwk}/ ${new_business_sale.volume_actual_trdwk:total}"
      value_format:
      value_format_name: decimal_4
    - table_calculation: aatv_weighted_wk_wk_ly
      label: AATV Weighted WK - WK LY
      expression: sum(${new_business_sale.aatv_actual_trdwk_minus_ly} * ${volume_trading_wk})
      value_format:
      value_format_name: decimal_4
    - table_calculation: volume_effect
      label: Volume Effect
      expression: "${new_business_sale.volume_actual_trdwk_minus_ly:total}* ${aatv_weighted_wk_ly}"
      value_format:
      value_format_name: decimal_2
    - table_calculation: price_effect
      label: Price Effect
      expression: "${new_business_sale.volume_actual_trdwk:total} * ${aatv_weighted_wk_wk_ly}"
      value_format:
      value_format_name: decimal_2
    - table_calculation: mix_effect
      label: Mix Effect
      expression: " ${new_business_sale.agcp_actual_trdwk:total} - ${new_business_sale.agcp_actual_trdwk_ly:total}\
        \ - ${volume_effect} - ${price_effect}"
      value_format:
      value_format_name: decimal_2
    - table_calculation: offset
      label: Offset
      expression: "if(${row}=2,\n  if(${volume_effect}<0,${new_business_sale.agcp_actual_trdwk_ly:total}+${volume_effect},\n\
        \    ${new_business_sale.agcp_actual_trdwk_ly:total}),\nif(${row}=3,  \n \
        \ if(${price_effect}<0,${new_business_sale.agcp_actual_trdwk_ly:total}+${volume_effect}+${price_effect},${new_business_sale.agcp_actual_trdwk_ly:total}+${volume_effect}),\n\
        if(${row}=4,  \n  if(${mix_effect}<0,${new_business_sale.agcp_actual_trdwk_ly:total}+${volume_effect}+${price_effect}+${mix_effect},\n\
        \    ${new_business_sale.agcp_actual_trdwk_ly:total}+${volume_effect}\n  \
        \  +${price_effect})\n  ,null)))"
      value_format:
      value_format_name: gbp
    - table_calculation: trading_week_ly
      label: Trading Week LY
      expression: if(${row}=1, ${new_business_sale.agcp_actual_trdwk_ly:total}, null)
      value_format:
      value_format_name: gbp
    - table_calculation: volume_effect_positive
      label: Volume Effect (Positive)
      expression: if(${row}=2 AND ${volume_effect} >= 0, abs(${volume_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: volume_effect_negative
      label: Volume Effect (Negative)
      expression: if(${row}=2 AND ${volume_effect} < 0, abs(${volume_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: price_effect_positive
      label: Price Effect (Positive)
      expression: if(${row}=3 AND ${price_effect} >= 0, abs(${price_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: price_effect_negative
      label: Price Effect (Negative)
      expression: if(${row}=3 AND ${price_effect} < 0, abs(${price_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: mix_effect_positive
      label: Mix Effect (Positive)
      expression: if(${row}=4 AND ${mix_effect} >= 0, abs(${mix_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: mix_effect_negative
      label: Mix Effect (Negative)
      expression: if(${row}=4 AND ${mix_effect} < 0, abs(${mix_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: trading_week
      label: Trading Week
      expression: if(${row}=5, ${new_business_sale.agcp_actual_trdwk:total}, null)
      value_format:
      value_format_name: gbp
    - table_calculation: volume_effect_by_row
      label: Volume Effect by Row
      expression: "${new_business_sale.volume_actual_trdwk_minus_ly}"
      value_format:
      value_format_name: decimal_0
    - table_calculation: price_effect_by_row
      label: Price Effect by Row
      expression: "${volume_trading_wk} * ${aatv_weighted_wk_wk_ly}"
      value_format:
      value_format_name: gbp
    - table_calculation: volume_trading_wk_wk_ly
      label: Volume Trading WK - WK LY %
      expression: "${volume_trading_wk} - ${volume_trading_wk_ly}"
      value_format:
      value_format_name: decimal_4
    - table_calculation: mix_effect_by_row
      label: Mix Effect by Row
      expression: "${volume_trading_wk_wk_ly} * ${new_business_sale.aatv_actual_trdwk_ly}"
      value_format:
      value_format_name: gbp
    - table_calculation: aatv_effect_by_row
      label: AATV Effect by Row
      expression: "${price_effect_by_row} + ${mix_effect_by_row}"
      value_format:
      value_format_name: gbp
    - table_calculation: row
      label: Row
      expression: row()
      value_format:
      value_format_name:
    query_timezone: Europe/London
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
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_ly
    - new_business_sale.volume_actual_trdwk_minus_ly
    - new_business_sale.volume_actual_trdwk_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_ly
    - new_business_sale.aatv_actual_trdwk_minus_ly
    - volume_trading_wk_ly
    - aatv_weighted_wk_ly
    - volume_trading_wk
    - aatv_weighted_wk_wk_ly
    - volume_effect
    - price_effect
    - mix_effect
    - price_effect_by_row
    - volume_trading_wk_wk_ly
    - mix_effect_by_row
    - atv_effect_by_row
    - row
    - offset
    - trading_week_ly
    - volume_effect_negative
    - price_effect_positive
    - trading_week
    - mix_effect_negative
    - mix_effect_positive
    - price_effect_negative
    - volume_effect_positive
    - volume_effect_by_row
    show_dropoff: false
    series_labels:
      new_business_sale.agcp_actual_trdwk_ly: AGCP TW LY
      new_business_sale.agcp_actual_trdwk: AGCP TW
      new_business_sale.wf_volume_effect: Volume Effect
      new_business_sale.wf_price_effect: Price Effect
      new_business_sale.wf_mix_effect: Mix Effect
    series_colors: {}
    series_types: {}
    hidden_series: []
    colors:
    - 'palette: Looker Classic'
    hide_legend: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: false
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: '"£" 0.0'
      series:
      - id: aatv_effect_by_row
        name: AATV Effect by Row
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 82
    col: 6
    width: 6
    height: 6
  - name: SCPO - Waterfall Volume Effect
    title: SCPO - Waterfall Volume Effect
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_column
    fields:
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_ly
    - new_business_sale.volume_actual_trdwk_minus_ly
    - new_business_sale.volume_actual_trdwk_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_ly
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_minus_ly
    - sales_channel.sales_channel_lvl1_full_desc
    filters:
      new_business_sale.date_filter_parameter: 2017/07/05
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - sales_channel.sales_channel_lvl1_full_desc
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - table_calculation: volume_trading_wk_ly
      label: Volume Trading WK LY %
      expression: "${new_business_sale.volume_actual_trdwk_ly}/ ${new_business_sale.volume_actual_trdwk_ly:total}"
      value_format:
      value_format_name: decimal_4
    - table_calculation: aatv_weighted_wk_ly
      label: AATV Weighted WK LY
      expression: sum(${new_business_sale.aatv_actual_trdwk_ly} * ${volume_trading_wk_ly})
      value_format:
      value_format_name:
    - table_calculation: volume_trading_wk
      label: Volume Trading WK %
      expression: "${new_business_sale.volume_actual_trdwk}/ ${new_business_sale.volume_actual_trdwk:total}"
      value_format:
      value_format_name: decimal_4
    - table_calculation: aatv_weighted_wk_wk_ly
      label: AATV Weighted WK - WK LY
      expression: sum(${new_business_sale.aatv_actual_trdwk_minus_ly} * ${volume_trading_wk})
      value_format:
      value_format_name: decimal_4
    - table_calculation: volume_effect
      label: Volume Effect
      expression: "${new_business_sale.volume_actual_trdwk_minus_ly:total}* ${aatv_weighted_wk_ly}"
      value_format:
      value_format_name: decimal_2
    - table_calculation: price_effect
      label: Price Effect
      expression: "${new_business_sale.volume_actual_trdwk:total} * ${aatv_weighted_wk_wk_ly}"
      value_format:
      value_format_name: decimal_2
    - table_calculation: mix_effect
      label: Mix Effect
      expression: " ${new_business_sale.agcp_actual_trdwk:total} - ${new_business_sale.agcp_actual_trdwk_ly:total}\
        \ - ${volume_effect} - ${price_effect}"
      value_format:
      value_format_name: decimal_2
    - table_calculation: offset
      label: Offset
      expression: "if(${row}=2,\n  if(${volume_effect}<0,${new_business_sale.agcp_actual_trdwk_ly:total}+${volume_effect},\n\
        \    ${new_business_sale.agcp_actual_trdwk_ly:total}),\nif(${row}=3,  \n \
        \ if(${price_effect}<0,${new_business_sale.agcp_actual_trdwk_ly:total}+${volume_effect}+${price_effect},${new_business_sale.agcp_actual_trdwk_ly:total}+${volume_effect}),\n\
        if(${row}=4,  \n  if(${mix_effect}<0,${new_business_sale.agcp_actual_trdwk_ly:total}+${volume_effect}+${price_effect}+${mix_effect},\n\
        \    ${new_business_sale.agcp_actual_trdwk_ly:total}+${volume_effect}\n  \
        \  +${price_effect})\n  ,null)))"
      value_format:
      value_format_name: gbp
    - table_calculation: trading_week_ly
      label: Trading Week LY
      expression: if(${row}=1, ${new_business_sale.agcp_actual_trdwk_ly:total}, null)
      value_format:
      value_format_name: gbp
    - table_calculation: volume_effect_positive
      label: Volume Effect (Positive)
      expression: if(${row}=2 AND ${volume_effect} >= 0, abs(${volume_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: volume_effect_negative
      label: Volume Effect (Negative)
      expression: if(${row}=2 AND ${volume_effect} < 0, abs(${volume_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: price_effect_positive
      label: Price Effect (Positive)
      expression: if(${row}=3 AND ${price_effect} >= 0, abs(${price_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: price_effect_negative
      label: Price Effect (Negative)
      expression: if(${row}=3 AND ${price_effect} < 0, abs(${price_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: mix_effect_positive
      label: Mix Effect (Positive)
      expression: if(${row}=4 AND ${mix_effect} >= 0, abs(${mix_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: mix_effect_negative
      label: Mix Effect (Negative)
      expression: if(${row}=4 AND ${mix_effect} < 0, abs(${mix_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: trading_week
      label: Trading Week
      expression: if(${row}=5, ${new_business_sale.agcp_actual_trdwk:total}, null)
      value_format:
      value_format_name: gbp
    - table_calculation: volume_effect_by_row
      label: Volume Effect by Row
      expression: "${new_business_sale.volume_actual_trdwk_minus_ly}"
      value_format:
      value_format_name: decimal_0
    - table_calculation: price_effect_by_row
      label: Price Effect by Row
      expression: "${volume_trading_wk} * ${aatv_weighted_wk_wk_ly}"
      value_format:
      value_format_name: gbp
    - table_calculation: volume_trading_wk_wk_ly
      label: Volume Trading WK - WK LY %
      expression: "${volume_trading_wk} - ${volume_trading_wk_ly}"
      value_format:
      value_format_name: decimal_4
    - table_calculation: mix_effect_by_row
      label: Mix Effect by Row
      expression: "${volume_trading_wk_wk_ly} * ${new_business_sale.aatv_actual_trdwk_ly}"
      value_format:
      value_format_name: gbp
    - table_calculation: aatv_effect_by_row
      label: AATV Effect by Row
      expression: "${price_effect_by_row} + ${mix_effect_by_row}"
      value_format:
      value_format_name: gbp
    - table_calculation: row
      label: Row
      expression: row()
      value_format:
      value_format_name:
    query_timezone: Europe/London
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
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_ly
    - new_business_sale.volume_actual_trdwk_minus_ly
    - new_business_sale.volume_actual_trdwk_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_ly
    - new_business_sale.aatv_actual_trdwk_minus_ly
    - volume_trading_wk_ly
    - aatv_weighted_wk_ly
    - volume_trading_wk
    - aatv_weighted_wk_wk_ly
    - volume_effect
    - price_effect
    - mix_effect
    - price_effect_by_row
    - volume_trading_wk_wk_ly
    - mix_effect_by_row
    - atv_effect_by_row
    - row
    - offset
    - trading_week_ly
    - volume_effect_negative
    - price_effect_positive
    - trading_week
    - mix_effect_negative
    - mix_effect_positive
    - price_effect_negative
    - volume_effect_positive
    - aatv_effect_by_row
    show_dropoff: false
    series_labels:
      new_business_sale.agcp_actual_trdwk_ly: AGCP TW LY
      new_business_sale.agcp_actual_trdwk: AGCP TW
      new_business_sale.wf_volume_effect: Volume Effect
      new_business_sale.wf_price_effect: Price Effect
      new_business_sale.wf_mix_effect: Mix Effect
    series_colors: {}
    series_types: {}
    hidden_series: []
    colors:
    - 'palette: Looker Classic'
    hide_legend: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: false
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat: 0.0," K"
      series:
      - id: volume_effect_by_row
        name: Volume Effect by Row
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 82
    col: 0
    width: 6
    height: 6
  - name: SCPO - Waterfall Price Effect
    title: SCPO - Waterfall Price Effect
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_column
    fields:
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_ly
    - new_business_sale.volume_actual_trdwk_minus_ly
    - new_business_sale.volume_actual_trdwk_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_ly
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_minus_ly
    - sales_channel.sales_channel_lvl1_full_desc
    filters:
      new_business_sale.date_filter_parameter: 2017/07/05
      new_business_sale.split_by_filter: Sales Channel Level 1
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - sales_channel.sales_channel_lvl1_full_desc
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - table_calculation: volume_trading_wk_ly
      label: Volume Trading WK LY %
      expression: "${new_business_sale.volume_actual_trdwk_ly}/ ${new_business_sale.volume_actual_trdwk_ly:total}"
      value_format:
      value_format_name: decimal_4
    - table_calculation: aatv_weighted_wk_ly
      label: AATV Weighted WK LY
      expression: sum(${new_business_sale.aatv_actual_trdwk_ly} * ${volume_trading_wk_ly})
      value_format:
      value_format_name:
    - table_calculation: volume_trading_wk
      label: Volume Trading WK %
      expression: "${new_business_sale.volume_actual_trdwk}/ ${new_business_sale.volume_actual_trdwk:total}"
      value_format:
      value_format_name: decimal_4
    - table_calculation: aatv_weighted_wk_wk_ly
      label: AATV Weighted WK - WK LY
      expression: sum(${new_business_sale.aatv_actual_trdwk_minus_ly} * ${volume_trading_wk})
      value_format:
      value_format_name: decimal_4
    - table_calculation: volume_effect
      label: Volume Effect
      expression: "${new_business_sale.volume_actual_trdwk_minus_ly:total}* ${aatv_weighted_wk_ly}"
      value_format:
      value_format_name: decimal_2
    - table_calculation: price_effect
      label: Price Effect
      expression: "${new_business_sale.volume_actual_trdwk:total} * ${aatv_weighted_wk_wk_ly}"
      value_format:
      value_format_name: decimal_2
    - table_calculation: mix_effect
      label: Mix Effect
      expression: " ${new_business_sale.agcp_actual_trdwk:total} - ${new_business_sale.agcp_actual_trdwk_ly:total}\
        \ - ${volume_effect} - ${price_effect}"
      value_format:
      value_format_name: decimal_2
    - table_calculation: offset
      label: Offset
      expression: "if(${row}=2,\n  if(${volume_effect}<0,${new_business_sale.agcp_actual_trdwk_ly:total}+${volume_effect},\n\
        \    ${new_business_sale.agcp_actual_trdwk_ly:total}),\nif(${row}=3,  \n \
        \ if(${price_effect}<0,${new_business_sale.agcp_actual_trdwk_ly:total}+${volume_effect}+${price_effect},${new_business_sale.agcp_actual_trdwk_ly:total}+${volume_effect}),\n\
        if(${row}=4,  \n  if(${mix_effect}<0,${new_business_sale.agcp_actual_trdwk_ly:total}+${volume_effect}+${price_effect}+${mix_effect},\n\
        \    ${new_business_sale.agcp_actual_trdwk_ly:total}+${volume_effect}\n  \
        \  +${price_effect})\n  ,null)))"
      value_format:
      value_format_name: gbp
    - table_calculation: trading_week_ly
      label: Trading Week LY
      expression: if(${row}=1, ${new_business_sale.agcp_actual_trdwk_ly:total}, null)
      value_format:
      value_format_name: gbp
    - table_calculation: volume_effect_positive
      label: Volume Effect (Positive)
      expression: if(${row}=2 AND ${volume_effect} >= 0, abs(${volume_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: volume_effect_negative
      label: Volume Effect (Negative)
      expression: if(${row}=2 AND ${volume_effect} < 0, abs(${volume_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: price_effect_positive
      label: Price Effect (Positive)
      expression: if(${row}=3 AND ${price_effect} >= 0, abs(${price_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: price_effect_negative
      label: Price Effect (Negative)
      expression: if(${row}=3 AND ${price_effect} < 0, abs(${price_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: mix_effect_positive
      label: Mix Effect (Positive)
      expression: if(${row}=4 AND ${mix_effect} >= 0, abs(${mix_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: mix_effect_negative
      label: Mix Effect (Negative)
      expression: if(${row}=4 AND ${mix_effect} < 0, abs(${mix_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: trading_week
      label: Trading Week
      expression: if(${row}=5, ${new_business_sale.agcp_actual_trdwk:total}, null)
      value_format:
      value_format_name: gbp
    - table_calculation: volume_effect_by_row
      label: Volume Effect by Row
      expression: "${new_business_sale.volume_actual_trdwk_minus_ly}"
      value_format:
      value_format_name: decimal_0
    - table_calculation: price_effect_by_row
      label: Price Effect by Row
      expression: "${volume_trading_wk} * ${aatv_weighted_wk_wk_ly}"
      value_format:
      value_format_name: gbp
    - table_calculation: volume_trading_wk_wk_ly
      label: Volume Trading WK - WK LY %
      expression: "${volume_trading_wk} - ${volume_trading_wk_ly}"
      value_format:
      value_format_name: decimal_4
    - table_calculation: mix_effect_by_row
      label: Mix Effect by Row
      expression: "${volume_trading_wk_wk_ly} * ${new_business_sale.aatv_actual_trdwk_ly}"
      value_format:
      value_format_name: gbp
    - table_calculation: aatv_effect_by_row
      label: AATV Effect by Row
      expression: "${price_effect_by_row} + ${mix_effect_by_row}"
      value_format:
      value_format_name: gbp
    - table_calculation: row
      label: Row
      expression: row()
      value_format:
      value_format_name:
    query_timezone: Europe/London
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
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_ly
    - new_business_sale.volume_actual_trdwk_minus_ly
    - new_business_sale.volume_actual_trdwk_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_ly
    - new_business_sale.aatv_actual_trdwk_minus_ly
    - volume_trading_wk_ly
    - aatv_weighted_wk_ly
    - volume_trading_wk
    - aatv_weighted_wk_wk_ly
    - volume_effect
    - price_effect
    - mix_effect
    - volume_trading_wk_wk_ly
    - mix_effect_by_row
    - atv_effect_by_row
    - row
    - offset
    - trading_week_ly
    - volume_effect_negative
    - price_effect_positive
    - trading_week
    - mix_effect_negative
    - mix_effect_positive
    - price_effect_negative
    - volume_effect_positive
    - volume_effect_by_row
    - aatv_effect_by_row
    show_dropoff: false
    series_labels:
      new_business_sale.agcp_actual_trdwk_ly: AGCP TW LY
      new_business_sale.agcp_actual_trdwk: AGCP TW
      new_business_sale.wf_volume_effect: Volume Effect
      new_business_sale.wf_price_effect: Price Effect
      new_business_sale.wf_mix_effect: Mix Effect
    series_colors: {}
    series_types: {}
    hidden_series: []
    colors:
    - 'palette: Looker Classic'
    hide_legend: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: false
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: '"£" 0.0'
      series:
      - id: price_effect_by_row
        name: Price Effect by Row
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 82
    col: 12
    width: 6
    height: 6
  - name: SCPO - Waterfall Mix Effect
    title: SCPO - Waterfall Mix Effect
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_column
    fields:
    - sales_channel.sales_channel_lvl1_full_desc
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_ly
    - new_business_sale.volume_actual_trdwk_minus_ly
    - new_business_sale.volume_actual_trdwk_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_ly
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_minus_ly
    filters:
      new_business_sale.date_filter_parameter: 2017/07/05
      new_business_sale.split_by_filter: Sales Channel Level 1
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - sales_channel.sales_channel_lvl1_full_desc
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - table_calculation: volume_trading_wk_ly
      label: Volume Trading WK LY %
      expression: "${new_business_sale.volume_actual_trdwk_ly}/ ${new_business_sale.volume_actual_trdwk_ly:total}"
      value_format:
      value_format_name: decimal_4
    - table_calculation: aatv_weighted_wk_ly
      label: AATV Weighted WK LY
      expression: sum(${new_business_sale.aatv_actual_trdwk_ly} * ${volume_trading_wk_ly})
      value_format:
      value_format_name:
    - table_calculation: volume_trading_wk
      label: Volume Trading WK %
      expression: "${new_business_sale.volume_actual_trdwk}/ ${new_business_sale.volume_actual_trdwk:total}"
      value_format:
      value_format_name: decimal_4
    - table_calculation: aatv_weighted_wk_wk_ly
      label: AATV Weighted WK - WK LY
      expression: sum(${new_business_sale.aatv_actual_trdwk_minus_ly} * ${volume_trading_wk})
      value_format:
      value_format_name: decimal_4
    - table_calculation: volume_effect
      label: Volume Effect
      expression: "${new_business_sale.volume_actual_trdwk_minus_ly:total}* ${aatv_weighted_wk_ly}"
      value_format:
      value_format_name: decimal_2
    - table_calculation: price_effect
      label: Price Effect
      expression: "${new_business_sale.volume_actual_trdwk:total} * ${aatv_weighted_wk_wk_ly}"
      value_format:
      value_format_name: decimal_2
    - table_calculation: mix_effect
      label: Mix Effect
      expression: " ${new_business_sale.agcp_actual_trdwk:total} - ${new_business_sale.agcp_actual_trdwk_ly:total}\
        \ - ${volume_effect} - ${price_effect}"
      value_format:
      value_format_name: decimal_2
    - table_calculation: offset
      label: Offset
      expression: "if(${row}=2,\n  if(${volume_effect}<0,${new_business_sale.agcp_actual_trdwk_ly:total}+${volume_effect},\n\
        \    ${new_business_sale.agcp_actual_trdwk_ly:total}),\nif(${row}=3,  \n \
        \ if(${price_effect}<0,${new_business_sale.agcp_actual_trdwk_ly:total}+${volume_effect}+${price_effect},${new_business_sale.agcp_actual_trdwk_ly:total}+${volume_effect}),\n\
        if(${row}=4,  \n  if(${mix_effect}<0,${new_business_sale.agcp_actual_trdwk_ly:total}+${volume_effect}+${price_effect}+${mix_effect},\n\
        \    ${new_business_sale.agcp_actual_trdwk_ly:total}+${volume_effect}\n  \
        \  +${price_effect})\n  ,null)))"
      value_format:
      value_format_name: gbp
    - table_calculation: trading_week_ly
      label: Trading Week LY
      expression: if(${row}=1, ${new_business_sale.agcp_actual_trdwk_ly:total}, null)
      value_format:
      value_format_name: gbp
    - table_calculation: volume_effect_positive
      label: Volume Effect (Positive)
      expression: if(${row}=2 AND ${volume_effect} >= 0, abs(${volume_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: volume_effect_negative
      label: Volume Effect (Negative)
      expression: if(${row}=2 AND ${volume_effect} < 0, abs(${volume_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: price_effect_positive
      label: Price Effect (Positive)
      expression: if(${row}=3 AND ${price_effect} >= 0, abs(${price_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: price_effect_negative
      label: Price Effect (Negative)
      expression: if(${row}=3 AND ${price_effect} < 0, abs(${price_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: mix_effect_positive
      label: Mix Effect (Positive)
      expression: if(${row}=4 AND ${mix_effect} >= 0, abs(${mix_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: mix_effect_negative
      label: Mix Effect (Negative)
      expression: if(${row}=4 AND ${mix_effect} < 0, abs(${mix_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: trading_week
      label: Trading Week
      expression: if(${row}=5, ${new_business_sale.agcp_actual_trdwk:total}, null)
      value_format:
      value_format_name: gbp
    - table_calculation: volume_effect_by_row
      label: Volume Effect by Row
      expression: "${new_business_sale.volume_actual_trdwk_minus_ly}"
      value_format:
      value_format_name: decimal_0
    - table_calculation: price_effect_by_row
      label: Price Effect by Row
      expression: "${volume_trading_wk} * ${aatv_weighted_wk_wk_ly}"
      value_format:
      value_format_name: gbp
    - table_calculation: volume_trading_wk_wk_ly
      label: Volume Trading WK - WK LY %
      expression: "${volume_trading_wk} - ${volume_trading_wk_ly}"
      value_format:
      value_format_name: decimal_4
    - table_calculation: mix_effect_by_row
      label: Mix Effect by Row
      expression: "${volume_trading_wk_wk_ly} * ${new_business_sale.aatv_actual_trdwk_ly}"
      value_format:
      value_format_name: gbp
    - table_calculation: aatv_effect_by_row
      label: AATV Effect by Row
      expression: "${price_effect_by_row} + ${mix_effect_by_row}"
      value_format:
      value_format_name: gbp
    - table_calculation: row
      label: Row
      expression: row()
      value_format:
      value_format_name:
    query_timezone: Europe/London
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
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_ly
    - new_business_sale.volume_actual_trdwk_minus_ly
    - new_business_sale.volume_actual_trdwk_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_ly
    - new_business_sale.aatv_actual_trdwk_minus_ly
    - volume_trading_wk_ly
    - aatv_weighted_wk_ly
    - volume_trading_wk
    - aatv_weighted_wk_wk_ly
    - volume_effect
    - price_effect
    - mix_effect
    - volume_trading_wk_wk_ly
    - atv_effect_by_row
    - row
    - offset
    - trading_week_ly
    - volume_effect_negative
    - price_effect_positive
    - trading_week
    - mix_effect_negative
    - mix_effect_positive
    - price_effect_negative
    - volume_effect_positive
    - volume_effect_by_row
    - aatv_effect_by_row
    - price_effect_by_row
    show_dropoff: false
    series_labels:
      new_business_sale.agcp_actual_trdwk_ly: AGCP TW LY
      new_business_sale.agcp_actual_trdwk: AGCP TW
      new_business_sale.wf_volume_effect: Volume Effect
      new_business_sale.wf_price_effect: Price Effect
      new_business_sale.wf_mix_effect: Mix Effect
    series_colors: {}
    series_types: {}
    hidden_series: []
    colors:
    - 'palette: Looker Classic'
    hide_legend: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: false
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: '"£" 0.0'
      series:
      - id: mix_effect_by_row
        name: Mix Effect by Row
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Accounting Treatment: new_business_sale.accounting_treatmenr
      Policy Type: policy_type.policy_type_lvl2_full_desc
    row: 82
    col: 18
    width: 6
    height: 6
  filters:
  - name: Sales performance to end of date
    title: Sales performance to end of date
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
    allow_multiple_values: true