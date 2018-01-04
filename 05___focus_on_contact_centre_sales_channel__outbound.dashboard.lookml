- dashboard: 05___focus_on_contact_centre_sales_channel__outbound
  title: 05. ☎ Focus on Contact Centre Sales Channel - Outbound
  layout: newspaper
  elements:
  - name: 'Performance to end of:'
    type: text
    title_text: 'Performance to end of:'
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
  - name: Conversion Rate
    type: text
    title_text: Conversion Rate
    subtitle_text: 100 * Paid Outbound Sales / Calls from the Outbound Consumer Road
      New Business Call Centre
    row: 16
    col: 0
    width: 8
    height: 2
  - name: Closed
    type: text
    title_text: Closed
    subtitle_text: Numbers Dialled for Final Time
    row: 4
    col: 16
    width: 8
    height: 2
  - name: Volume
    type: text
    title_text: Volume
    subtitle_text: New policy sales, gross of cooling off cancellations
    row: 16
    col: 8
    width: 8
    height: 2
  - name: AATV
    type: text
    title_text: AATV
    subtitle_text: Annualised Average Transaction Value (= AGCP / Volume)
    row: 16
    col: 16
    width: 8
    height: 2
  - name: Dialled
    type: text
    title_text: Dialled
    subtitle_text: ''
    row: 4
    col: 8
    width: 8
    height: 2
  - name: New Leads
    type: text
    title_text: New Leads
    subtitle_text: ''
    row: 4
    col: 0
    width: 8
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
    row: 0
    col: 4
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
  - title: CCO - New Leads TW vs Forecast
    name: CCO - New Leads TW vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.od_new_lead_actual_trdwk_vs_fcast
    - new_business_sale.od_dialled_actual_trdwk_vs_fcast
    - new_business_sale.od_closed_actual_trdwk_vs_ly
    - new_business_sale.od_cr_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_trdwk_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: 2017/07/12
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Outbound
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
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
    single_value_title: TW New Leads vs Forecast
    value_format: "+0.0%;-0.0%"
    hidden_fields:
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 2
    col: 0
    width: 4
    height: 2
  - title: CCO - Dialled TW vs Forecast
    name: CCO - Dialled TW vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.od_new_lead_actual_trdwk_vs_fcast
    - new_business_sale.od_dialled_actual_trdwk_vs_fcast
    - new_business_sale.od_closed_actual_trdwk_vs_ly
    - new_business_sale.od_cr_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_trdwk_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: 2017/07/12
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Outbound
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
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
    single_value_title: TW Dialled vs Forecast
    value_format: "+0.0%;-0.0%"
    hidden_fields:
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.od_new_lead_actual_trdwk_vs_fcast
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 2
    col: 4
    width: 4
    height: 2
  - title: CCO - Closed TW vs Forecast
    name: CCO - Closed TW vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.od_new_lead_actual_trdwk_vs_fcast
    - new_business_sale.od_dialled_actual_trdwk_vs_fcast
    - new_business_sale.od_closed_actual_trdwk_vs_ly
    - new_business_sale.od_cr_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_trdwk_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: 2017/07/12
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Outbound
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
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
    single_value_title: TW Closed vs Forecast
    value_format: "+0.0%;-0.0%"
    hidden_fields:
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.od_new_lead_actual_trdwk_vs_fcast
    - new_business_sale.od_dialled_actual_trdwk_vs_fcast
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 2
    col: 8
    width: 4
    height: 2
  - title: CCO - Conversion Rate TW vs Forecast
    name: CCO - Conversion Rate TW vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.od_new_lead_actual_trdwk_vs_fcast
    - new_business_sale.od_dialled_actual_trdwk_vs_fcast
    - new_business_sale.od_closed_actual_trdwk_vs_ly
    - new_business_sale.od_cr_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_trdwk_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: 2017/07/12
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Outbound
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
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
    single_value_title: TW Conversion Rate vs Forecast
    value_format: "+0.0%;-0.0%"
    hidden_fields:
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.od_new_lead_actual_trdwk_vs_fcast
    - new_business_sale.od_dialled_actual_trdwk_vs_fcast
    - new_business_sale.od_closed_actual_trdwk_vs_ly
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 2
    col: 12
    width: 4
    height: 2
  - title: CCO - Volume TW vs Forecast
    name: CCO - Volume TW vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.od_new_lead_actual_trdwk_vs_fcast
    - new_business_sale.od_dialled_actual_trdwk_vs_fcast
    - new_business_sale.od_closed_actual_trdwk_vs_ly
    - new_business_sale.od_cr_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_trdwk_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: 2017/07/12
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Outbound
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
    single_value_title: TW Volume vs Forecast
    value_format: "+0.0%;-0.0%"
    hidden_fields:
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.od_new_lead_actual_trdwk_vs_fcast
    - new_business_sale.od_dialled_actual_trdwk_vs_fcast
    - new_business_sale.od_closed_actual_trdwk_vs_ly
    - new_business_sale.od_cr_actual_trdwk_vs_fcast
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 2
    col: 16
    width: 4
    height: 2
  - name: CCO - New Lead Metrics
    title: CCO - New Lead Metrics
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.od_new_lead_actual_trdwk
    - new_business_sale.od_new_lead_actual_trdwk_vs_ly
    - new_business_sale.od_new_lead_actual_trdwk_vs_fcast
    - new_business_sale.od_new_lead_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Outbound
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
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
    - new_business_sale.od_dialled_actual_trdwk
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
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 728
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
      __LINE_NUM: 723
      fields:
      - new_business_sale.od_new_lead_actual_trdwk_vs_ly
      - new_business_sale.od_new_lead_actual_trdwk_vs_fcast
      - new_business_sale.od_new_lead_actual_fytd_vs_ly
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
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 745
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
      __LINE_NUM: 740
      fields:
      - new_business_sale.od_new_lead_actual_trdwk_vs_ly
      - new_business_sale.od_new_lead_actual_trdwk_vs_fcast
      - new_business_sale.od_new_lead_actual_fytd_vs_ly
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
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 762
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
      __LINE_NUM: 757
      fields:
      - new_business_sale.od_new_lead_actual_trdwk_vs_ly
      - new_business_sale.od_new_lead_actual_trdwk_vs_fcast
      - new_business_sale.od_new_lead_actual_fytd_vs_ly
    hidden_fields: []
    series_labels:
      new_business_sale.aatv_actual_trdwk: AATV Trading Wk
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.od_closed_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.od_closed_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.od_closed_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.od_dialled_actual_trdwk_vs_ly: Trading WK vs LY%
      new_business_sale.od_dialled_actual_trdwk_vs_fcast: Trading WK vs Forecast%
      new_business_sale.od_dialled_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.od_new_lead_actual_trdwk_vs_ly: Trading WK vs LY%
      new_business_sale.od_new_lead_actual_trdwk_vs_fcast: Trading WK vs Forecast%
      new_business_sale.od_new_lead_actual_fytd_vs_ly: FYTD vs LY%
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 6
    col: 0
    width: 8
    height: 2
  - title: CCO - AATV TW vs Forecast
    name: CCO - AATV TW vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.od_new_lead_actual_trdwk_vs_fcast
    - new_business_sale.od_dialled_actual_trdwk_vs_fcast
    - new_business_sale.od_closed_actual_trdwk_vs_ly
    - new_business_sale.od_cr_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_trdwk_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: 2017/07/12
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Outbound
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
    - new_business_sale.od_new_lead_actual_trdwk_vs_fcast
    - new_business_sale.od_dialled_actual_trdwk_vs_fcast
    - new_business_sale.od_closed_actual_trdwk_vs_ly
    - new_business_sale.od_cr_actual_trdwk_vs_fcast
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 2
    col: 20
    width: 4
    height: 2
  - title: CCO - Closed Metrics
    name: CCO - Closed Metrics
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.od_closed_actual_trdwk
    - new_business_sale.od_closed_actual_trdwk_vs_ly
    - new_business_sale.od_closed_actual_trdwk_vs_fcast
    - new_business_sale.od_closed_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 2017/08/09
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Outbound
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
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
    - new_business_sale.od_closed_actual_trdwk
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
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 865
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
      __LINE_NUM: 860
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
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 882
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
      __LINE_NUM: 877
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
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 899
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
      __LINE_NUM: 894
    hidden_fields: []
    series_labels:
      new_business_sale.aatv_actual_trdwk: AATV Trading Wk
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.od_closed_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.od_closed_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.od_closed_actual_fytd_vs_ly: FYTD vs LY%
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 6
    col: 16
    width: 8
    height: 2
  - name: CCO - New Lead Trading YTD Trend
    title: CCO - New Lead Trading YTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.od_new_lead_actual_trdytd
    - new_business_sale.od_new_lead_actual_trdy_ly
    - new_business_sale.od_new_lead_fcast_trdy
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Outbound
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.od_new_lead_actual_trdytd}=0, null, ${new_business_sale.od_new_lead_actual_trdytd})
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.od_new_lead_actual_trdy_ly}=0, null, ${new_business_sale.od_new_lead_actual_trdy_ly})
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: forecast
      label: Forecast
      expression: if(${new_business_sale.od_new_lead_fcast_trdy}=0,null, ${new_business_sale.od_new_lead_fcast_trdy})
      value_format:
      value_format_name: decimal_0
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
    - new_business_sale.od_new_lead_actual_trdytd
    - new_business_sale.od_new_lead_actual_trdy_ly
    - new_business_sale.od_new_lead_fcast_trdy
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
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1036
      - id: current
        name: Current
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1040
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1044
      __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
      __LINE_NUM: 1024
    hidden_series: []
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 8
    col: 0
    width: 8
    height: 8
  - title: CCO - Dialled Metrics
    name: CCO - Dialled Metrics
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.od_dialled_actual_trdwk
    - new_business_sale.od_dialled_actual_trdwk_vs_ly
    - new_business_sale.od_dialled_actual_trdwk_vs_fcast
    - new_business_sale.od_dialled_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Outbound
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
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
    - new_business_sale.od_dialled_actual_trdwk
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
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 728
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
      __LINE_NUM: 723
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
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 745
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
      __LINE_NUM: 740
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
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 762
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
      __LINE_NUM: 757
    hidden_fields: []
    series_labels:
      new_business_sale.aatv_actual_trdwk: AATV Trading Wk
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.od_closed_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.od_closed_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.od_closed_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.od_dialled_actual_trdwk_vs_ly: Trading WK vs LY%
      new_business_sale.od_dialled_actual_trdwk_vs_fcast: Trading WK vs Forecast%
      new_business_sale.od_dialled_actual_fytd_vs_ly: FYTD vs LY%
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 6
    col: 8
    width: 8
    height: 2
  - title: CCO - Dialled Trading YTD Trend
    name: CCO - Dialled Trading YTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.od_dialled_actual_trdytd
    - new_business_sale.od_dialled_actual_trdy_ly
    - new_business_sale.od_dialled_fcast_trdy
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Outbound
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.od_dialled_actual_trdytd}=0, null, ${new_business_sale.od_dialled_actual_trdytd})
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.od_dialled_actual_trdy_ly}=0, null, ${new_business_sale.od_dialled_actual_trdy_ly})
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: forecast
      label: Forecast
      expression: if(${new_business_sale.od_dialled_fcast_trdy}=0,null, ${new_business_sale.od_dialled_fcast_trdy})
      value_format:
      value_format_name: decimal_0
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
    - new_business_sale.od_dialled_actual_trdytd
    - new_business_sale.od_dialled_actual_trdy_ly
    - new_business_sale.od_dialled_fcast_trdy
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
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1036
      - id: current
        name: Current
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1040
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1044
      __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
      __LINE_NUM: 1024
    hidden_series: []
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 8
    col: 8
    width: 8
    height: 8
  - title: CCO - Conversion Rate Metrics
    name: CCO - Conversion Rate Metrics
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.od_cr_actual_trdwk
    - new_business_sale.od_cr_actual_trdwk_vs_ly
    - new_business_sale.od_cr_actual_trdwk_vs_fcast
    - new_business_sale.od_cr_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 2017/07/26
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Outbound
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
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
    - new_business_sale.od_cr_actual_trdwk
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
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1378
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
      __LINE_NUM: 1373
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
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1395
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
      __LINE_NUM: 1390
    hidden_fields: []
    series_labels:
      new_business_sale.volume_actual_trdwk: Volume Trading Wk
      new_business_sale.volume_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.od_cr_actual_trdwk: Conversion Rate Trading Wk
      new_business_sale.od_cr_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.od_cr_actual_trdwk_vs_fcast: Trading Wk vs Forecast %
      new_business_sale.od_cr_actual_fytd_vs_ly: FYTD vs LY%
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 18
    col: 0
    width: 8
    height: 2
  - title: CCO - Closed Trading YTD Trend
    name: CCO - Closed Trading YTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.od_closed_actual_trdytd
    - new_business_sale.od_closed_actual_trdy_ly
    - new_business_sale.od_closed_fcast_trdy
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Outbound
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.od_closed_actual_trdytd}=0, null, ${new_business_sale.od_closed_actual_trdytd})
      value_format:
      value_format_name: decimal_0
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.od_closed_actual_trdy_ly}=0, null, ${new_business_sale.od_closed_actual_trdy_ly})
      value_format:
      value_format_name: decimal_0
    - table_calculation: forecast
      label: Forecast
      expression: if(${new_business_sale.od_closed_fcast_trdy}=0,null, ${new_business_sale.od_closed_fcast_trdy})
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
    - new_business_sale.od_closed_actual_trdytd
    - new_business_sale.od_closed_actual_trdy_ly
    - new_business_sale.od_closed_fcast_trdy
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
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1161
      - id: current
        name: Current
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1165
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1169
      __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
      __LINE_NUM: 1149
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 8
    col: 16
    width: 8
    height: 8
  - title: CCO - Volume Metrics
    name: CCO - Volume Metrics
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
      sales_channel.sales_channel_lvl1_desc: Outbound
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
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1260
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
      __LINE_NUM: 1255
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
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1277
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
      __LINE_NUM: 1272
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
  - title: CCO - Conversion Rate Trading YTD Trend
    name: CCO - Conversion Rate Trading YTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.od_cr_actual_trdytd
    - new_business_sale.od_cr_actual_trdy_ly
    - new_business_sale.od_cr_fcast_trdy
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Outbound
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_inbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.od_cr_actual_trdytd}=0, null, ${new_business_sale.od_cr_actual_trdytd})
      value_format:
      value_format_name: percent_1
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.od_cr_actual_trdy_ly}=0, null, ${new_business_sale.od_cr_actual_trdy_ly})
      value_format:
      value_format_name: percent_1
    - table_calculation: forecast
      label: Forecast
      expression: if(${new_business_sale.od_cr_fcast_trdy}=0, null, ${new_business_sale.od_cr_fcast_trdy})
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
    - new_business_sale.od_cr_actual_trdytd
    - new_business_sale.od_cr_actual_trdy_ly
    - new_business_sale.od_cr_fcast_trdy
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
      valueFormat: 0.0%
      series:
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1793
      - id: current
        name: Current
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1797
      - id: new_business_sale.digital_cr_actual_trdytd
        name: Digital Visit Conversion Rate Trading YTD
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1801
      - id: new_business_sale.digital_cr_actual_trdy_ly
        name: Digital Visit Conversion Rate Trading Year LY
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1805
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1809
      __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
      __LINE_NUM: 1781
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 20
    col: 0
    width: 8
    height: 7
  - title: CCO - AATV Metrics
    name: CCO - AATV Metrics
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
      sales_channel.sales_channel_lvl1_desc: Outbound
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
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1502
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
      __LINE_NUM: 1497
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
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1519
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
      __LINE_NUM: 1514
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
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1536
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
      __LINE_NUM: 1531
    hidden_fields:
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
    row: 18
    col: 16
    width: 8
    height: 2
  - title: CCO - Volume Trading YTD Trend
    name: CCO - Volume Trading YTD Trend
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
      sales_channel.sales_channel_lvl1_full_desc: Outbound
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
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1669
      - id: current
        name: Current
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1673
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1677
      __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
      __LINE_NUM: 1657
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 20
    col: 8
    width: 8
    height: 7
  - title: CCO- AATV Trading YTD Trend
    name: CCO- AATV Trading YTD Trend
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
      sales_channel.sales_channel_lvl1_desc: Outbound
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
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1927
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1931
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
        __LINE_NUM: 1935
      __FILE: commercial_road_new_business/05___focus_on_contact_centre_sales_channel__outbound.dashboard.lookml
      __LINE_NUM: 1915
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 20
    col: 16
    width: 8
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
