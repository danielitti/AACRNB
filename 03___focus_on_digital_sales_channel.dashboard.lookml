- dashboard: 03___focus_on_digital_sales_channel
  title: 03. 💻 Focus on Digital sales channel
  layout: newspaper
  elements:
  - name: 'Performance to end of :'
    type: text
    title_text: 'Performance to end of :'
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
  - name: AATV
    type: text
    title_text: AATV
    subtitle_text: Annualised Average Transaction Value (= AGCP / Volume)
    body_text: ''
    row: 4
    col: 16
    width: 8
    height: 2
  - name: Volume
    type: text
    title_text: Volume
    subtitle_text: New policy sales, gross of cooling off cancellations
    row: 4
    col: 8
    width: 8
    height: 2
  - name: AGCP - (Digital Sales Channel Only)
    type: text
    title_text: AGCP - (Digital Sales Channel Only)
    subtitle_text: Annualised Product and Add-on Gross Customer Premium
    body_text: ''
    row: 4
    col: 0
    width: 8
    height: 2
  - name: Split by Marketing Channel_1
    type: text
    title_text: Split by Marketing Channel
    subtitle_text: 'Note: this section is driven by the "Marketing Channel Level 1"
      Dashboard Filter'
    row: 14
    col: 0
    width: 24
    height: 2
  - name: To follow
    type: text
    title_text: To follow
    subtitle_text: TW CPA vs Forecast
    row: 2
    col: 20
    width: 4
    height: 2
  - name: CPA_1
    type: text
    title_text: CPA
    subtitle_text: Placeholder
    row: 43
    col: 16
    width: 8
    height: 8
  - name: Digital Visits
    type: text
    title_text: Digital Visits
    subtitle_text: Visits to the Consumer Road New Business pages
    row: 41
    col: 0
    width: 8
    height: 2
  - name: Conversion Rate
    type: text
    title_text: Conversion Rate
    subtitle_text: 100 * Digital Paid Sales / Visits to the Consumer Road New Business
      pages
    row: 41
    col: 8
    width: 8
    height: 2
  - name: CPA_2
    type: text
    title_text: CPA
    subtitle_text: Cost Per Acquisition
    row: 41
    col: 16
    width: 8
    height: 2
  - name: Split by Device Type_1
    type: text
    title_text: Split by Device Type
    subtitle_text: 'Note: this section is for the Digital Marketing Channel only'
    row: 29
    col: 0
    width: 24
    height: 2
  - name: Split by Marketing Channel_2
    type: text
    title_text: Split by Marketing Channel
    subtitle_text: 'Note : this section is driven by the "Marketing Channel Level
      1" Dashboard Filter'
    row: 51
    col: 0
    width: 24
    height: 2
  - name: Split by Device Type_2
    type: text
    title_text: Split by Device Type
    subtitle_text: 'Note: this section is for the Digital Marketing Channel only'
    row: 65
    col: 0
    width: 24
    height: 2
  - name: CPA_3
    type: text
    title_text: CPA
    subtitle_text: Placeholder
    row: 53
    col: 16
    width: 8
    height: 12
  - name: CPA_4
    type: text
    title_text: CPA
    subtitle_text: Placeholder
    row: 67
    col: 16
    width: 8
    height: 11
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
    row: 0
    col: 4
    width: 4
    height: 2
  - title: DSC - AGCP TW vs Forecast
    name: DSC - AGCP TW vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_fytd_vs_fcast
    - new_business_sale.digital_visit_actual_trdwk
    - new_business_sale.digital_visit_actual_trdwk_vs_ly
    - new_business_sale.digital_visit_actual_fytd
    - new_business_sale.digital_visit_actual_fytd_vs_ly
    - new_business_sale.digital_cr_actual_trdwk
    - new_business_sale.digital_cr_actual_trdwk_vs_ly
    - new_business_sale.digital_cr_actual_fytd
    - new_business_sale.digital_cr_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 2017/08/02
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Digital
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
    single_value_title: TW AGCP vs Forecast
    value_format: "+0.0%;-0.0%"
    hidden_fields:
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 2
    col: 0
    width: 4
    height: 2
  - title: DSC - Volume TW vs Forecast
    name: DSC - Volume TW vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.volume_actual_fytd_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: 2017/07/05
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl1_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Digital
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
    hidden_fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    single_value_title: TW Volume vs Forecast
    value_format: "+0.0%;-0.0%"
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 2
    col: 4
    width: 4
    height: 2
  - title: DSC - AATV TW vs Forecast
    name: DSC - AATV TW vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: 2017/07/12
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      sales_channel.sales_channel_lvl1_full_desc: Digital
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
    single_value_title: TW AATV vs Forecast
    value_format: "+0.0%;-0.0%"
    hidden_fields:
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 2
    col: 8
    width: 4
    height: 2
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
    row: 0
    col: 12
    width: 4
    height: 2
  - title: DSC - Volume Metrics
    name: DSC - Volume Metrics
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_fytd_vs_fcast
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.volume_actual_fytd_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: 2017/07/26
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
    - new_business_sale.agcp_actual_trdwk
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 524
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 519
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 541
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 536
    hidden_fields:
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_fytd_vs_ly
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
    note_state: collapsed
    note_display: hover
    note_text: ''
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 6
    col: 8
    width: 8
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
    row: 0
    col: 16
    width: 4
    height: 2
  - title: DSC - AATV Metrics
    name: DSC - AATV Metrics
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 722
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 717
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 739
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 734
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
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 6
    col: 16
    width: 8
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
    row: 0
    col: 20
    width: 4
    height: 2
  - title: DSC - AGCP Trading YTD Trend
    name: DSC - AGCP Trading YTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.agcp_actual_trdytd
    - new_business_sale.agcp_actual_trdy_ly
    - new_business_sale.agcp_fcast_trdy
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
      expression: if(${new_business_sale.agcp_actual_trdytd}=0, null, ${new_business_sale.agcp_actual_trdytd})
      value_format:
      value_format_name: gbp_0
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.agcp_actual_trdy_ly}=0, null, ${new_business_sale.agcp_actual_trdy_ly})
      value_format:
      value_format_name: gbp_0
    - table_calculation: forecast
      label: Forecast
      expression: if(${new_business_sale.agcp_fcast_trdy}=0, null, ${new_business_sale.agcp_fcast_trdy})
      value_format:
      value_format_name: gbp_0
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
    - new_business_sale.agcp_actual_trdytd
    - new_business_sale.agcp_actual_trdy_ly
    - new_business_sale.agcp_fcast_trdy
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
      valueFormat: '"£ "0.0,," M"'
      series:
      - id: current_year
        name: Current Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 934
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 938
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 942
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 922
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 8
    col: 0
    width: 8
    height: 6
  - title: DSC - Volume Trading YTD Trend
    name: DSC - Volume Trading YTD Trend
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 1059
      - id: current
        name: Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 1063
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 1067
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 1047
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 8
    col: 8
    width: 8
    height: 6
  - title: DSC - AATV Trading YTD Trend
    name: DSC - AATV Trading YTD Trend
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 1185
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 1189
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 1193
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 1173
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 8
    col: 16
    width: 8
    height: 6
  - title: DSC - AGCP Metrics by Marketing Channel
    name: DSC - AGCP Metrics by Marketing Channel
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_fytd_vs_fcast
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.volume_actual_fytd_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_fytd_vs_fcast
    - marketing_channel.marketing_channel_lvl2_desc
    filters:
      new_business_sale.date_filter_parameter: 2017/07/26
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Digital
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.agcp_actual_trdwk desc
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
    - new_business_sale.agcp_actual_trdwk
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 1300
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 1295
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 1317
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 1312
    hidden_fields:
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    series_labels:
      new_business_sale.agcp_actual_trdwk: AGCP Trading Wk
      new_business_sale.agcp_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.agcp_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.agcp_actual_fytd_vs_ly: FYTD vs LY%
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Marketing Channel Level 1: marketing_channel.marketing_channel_lvl1_desc
    row: 16
    col: 0
    width: 8
    height: 6
  - title: DSC - Volume Metrics by Marketing Channel
    name: DSC - Volume Metrics by Marketing Channel
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_fytd_vs_fcast
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.volume_actual_fytd_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_fytd_vs_fcast
    - marketing_channel.marketing_channel_lvl2_desc
    filters:
      new_business_sale.date_filter_parameter: 2017/07/26
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Digital
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.agcp_actual_trdwk desc
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
    - new_business_sale.agcp_actual_trdwk
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 1451
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 1446
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 1468
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 1463
    hidden_fields:
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_fytd_vs_ly
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Marketing Channel Level 1: marketing_channel.marketing_channel_lvl1_desc
    row: 16
    col: 8
    width: 8
    height: 6
  - title: DSC - AATV Metrics by Marketing Channel
    name: DSC - AATV Metrics by Marketing Channel
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_fytd_vs_fcast
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.volume_actual_fytd_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_fytd_vs_fcast
    - marketing_channel.marketing_channel_lvl2_desc
    filters:
      new_business_sale.date_filter_parameter: 2017/07/26
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Digital
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.agcp_actual_trdwk desc
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
    - new_business_sale.agcp_actual_trdwk
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 1602
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 1597
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 1619
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 1614
    hidden_fields:
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    series_labels:
      new_business_sale.aatv_actual_trdwk: AATV Trading Wk
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY%
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Marketing Channel Level 1: marketing_channel.marketing_channel_lvl1_desc
    row: 16
    col: 16
    width: 8
    height: 6
  - title: DSC - Visits TW vs LY
    name: DSC - Visits TW vs LY
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_fytd_vs_fcast
    - new_business_sale.digital_visit_actual_trdwk
    - new_business_sale.digital_visit_actual_trdwk_vs_ly
    - new_business_sale.digital_visit_actual_fytd
    - new_business_sale.digital_visit_actual_fytd_vs_ly
    - new_business_sale.digital_cr_actual_trdwk
    - new_business_sale.digital_cr_actual_trdwk_vs_ly
    - new_business_sale.digital_cr_actual_fytd
    - new_business_sale.digital_cr_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 2017/07/05
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_full_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      sales_channel.sales_channel_lvl1_full_desc: Digital
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
    single_value_title: TW Visits vs LY
    value_format: "+0.0%;-0.0%"
    hidden_fields:
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_fytd_vs_fcast
    - new_business_sale.digital_visit_actual_trdwk
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 2
    col: 12
    width: 4
    height: 2
  - title: DSC - AGCP - Marketing Channel - Trading YTD Trend
    name: DSC - AGCP - Marketing Channel - Trading YTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - marketing_channel.marketing_channel_lvl2_desc
    - new_business_sale.agcp_actual_trdytd
    - new_business_sale.agcp_actual_trdy_ly
    - new_business_sale.trx_trdwk_number
    pivots:
    - marketing_channel.marketing_channel_lvl2_desc
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Digital
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
      expression: if(${new_business_sale.agcp_actual_trdytd}=0, null, ${new_business_sale.agcp_actual_trdytd})
      value_format:
      value_format_name: gbp_0
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.agcp_actual_trdy_ly}=0, null, ${new_business_sale.agcp_actual_trdy_ly})
      value_format:
      value_format_name: gbp_0
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
    - new_business_sale.agcp_actual_trdytd
    - new_business_sale.agcp_actual_trdy_ly
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
      valueFormat: '"£ "0.0,," M"'
      series:
      - id: AA.com - Current
        name: AA.com - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 1828
      - id: AA.com - Last Year
        name: AA.com - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 1832
      - id: Affiliates - Current
        name: Affiliates - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 1836
      - id: Affiliates - Last Year
        name: Affiliates - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 1840
      - id: Direct, including MyAA - Current
        name: Direct, including MyAA - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 1844
      - id: Direct, including MyAA - Last Year
        name: Direct, including MyAA - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 1848
      - id: PPC - Current
        name: PPC - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 1852
      - id: PPC - Last Year
        name: PPC - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 1856
      - id: SEO - Current
        name: SEO - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 1860
      - id: SEO - Last Year
        name: SEO - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 1864
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 1816
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
      Marketing Channel Level 1: marketing_channel.marketing_channel_lvl1_desc
    row: 22
    col: 0
    width: 8
    height: 7
  - title: DSC - Volume - Marketing Channel - Trading YTD Trend
    name: DSC - Volume - Marketing Channel - Trading YTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.volume_actual_trdytd
    - new_business_sale.volume_actual_trdy_ly
    - marketing_channel.marketing_channel_lvl2_desc
    - new_business_sale.trx_trdwk_number
    pivots:
    - marketing_channel.marketing_channel_lvl2_desc
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Digital
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 1988
      - id: AA.com - Last Year
        name: AA.com - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 1992
      - id: Affiliates - Current
        name: Affiliates - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 1996
      - id: Affiliates - Last Year
        name: Affiliates - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2000
      - id: Direct, including MyAA - Current
        name: Direct, including MyAA - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2004
      - id: Direct, including MyAA - Last Year
        name: Direct, including MyAA - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2008
      - id: PPC - Current
        name: PPC - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2012
      - id: PPC - Last Year
        name: PPC - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2016
      - id: SEO - Current
        name: SEO - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2020
      - id: SEO - Last Year
        name: SEO - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2024
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 1976
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
      Marketing Channel Level 1: marketing_channel.marketing_channel_lvl1_desc
    row: 22
    col: 8
    width: 8
    height: 7
  - title: DSC - AATV - Marketing Channel - Trading YTD Trend
    name: DSC - AATV - Marketing Channel - Trading YTD Trend
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
      marketing_channel.marketing_channel_lvl1_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Digital
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2148
      - id: AA.com - Last Year
        name: AA.com - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2152
      - id: Affiliates - Current
        name: Affiliates - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2156
      - id: Affiliates - Last Year
        name: Affiliates - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2160
      - id: PPC - Current
        name: PPC - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2164
      - id: PPC - Last Year
        name: PPC - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2168
      - id: SEO - Current
        name: SEO - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2172
      - id: SEO - Last Year
        name: SEO - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2176
      - id: Digital Marketing - Email - Current
        name: Digital Marketing - Email - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2180
      - id: Digital Marketing - Email - Last Year
        name: Digital Marketing - Email - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2184
      - id: My AA - Current
        name: My AA - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2188
      - id: My AA - Last Year
        name: My AA - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2192
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 2136
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
      Marketing Channel Level 1: marketing_channel.marketing_channel_lvl1_desc
    row: 22
    col: 16
    width: 8
    height: 7
  - title: DSC - AGCP Metrics by Device Type
    name: DSC - AGCP Metrics by Device Type
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_fytd_vs_fcast
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.volume_actual_fytd_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_fytd_vs_fcast
    - device_type.device_type_desc
    filters:
      new_business_sale.date_filter_parameter: 2017/07/26
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Digital
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.agcp_actual_trdwk desc
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
    - new_business_sale.agcp_actual_trdwk
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2307
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 2302
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2324
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 2319
    hidden_fields:
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    series_labels:
      new_business_sale.agcp_actual_trdwk: AGCP Trading Wk
      new_business_sale.agcp_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.agcp_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.agcp_actual_fytd_vs_ly: FYTD vs LY%
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 31
    col: 0
    width: 8
    height: 4
  - title: DSC - Volume Metrics by Device Type
    name: DSC - Volume Metrics by Device Type
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fytd_vs_ly
    - device_type.device_type_desc
    filters:
      new_business_sale.date_filter_parameter: 2017/07/26
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Digital
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.agcp_actual_trdwk desc
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
    - new_business_sale.agcp_actual_trdwk
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2451
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 2446
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2468
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 2463
    hidden_fields:
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.volume_actual_fytd
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_fytd_vs_ly
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 31
    col: 8
    width: 8
    height: 4
  - title: DSC - AATV Metrics by Device Type
    name: DSC - AATV Metrics by Device Type
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_fytd_vs_fcast
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.volume_actual_fytd_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_fytd_vs_fcast
    - device_type.device_type_desc
    filters:
      new_business_sale.date_filter_parameter: 2017/07/26
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Digital
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.agcp_actual_trdwk desc
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
    - new_business_sale.agcp_actual_trdwk
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2594
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 2589
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2611
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 2606
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2628
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 2623
    hidden_fields:
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    series_labels:
      new_business_sale.aatv_actual_trdwk: AATV Trading Wk
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY%
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 31
    col: 16
    width: 8
    height: 4
  - title: DSC - AGCP - Device Type - Trading YTD Trend
    name: DSC - AGCP - Device Type - Trading YTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - device_type.device_type_desc
    - new_business_sale.agcp_actual_trdytd
    - new_business_sale.agcp_actual_trdy_ly
    - new_business_sale.trx_trdwk_number
    pivots:
    - device_type.device_type_desc
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_full_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Digital
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - device_type.device_type_desc 0
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.agcp_actual_trdytd}=0, null, ${new_business_sale.agcp_actual_trdytd})
      value_format:
      value_format_name: gbp_0
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.agcp_actual_trdy_ly}=0, null, ${new_business_sale.agcp_actual_trdy_ly})
      value_format:
      value_format_name: gbp_0
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
    - new_business_sale.agcp_actual_trdytd
    - new_business_sale.agcp_actual_trdy_ly
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
      valueFormat: '"£ "0.0,," M"'
      series:
      - id: Desktop - Current
        name: Desktop - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2768
      - id: Desktop - Last Year
        name: Desktop - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2772
      - id: Mobile - Current
        name: Mobile - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2776
      - id: Mobile - Last Year
        name: Mobile - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2780
      - id: Tablet - Current
        name: Tablet - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2784
      - id: Tablet - Last Year
        name: Tablet - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2788
      - id: Unknown - Current
        name: Unknown - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2792
      - id: Unknown - Last Year
        name: Unknown - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2796
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 2756
    hidden_series:
    - Desktop - Last Year
    - Mobile - Last Year
    - Tablet - Last Year
    - Unknown - Last Year
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 35
    col: 0
    width: 8
    height: 6
  - title: DSC - Volume - Device Type - Trading YTD Trend
    name: DSC - Volume - Device Type - Trading YTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - device_type.device_type_desc
    - new_business_sale.volume_actual_trdytd
    - new_business_sale.volume_actual_trdy_ly
    - new_business_sale.trx_trdwk_number
    pivots:
    - device_type.device_type_desc
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Digital
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - device_type.device_type_desc 0
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
      valueFormat: 0," K"
      series:
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2916
      - id: current
        name: Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 2920
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 2904
    hidden_series:
    - Desktop - Last Year
    - Mobile - Last Year
    - Tablet - Last Year
    - Unknown - Last Year
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 35
    col: 8
    width: 8
    height: 6
  - title: DSC - AATV - Device Type - Trading YTD Trend
    name: DSC - AATV - Device Type - Trading YTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.aatv_actual_trdytd
    - new_business_sale.aatv_actual_trdy_ly
    - device_type.device_type_desc
    - new_business_sale.trx_trdwk_number
    pivots:
    - device_type.device_type_desc
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Digital
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - device_type.device_type_desc 0
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
      maxValue: 140
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3040
      - id: AA.com - Last Year
        name: AA.com - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3044
      - id: Affiliates - Current
        name: Affiliates - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3048
      - id: Affiliates - Last Year
        name: Affiliates - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3052
      - id: Direct, including MyAA - Current
        name: Direct, including MyAA - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3056
      - id: Direct, including MyAA - Last Year
        name: Direct, including MyAA - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3060
      - id: PPC - Current
        name: PPC - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3064
      - id: PPC - Last Year
        name: PPC - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3068
      - id: SEO - Current
        name: SEO - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3072
      - id: SEO - Last Year
        name: SEO - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3076
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 3028
    hidden_series:
    - Desktop - Last Year
    - Mobile - Last Year
    - Tablet - Last Year
    - Unknown - Last Year
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 35
    col: 16
    width: 8
    height: 6
  - title: DSC - Visit Metrics
    name: DSC - Visit Metrics
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.digital_visit_actual_trdwk
    - new_business_sale.digital_visit_actual_trdwk_vs_ly
    - new_business_sale.digital_visit_actual_fytd_vs_ly
    - new_business_sale.digital_cr_actual_trdwk
    - new_business_sale.digital_cr_actual_trdwk_vs_ly
    - new_business_sale.digital_cr_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_full_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Digital
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
    - new_business_sale.digital_visit_actual_trdwk
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3169
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 3164
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3186
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 3181
    hidden_fields:
    - new_business_sale.digital_cr_actual_trdwk
    - new_business_sale.digital_cr_actual_trdwk_vs_ly
    - new_business_sale.digital_cr_actual_fytd_vs_ly
    series_labels:
      new_business_sale.agcp_actual_trdwk: AGCP Trading Wk
      new_business_sale.agcp_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.agcp_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.agcp_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.digital_visit_actual_trdwk: Digital Visits Trading Wk
      new_business_sale.digital_visit_actual_trdwk_vs_ly: Trading Wk vs LY
      new_business_sale.digital_visit_actual_fytd_vs_ly: FYTD vs LY
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 43
    col: 0
    width: 8
    height: 2
  - title: DSC - Conversion Rate Metrics
    name: DSC - Conversion Rate Metrics
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.digital_visit_actual_trdwk
    - new_business_sale.digital_visit_actual_trdwk_vs_ly
    - new_business_sale.digital_visit_actual_fytd_vs_ly
    - new_business_sale.digital_cr_actual_trdwk
    - new_business_sale.digital_cr_actual_trdwk_vs_ly
    - new_business_sale.digital_cr_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_full_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Digital
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
    - new_business_sale.digital_cr_actual_trdwk
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3292
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 3287
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3309
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 3304
    hidden_fields:
    - new_business_sale.digital_visit_actual_trdwk
    - new_business_sale.digital_visit_actual_trdwk_vs_ly
    - new_business_sale.digital_visit_actual_fytd_vs_ly
    series_labels:
      new_business_sale.agcp_actual_trdwk: AGCP Trading Wk
      new_business_sale.agcp_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.agcp_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.agcp_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.digital_cr_actual_trdwk: Conv Rate Trading Week
      new_business_sale.digital_cr_actual_trdwk_vs_ly: TW vs LY
      new_business_sale.digital_cr_actual_fytd_vs_ly: FYTD  vs LY
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 43
    col: 8
    width: 8
    height: 2
  - title: DSC - Visits Trading YTD Trend
    name: DSC - Visits Trading YTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.digital_visit_actual_trdytd
    - new_business_sale.digital_visit_actual_trdy_ly
    - new_business_sale.trx_trdwk_number
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_full_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Digital
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
      expression: if(${new_business_sale.digital_visit_actual_trdytd}=0, null, ${new_business_sale.digital_visit_actual_trdytd})
      value_format:
      value_format_name: decimal_0
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.digital_visit_actual_trdy_ly}=0, null, ${new_business_sale.digital_visit_actual_trdy_ly})
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
    - new_business_sale.digital_visit_actual_trdytd
    - new_business_sale.digital_visit_actual_trdy_ly
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3437
      - id: current
        name: Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3441
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 3425
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 45
    col: 0
    width: 8
    height: 6
  - title: DSC - Conversion Rate Trading YTD Trend
    name: DSC - Conversion Rate Trading YTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.digital_cr_actual_trdytd
    - new_business_sale.digital_cr_actual_trdy_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_full_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Digital
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
      expression: if(${new_business_sale.digital_cr_actual_trdytd}=0, null, ${new_business_sale.digital_cr_actual_trdytd})
      value_format:
      value_format_name: percent_1
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.digital_cr_actual_trdy_ly}=0, null, ${new_business_sale.digital_cr_actual_trdy_ly})
      value_format:
      value_format_name: percent_1
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
    - new_business_sale.digital_cr_actual_trdytd
    - new_business_sale.digital_cr_actual_trdy_ly
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
      maxValue: 0.07
      minValue: 0.03
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: 0.0%
      series:
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3551
      - id: current
        name: Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3555
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 3539
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 45
    col: 8
    width: 8
    height: 6
  - title: DSC - Visit Metrics by Marketing Channel
    name: DSC - Visit Metrics by Marketing Channel
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.digital_visit_actual_trdwk
    - new_business_sale.digital_visit_actual_trdwk_vs_ly
    - new_business_sale.digital_visit_actual_fytd_vs_ly
    - new_business_sale.digital_cr_actual_trdwk
    - new_business_sale.digital_cr_actual_trdwk_vs_ly
    - new_business_sale.digital_cr_actual_fytd_vs_ly
    - marketing_channel.marketing_channel_lvl2_desc
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Digital
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.digital_visit_actual_trdwk desc
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
    - new_business_sale.digital_visit_actual_trdwk
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3647
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 3642
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3664
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 3659
    hidden_fields:
    - new_business_sale.digital_cr_actual_trdwk
    - new_business_sale.digital_cr_actual_trdwk_vs_ly
    - new_business_sale.digital_cr_actual_fytd_vs_ly
    series_labels:
      new_business_sale.agcp_actual_trdwk: AGCP Trading Wk
      new_business_sale.agcp_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.agcp_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.agcp_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.digital_visit_actual_trdwk: Digital Visits Trading Wk
      new_business_sale.digital_visit_actual_trdwk_vs_ly: Trading Wk vs LY
      new_business_sale.digital_visit_actual_fytd_vs_ly: FYTD vs LY
      marketing_channel.marketing_channel_lvl2_desc: Marketing Channel
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Marketing Channel Level 1: marketing_channel.marketing_channel_lvl1_desc
    row: 53
    col: 0
    width: 8
    height: 5
  - title: DSC - Conversion Rate Metrics by Marketing Channel
    name: DSC - Conversion Rate Metrics by Marketing Channel
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.digital_visit_actual_trdwk
    - new_business_sale.digital_visit_actual_trdwk_vs_ly
    - new_business_sale.digital_visit_actual_fytd_vs_ly
    - new_business_sale.digital_cr_actual_trdwk
    - new_business_sale.digital_cr_actual_trdwk_vs_ly
    - new_business_sale.digital_cr_actual_fytd_vs_ly
    - marketing_channel.marketing_channel_lvl2_desc
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Digital
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.digital_visit_actual_trdwk desc
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
    - new_business_sale.digital_cr_actual_trdwk
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3776
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 3771
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3793
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 3788
    hidden_fields:
    - new_business_sale.digital_visit_actual_trdwk
    - new_business_sale.digital_visit_actual_trdwk_vs_ly
    - new_business_sale.digital_visit_actual_fytd_vs_ly
    series_labels:
      new_business_sale.agcp_actual_trdwk: AGCP Trading Wk
      new_business_sale.agcp_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.agcp_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.agcp_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.digital_cr_actual_trdwk: Conv Rate Trading Week
      new_business_sale.digital_cr_actual_trdwk_vs_ly: TW vs LY
      new_business_sale.digital_cr_actual_fytd_vs_ly: FYTD  vs LY
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Marketing Channel Level 1: marketing_channel.marketing_channel_lvl1_desc
    row: 53
    col: 8
    width: 8
    height: 5
  - title: DSC - Visits - Marketing Channel - Trading YTD Trend
    name: DSC - Visits - Marketing Channel - Trading YTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.digital_visit_actual_trdytd
    - new_business_sale.digital_visit_actual_trdy_ly
    - marketing_channel.marketing_channel_lvl2_desc
    pivots:
    - marketing_channel.marketing_channel_lvl2_desc
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Digital
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
      expression: if(${new_business_sale.digital_visit_actual_trdytd}=0, null, ${new_business_sale.digital_visit_actual_trdytd})
      value_format:
      value_format_name: decimal_0
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.digital_visit_actual_trdy_ly}=0, null, ${new_business_sale.digital_visit_actual_trdy_ly})
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
    - new_business_sale.digital_visit_actual_trdytd
    - new_business_sale.digital_visit_actual_trdy_ly
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
      valueFormat: 0, " K"
      series:
      - id: AA.com - Current
        name: AA.com - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3926
      - id: AA.com - Last Year
        name: AA.com - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3930
      - id: Affiliates - Current
        name: Affiliates - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3934
      - id: Affiliates - Last Year
        name: Affiliates - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3938
      - id: Digital Marketing - Email - Current
        name: Digital Marketing - Email - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3942
      - id: Digital Marketing - Email - Last Year
        name: Digital Marketing - Email - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3946
      - id: Digital Marketing - Other - Current
        name: Digital Marketing - Other - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3950
      - id: Digital Marketing - Other - Last Year
        name: Digital Marketing - Other - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3954
      - id: My AA - Current
        name: My AA - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3958
      - id: My AA - Last Year
        name: My AA - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3962
      - id: PPC - Current
        name: PPC - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3966
      - id: PPC - Last Year
        name: PPC - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3970
      - id: SEO - Current
        name: SEO - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3974
      - id: SEO - Last Year
        name: SEO - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 3978
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 3914
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
      Marketing Channel Level 1: marketing_channel.marketing_channel_lvl1_desc
    row: 58
    col: 0
    width: 8
    height: 7
  - title: DSC - Conversion Rate - Marketing Channel - Trading YTD Trend
    name: DSC - Conversion Rate - Marketing Channel - Trading YTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.digital_cr_actual_trdytd
    - new_business_sale.digital_cr_actual_trdy_ly
    - marketing_channel.marketing_channel_lvl2_desc
    - new_business_sale.trx_trdwk_number
    pivots:
    - marketing_channel.marketing_channel_lvl2_desc
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Digital
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
      expression: if(${new_business_sale.digital_cr_actual_trdytd}=0, null, ${new_business_sale.digital_cr_actual_trdytd})
      value_format:
      value_format_name: percent_1
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.digital_cr_actual_trdy_ly}=0, null, ${new_business_sale.digital_cr_actual_trdy_ly})
      value_format:
      value_format_name: percent_1
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
    - new_business_sale.digital_cr_actual_trdytd
    - new_business_sale.digital_cr_actual_trdy_ly
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
      maxValue: 0.08
      minValue: 0.02
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: 0.0%
      series:
      - id: Desktop - Current
        name: Desktop - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4101
      - id: Desktop - Last Year
        name: Desktop - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4105
      - id: Mobile - Current
        name: Mobile - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4109
      - id: Mobile - Last Year
        name: Mobile - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4113
      - id: Tablet - Current
        name: Tablet - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4117
      - id: Tablet - Last Year
        name: Tablet - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4121
      - id: Unknown - Current
        name: Unknown - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4125
      - id: Unknown - Last Year
        name: Unknown - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4129
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 4089
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
      Marketing Channel Level 1: marketing_channel.marketing_channel_lvl1_desc
    row: 58
    col: 8
    width: 8
    height: 7
  - title: DSC - Visits - Device Type - Trading YTD Trend
    name: DSC - Visits - Device Type - Trading YTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - device_type.device_type_desc
    - new_business_sale.digital_visit_actual_trdytd
    - new_business_sale.digital_visit_actual_trdy_ly
    - new_business_sale.trx_trdwk_number
    pivots:
    - device_type.device_type_desc
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Digital
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - device_type.device_type_desc 0
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.digital_visit_actual_trdytd}=0, null, ${new_business_sale.digital_visit_actual_trdytd})
      value_format:
      value_format_name: decimal_0
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.digital_visit_actual_trdy_ly}=0, null, ${new_business_sale.digital_visit_actual_trdy_ly})
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
    - new_business_sale.digital_visit_actual_trdytd
    - new_business_sale.digital_visit_actual_trdy_ly
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
      valueFormat: 0, " K"
      series:
      - id: Desktop - Current
        name: Desktop - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4252
      - id: Desktop - Last Year
        name: Desktop - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4256
      - id: Mobile - Current
        name: Mobile - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4260
      - id: Mobile - Last Year
        name: Mobile - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4264
      - id: Tablet - Current
        name: Tablet - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4268
      - id: Tablet - Last Year
        name: Tablet - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4272
      - id: Unknown - Current
        name: Unknown - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4276
      - id: Unknown - Last Year
        name: Unknown - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4280
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 4240
    hidden_series:
    - Desktop - Last Year
    - Mobile - Last Year
    - Tablet - Last Year
    - Unknown - Last Year
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 71
    col: 0
    width: 8
    height: 7
  - title: DSC - Conversion Rate - Device Type - Trading YTD Trend
    name: DSC - Conversion Rate - Device Type - Trading YTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.digital_cr_actual_trdytd
    - new_business_sale.digital_cr_actual_trdy_ly
    - device_type.device_type_desc
    pivots:
    - device_type.device_type_desc
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Digital
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - device_type.device_type_desc 0
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.digital_cr_actual_trdytd}=0, null, ${new_business_sale.digital_cr_actual_trdytd})
      value_format:
      value_format_name: percent_1
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.digital_cr_actual_trdy_ly}=0, null, ${new_business_sale.digital_cr_actual_trdy_ly})
      value_format:
      value_format_name: percent_1
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
    - new_business_sale.digital_cr_actual_trdytd
    - new_business_sale.digital_cr_actual_trdy_ly
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
      maxValue: 0.08
      minValue: 0.02
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: 0.0%
      series:
      - id: Desktop - Current
        name: Desktop - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4399
      - id: Desktop - Last Year
        name: Desktop - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4403
      - id: Mobile - Current
        name: Mobile - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4407
      - id: Mobile - Last Year
        name: Mobile - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4411
      - id: Tablet - Current
        name: Tablet - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4415
      - id: Tablet - Last Year
        name: Tablet - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4419
      - id: Unknown - Current
        name: Unknown - Current
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4423
      - id: Unknown - Last Year
        name: Unknown - Last Year
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4427
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 4387
    hidden_series:
    - Desktop - Last Year
    - Mobile - Last Year
    - Tablet - Last Year
    - Unknown - Last Year
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 71
    col: 8
    width: 8
    height: 7
  - title: DSC - Conversion Rate Metrics by Device Type
    name: DSC - Conversion Rate Metrics by Device Type
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - device_type.device_type_desc
    - new_business_sale.digital_visit_actual_trdwk
    - new_business_sale.digital_visit_actual_trdwk_vs_ly
    - new_business_sale.digital_visit_actual_fytd_vs_ly
    - new_business_sale.digital_cr_actual_trdwk
    - new_business_sale.digital_cr_actual_trdwk_vs_ly
    - new_business_sale.digital_cr_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_full_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Digital
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.digital_visit_actual_trdwk desc
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
    - new_business_sale.digital_cr_actual_trdwk
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4524
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 4519
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4541
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 4536
    hidden_fields:
    - new_business_sale.digital_visit_actual_trdwk
    - new_business_sale.digital_visit_actual_trdwk_vs_ly
    - new_business_sale.digital_visit_actual_fytd_vs_ly
    series_labels:
      new_business_sale.agcp_actual_trdwk: AGCP Trading Wk
      new_business_sale.agcp_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.agcp_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.agcp_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.digital_cr_actual_trdwk: Conv Rate Trading Week
      new_business_sale.digital_cr_actual_trdwk_vs_ly: TW vs LY
      new_business_sale.digital_cr_actual_fytd_vs_ly: FYTD  vs LY
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 67
    col: 8
    width: 8
    height: 4
  - title: DSC - Visit Metrics by Device Type
    name: DSC - Visit Metrics by Device Type
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - device_type.device_type_desc
    - new_business_sale.digital_visit_actual_trdwk
    - new_business_sale.digital_visit_actual_trdwk_vs_ly
    - new_business_sale.digital_visit_actual_fytd_vs_ly
    - new_business_sale.digital_cr_actual_trdwk
    - new_business_sale.digital_cr_actual_trdwk_vs_ly
    - new_business_sale.digital_cr_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Digital
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.digital_visit_actual_trdwk desc
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
    - new_business_sale.digital_visit_actual_trdwk
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4651
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 4646
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4668
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 4663
    hidden_fields:
    - new_business_sale.digital_cr_actual_trdwk
    - new_business_sale.digital_cr_actual_trdwk_vs_ly
    - new_business_sale.digital_cr_actual_fytd_vs_ly
    series_labels:
      new_business_sale.agcp_actual_trdwk: AGCP Trading Wk
      new_business_sale.agcp_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.agcp_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.agcp_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.digital_visit_actual_trdwk: Digital Visits Trading Wk
      new_business_sale.digital_visit_actual_trdwk_vs_ly: Trading Wk vs LY
      new_business_sale.digital_visit_actual_fytd_vs_ly: FYTD vs LY
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 67
    col: 0
    width: 8
    height: 4
  - title: DSC - Conversion Rate TW vs LY
    name: DSC - Conversion Rate TW vs LY
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_fytd_vs_fcast
    - new_business_sale.digital_visit_actual_trdwk
    - new_business_sale.digital_visit_actual_trdwk_vs_ly
    - new_business_sale.digital_visit_actual_fytd
    - new_business_sale.digital_visit_actual_fytd_vs_ly
    - new_business_sale.digital_cr_actual_trdwk
    - new_business_sale.digital_cr_actual_trdwk_vs_ly
    - new_business_sale.digital_cr_actual_fytd
    - new_business_sale.digital_cr_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 2017/07/05
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_full_desc: Digital Marketing
      new_business_sale.accounting_treatmenr: Transacted
      sales_channel.sales_channel_lvl1_full_desc: Digital
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
    single_value_title: TW Conversion Rate vs LY
    value_format: "+0.0%;-0.0%"
    hidden_fields:
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_fytd_vs_fcast
    - new_business_sale.digital_visit_actual_trdwk
    - new_business_sale.digital_visit_actual_trdwk_vs_ly
    - new_business_sale.digital_visit_actual_fytd
    - new_business_sale.digital_visit_actual_fytd_vs_ly
    - new_business_sale.digital_cr_actual_trdwk
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 2
    col: 16
    width: 4
    height: 2
  - title: DSC - AGCP Metrics
    name: DSC - AGCP Metrics
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_fytd_vs_fcast
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.volume_actual_fytd_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_fytd_vs_fcast
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
    - new_business_sale.agcp_actual_trdwk
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4860
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 4855
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
        __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
        __LINE_NUM: 4877
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/03___focus_on_digital_sales_channel.dashboard.lookml
      __LINE_NUM: 4872
    hidden_fields:
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    series_labels:
      new_business_sale.agcp_actual_trdwk: AGCP Trading Wk
      new_business_sale.agcp_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.agcp_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.agcp_actual_fytd_vs_ly: FYTD vs LY%
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 6
    col: 0
    width: 8
    height: 2
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
    allow_multiple_values: true
    required: false
  - name: Marketing Channel Level 1
    title: Marketing Channel Level 1
    type: field_filter
    default_value: Digital Marketing
    model: commercial_road_new_business
    explore: new_business_sale
    field: marketing_channel.marketing_channel_lvl1_desc
    listens_to_filters: []
    allow_multiple_values: true
    required: false