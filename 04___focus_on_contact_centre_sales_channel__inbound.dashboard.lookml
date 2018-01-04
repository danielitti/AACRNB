- dashboard: 04___focus_on_contact_centre_sales_channel__inbound
  title: 04. 📞 Focus on Contact Centre Sales Channel - Inbound
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
    subtitle_text: "(AATV = AGCP / Volume) Non-Will Join only"
    row: 14
    col: 12
    width: 12
    height: 2
  - name: Calls Offered
    type: text
    title_text: New Business Calls Offered
    subtitle_text: Non-Will Join only
    row: 4
    col: 0
    width: 8
    height: 2
  - name: Conversion rate
    type: text
    title_text: Conversion rate
    subtitle_text: On New Business Calls Answered, Non-Will Join only
    row: 4
    col: 16
    width: 8
    height: 2
  - name: Service Levels
    type: text
    title_text: Service Levels
    row: 98
    col: 0
    width: 24
    height: 2
  - name: New Member Unit non-Will Join policies
    type: text
    title_text: New Member Unit non-Will Join policies
    subtitle_text: 'Note: this section is driven by the "Marketing Channel Level 1"
      Dashboard Filter'
    row: 24
    col: 0
    width: 24
    height: 2
  - name: Sale of Will Join policies
    type: text
    title_text: Sale of Will Join policies
    row: 72
    col: 0
    width: 24
    height: 2
  - name: Calls Answered
    type: text
    title_text: New Business Calls Answered
    subtitle_text: Non-Will Join only
    row: 4
    col: 8
    width: 8
    height: 2
  - name: Volume
    type: text
    title_text: Volume
    subtitle_text: New policy sales, gross of cooling off cancellations. Non-Will Join only
    row: 14
    col: 0
    width: 12
    height: 2
  - name: MSAS non-Will Join policies
    type: text
    title_text: MSAS non-Will Join policies
    subtitle_text: ''
    row: 54
    col: 0
    width: 24
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
  - title: CCI - Offered TW vs Forecast
    name: CCI - Offered TW vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.ic_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.ic_ar_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      call_type.call_type_desc: New Business,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
      new_business_sale.is_will_join: N
    limit: 5000
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
    hidden_fields: []
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
      valueFormat: ''
      series:
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 428
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 432
      - id: current
        name: Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 436
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 416
    single_value_title: Offered TW vs Forecast
    value_format: "+0.0%;-0.0%"
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    note_state: collapsed
    note_display: hover
    note_text: Non-Will Join only
    row: 2
    col: 0
    width: 4
    height: 2
  - title: CCI - Answered TW vs Forecast
    name: CCI - Answered TW vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.ic_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.ic_ar_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      call_type.call_type_desc: New Business,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
      new_business_sale.is_will_join: N
    limit: 5000
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
    - new_business_sale.ic_actual_trdwk_vs_fcast
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
      valueFormat: ''
      series:
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 544
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 548
      - id: current
        name: Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 552
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 532
    single_value_title: Answered TW vs Forecast
    value_format: "+0.0%;-0.0%"
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    note_state: collapsed
    note_display: hover
    note_text: Non-Will Join only
    row: 2
    col: 4
    width: 4
    height: 2
  - title: CCI - Volume TW vs Forecast
    name: CCI - Volume TW vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.ic_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.ic_ar_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      call_type.call_type_desc: New Business,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
      new_business_sale.is_will_join: N
    limit: 5000
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
    - new_business_sale.ic_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.ic_ar_actual_trdwk_vs_fcast
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
      valueFormat: ''
      series:
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 784
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 788
      - id: current
        name: Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 792
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 772
    single_value_title: Volume TW vs Forecast
    value_format: "+0.0%;-0.0%"
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    note_state: collapsed
    note_display: hover
    note_text: Non-Will Join only
    row: 2
    col: 16
    width: 4
    height: 2
  - title: CCI - Calls Conversion TW vs Forecast
    name: CCI - Calls Conversion TW vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.ic_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.ic_ar_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      call_type.call_type_desc: New Business,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
      new_business_sale.is_will_join: N
    limit: 5000
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
    - new_business_sale.ic_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_ar_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_trdwk_vs_fcast
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
      valueFormat: ''
      series:
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 664
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 668
      - id: current
        name: Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 672
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 652
    single_value_title: Calls Conversion TW vs Forecast
    value_format: "+0.0%;-0.0%"
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    note_state: collapsed
    note_display: hover
    note_text: Non-Will Join only
    row: 2
    col: 8
    width: 4
    height: 2
  - title: CCI - Abandoned Rate TW vs Forecast
    name: CCI - Abandoned Rate TW vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.ic_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.ic_ar_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      call_type.call_type_desc: New Business,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
      new_business_sale.is_will_join: N
    limit: 5000
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
    - new_business_sale.ic_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
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
      valueFormat: ''
      series:
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 904
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 908
      - id: current
        name: Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 912
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 892
    single_value_title: Abandoned Rate TW vs Forecast
    value_format: "+0.0%;-0.0%"
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    note_state: collapsed
    note_display: hover
    note_text: Non-Will Join only
    row: 2
    col: 12
    width: 4
    height: 2
  - title: CCI - AATV TW vs Forecast
    name: CCI - AATV TW vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.ic_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.ic_ar_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      call_type.call_type_desc: New Business,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
      new_business_sale.is_will_join: N
    limit: 5000
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
    - new_business_sale.ic_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.ic_ar_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_trdwk_vs_fcast
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
      valueFormat: ''
      series:
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 1025
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 1029
      - id: current
        name: Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 1033
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 1013
    single_value_title: AATV TW vs Forecast
    value_format: "+0.0%;-0.0%"
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    note_state: collapsed
    note_display: hover
    note_text: Non-Will Join only
    row: 2
    col: 20
    width: 4
    height: 2
  - title: CCI - Calls Offered Metrics
    name: CCI - Calls Offered Metrics
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.ic_actual_trdwk
    - new_business_sale.ic_actual_trdwk_vs_ly
    - new_business_sale.ic_actual_trdwk_vs_fcast
    - new_business_sale.ic_actual_fytd_vs_ly
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      call_type.call_type_desc: New Business,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
      new_business_sale.is_will_join: N
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
    - new_business_sale.ic_actual_trdwk
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 1133
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 1128
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 1150
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 1145
    hidden_fields:
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    series_labels:
      new_business_sale.agcp_actual_trdwk: AGCP Trading Wk
      new_business_sale.agcp_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.agcp_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.agcp_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.ic_actual_trdwk: Offered Trading WK
      new_business_sale.ic_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.ic_actual_fytd_vs_ly: FYTD vs LY %
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 6
    col: 0
    width: 8
    height: 2
  - title: CCI - Calls Answered Metrics
    name: CCI - Calls Answered Metrics
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.ic_actual_trdwk
    - new_business_sale.ic_actual_trdwk_vs_ly
    - new_business_sale.ic_actual_trdwk_vs_fcast
    - new_business_sale.ic_actual_fytd_vs_ly
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      call_type.call_type_desc: New Business,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
      new_business_sale.is_will_join: N
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
    - new_business_sale.ic_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 1277
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 1272
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 1294
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 1289
    hidden_fields:
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.ic_actual_trdwk
    - new_business_sale.ic_actual_trdwk_vs_ly
    - new_business_sale.ic_actual_trdwk_vs_fcast
    - new_business_sale.ic_actual_fytd_vs_ly
    series_labels:
      new_business_sale.agcp_actual_trdwk: AGCP Trading Wk
      new_business_sale.agcp_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.agcp_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.agcp_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.ic_actual_trdwk: Offered Trading WK
      new_business_sale.ic_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.ic_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_answered_actual_trdwk: Answered Trading WK
      new_business_sale.ic_answered_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_answered_actual_trdwk_vs_fcast: Trading WK vs Forecast
        %
      new_business_sale.ic_answered_actual_fytd_vs_ly: FYTD vs LY %
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 6
    col: 8
    width: 8
    height: 2
  - title: CCI - Calls Answered Trading YTD Trend
    name: CCI - Calls Answered Trading YTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.ic_answered_actual_trdytd
    - new_business_sale.ic_answered_actual_trdy_ly
    - new_business_sale.ic_answered_fcast_trdy
    - new_business_sale.trx_trdwk_number
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Inbound
      call_type.call_type_desc: New Business,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
      new_business_sale.is_will_join: N
    sorts:
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.ic_answered_actual_trdytd}=0, null, ${new_business_sale.ic_answered_actual_trdytd})
      value_format:
      value_format_name: decimal_0
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.ic_answered_actual_trdy_ly}=0, null, ${new_business_sale.ic_answered_actual_trdy_ly})
      value_format:
      value_format_name: decimal_0
    - table_calculation: forecast
      label: Forecast
      expression: if(${new_business_sale.ic_answered_fcast_trdy}=0, null, ${new_business_sale.ic_answered_fcast_trdy})
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
    - new_business_sale.ic_answered_actual_trdytd
    - new_business_sale.ic_answered_actual_trdy_ly
    - new_business_sale.ic_answered_fcast_trdy
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
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 1598
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 1602
      - id: current
        name: Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 1606
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 1586
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 8
    col: 8
    width: 8
    height: 6
  - title: CCI - Calls Conversion Rate Metrics
    name: CCI - Calls Conversion Rate Metrics
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.ic_actual_trdwk
    - new_business_sale.ic_actual_trdwk_vs_ly
    - new_business_sale.ic_actual_trdwk_vs_fcast
    - new_business_sale.ic_actual_fytd_vs_ly
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      call_type.call_type_desc: New Business,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
      new_business_sale.is_will_join: N
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
    - new_business_sale.ic_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 1427
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 1422
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 1444
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 1439
    hidden_fields:
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.ic_actual_trdwk
    - new_business_sale.ic_actual_trdwk_vs_ly
    - new_business_sale.ic_actual_trdwk_vs_fcast
    - new_business_sale.ic_actual_fytd_vs_ly
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    series_labels:
      new_business_sale.agcp_actual_trdwk: AGCP Trading Wk
      new_business_sale.agcp_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.agcp_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.agcp_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.ic_actual_trdwk: Offered Trading WK
      new_business_sale.ic_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.ic_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_answered_actual_trdwk: Answered Trading WK
      new_business_sale.ic_answered_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_answered_actual_trdwk_vs_fcast: Trading WK vs Forecast
        %
      new_business_sale.ic_answered_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_cr_actual_trdwk: Conversion Trading WK
      new_business_sale.ic_cr_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_cr_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.icr_actual_fytd_vs_ly: FYTD vs LY %
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 6
    col: 16
    width: 8
    height: 2
  - title: CCI - Calls Offered Trading YTD Trend
    name: CCI - Calls Offered Trading YTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.ic_actual_trdytd
    - new_business_sale.ic_actual_trdy_ly
    - new_business_sale.ic_fcast_trdy
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_desc: Inbound
      call_type.call_type_desc: New Business,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
      new_business_sale.is_will_join: N
    sorts:
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.ic_actual_trdytd}=0, null, ${new_business_sale.ic_actual_trdytd})
      value_format:
      value_format_name: decimal_0
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.ic_actual_trdy_ly}=0, null, ${new_business_sale.ic_actual_trdy_ly})
      value_format:
      value_format_name: decimal_0
    - table_calculation: forecast
      label: Forecast
      expression: if(${new_business_sale.ic_fcast_trdy}=0, null, ${new_business_sale.ic_fcast_trdy})
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
    - new_business_sale.ic_actual_trdytd
    - new_business_sale.ic_actual_trdy_ly
    - new_business_sale.ic_fcast_trdy
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
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 1723
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 1727
      - id: current
        name: Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 1731
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 1711
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 8
    col: 0
    width: 8
    height: 6
  - title: CCI - Volume Metrics
    name: CCI - Volume Metrics
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      call_type.call_type_desc: New Business,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
      new_business_sale.is_will_join: N
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 1943
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 1938
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 1960
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 1955
    hidden_fields: []
    series_labels:
      new_business_sale.agcp_actual_trdwk: AGCP Trading Wk
      new_business_sale.agcp_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.agcp_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.agcp_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.ic_actual_trdwk: Offered Trading WK
      new_business_sale.ic_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.ic_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_answered_actual_trdwk: Answered Trading WK
      new_business_sale.ic_answered_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_answered_actual_trdwk_vs_fcast: Trading WK vs Forecast
        %
      new_business_sale.ic_answered_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_cr_actual_trdwk: Conversion Rate Trading WK
      new_business_sale.ic_cr_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_cr_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.icr_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.aatv_actual_trdwk: AATV Trading WK
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.volume_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY %
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 16
    col: 0
    width: 12
    height: 2
  - title: CCI - Calls Conversion Rate Trading YTD Trend
    name: CCI - Calls Conversion Rate Trading YTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.ic_cr_actual_trdytd
    - new_business_sale.ic_cr_actual_trdy_ly
    - new_business_sale.ic_cr_fcast_trdy
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      call_type.call_type_desc: New Business,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
      new_business_sale.is_will_join: N
    sorts:
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.ic_cr_actual_trdytd}=0, null, ${new_business_sale.ic_cr_actual_trdytd})
      value_format:
      value_format_name: percent_2
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.ic_cr_actual_trdy_ly}=0, null, ${new_business_sale.ic_cr_actual_trdy_ly})
      value_format:
      value_format_name: percent_2
    - table_calculation: forecast
      label: Forecast
      expression: if(${new_business_sale.ic_cr_fcast_trdy}=0, null, ${new_business_sale.ic_cr_fcast_trdy})
      value_format:
      value_format_name: percent_2
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
    - new_business_sale.ic_cr_actual_trdytd
    - new_business_sale.ic_cr_actual_trdy_ly
    - new_business_sale.ic_cr_fcast_trdy
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
      valueFormat: ''
      series:
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 1848
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 1852
      - id: current
        name: Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 1856
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 1836
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 8
    col: 16
    width: 8
    height: 6
  - title: CCI - AATV Metrics
    name: CCI - AATV Metrics
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.ic_actual_trdwk
    - new_business_sale.ic_actual_trdwk_vs_ly
    - new_business_sale.ic_actual_trdwk_vs_fcast
    - new_business_sale.ic_actual_fytd_vs_ly
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      call_type.call_type_desc: New Business,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
      new_business_sale.is_will_join: N
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
    - new_business_sale.ic_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 2094
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 2089
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 2111
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 2106
    hidden_fields:
    - new_business_sale.ic_actual_trdwk
    - new_business_sale.ic_actual_trdwk_vs_ly
    - new_business_sale.ic_actual_trdwk_vs_fcast
    - new_business_sale.ic_actual_fytd_vs_ly
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
    series_labels:
      new_business_sale.agcp_actual_trdwk: AGCP Trading Wk
      new_business_sale.agcp_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.agcp_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.agcp_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.ic_actual_trdwk: Offered Trading WK
      new_business_sale.ic_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.ic_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_answered_actual_trdwk: Answered Trading WK
      new_business_sale.ic_answered_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_answered_actual_trdwk_vs_fcast: Trading WK vs Forecast
        %
      new_business_sale.ic_answered_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_cr_actual_trdwk: Conversion Rate Trading WK
      new_business_sale.ic_cr_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_cr_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.icr_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.aatv_actual_trdwk: AATV Trading WK
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY %
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 16
    col: 12
    width: 12
    height: 2
  - title: CCI - Calls Answered Metrics NMU by Marketing Channel
    name: CCI - Calls Answered Metrics NMU by Marketing Channel
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    - marketing_channel.marketing_channel_lvl2_full_desc
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_full_desc: Direct Marketing
      new_business_sale.accounting_treatmenr: Transacted
      new_business_sale.is_will_join: N
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      staff.staff_type: New Member Unit
      call_type.call_type_desc: New Business,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.ic_answered_actual_trdwk desc
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
    - new_business_sale.ic_answered_actual_trdwk
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 2510
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 2505
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 2527
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 2522
    hidden_fields:
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.volume_actual_fytd_vs_ly
    series_labels:
      new_business_sale.agcp_actual_trdwk: AGCP Trading Wk
      new_business_sale.agcp_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.agcp_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.agcp_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.ic_actual_trdwk: Offered Trading WK
      new_business_sale.ic_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.ic_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_answered_actual_trdwk: Answered Trading WK
      new_business_sale.ic_answered_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_answered_actual_trdwk_vs_fcast: Trading WK vs Forecast
        %
      new_business_sale.ic_answered_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_cr_actual_trdwk: Conversion Rate Trading WK
      new_business_sale.ic_cr_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_cr_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.icr_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.aatv_actual_trdwk: AATV Trading WK
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.volume_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY %
      marketing_channel.marketing_channel_lvl1_full_desc: Marketing Channel Lvl 1
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Marketing Channel Level 1: marketing_channel.marketing_channel_lvl1_full_desc
    row: 26
    col: 0
    width: 12
    height: 5
  - title: CCI - AATV Trading YTD Trend
    name: CCI - AATV Trading YTD Trend
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
      sales_channel.sales_channel_lvl1_desc: Inbound
      call_type.call_type_desc: New Business,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
      new_business_sale.is_will_join: N
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 2398
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 2402
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 2406
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 2386
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 18
    col: 12
    width: 12
    height: 6
  - title: CCI - Volume Trading YTD Trend
    name: CCI - Volume Trading YTD Trend
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
      call_type.call_type_desc: New Business,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
      new_business_sale.is_will_join: N
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
      expression: if(${new_business_sale.volume_fcast_trdy}=0, null, ${new_business_sale.volume_fcast_trdy}
        )
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
      new_business_sale.aatv_actual_fytd: Current
      new_business_sale.aatv_actual_fytd_ly: Last Year
      new_business_sale.aatv_fcast_fytd: Forecast
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
      - id: current
        name: Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 2271
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 2275
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 2279
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 2259
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 18
    col: 0
    width: 12
    height: 6
  - title: CCI - Calls Answered Trading YTD Trend NMU by Marketing Channel
    name: CCI - Calls Answered Trading YTD Trend NMU by Marketing Channel
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.ic_answered_actual_trdytd
    - new_business_sale.ic_answered_actual_trdy_ly
    - marketing_channel.marketing_channel_lvl2_full_desc
    pivots:
    - marketing_channel.marketing_channel_lvl2_full_desc
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_full_desc: Direct Marketing
      new_business_sale.accounting_treatmenr: Transacted
      new_business_sale.is_will_join: N
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      staff.staff_type: New Member Unit
      call_type.call_type_desc: New Business,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.trx_trdwk_number
    - marketing_channel.marketing_channel_lvl2_full_desc
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.ic_answered_actual_trdytd}=0, null, ${new_business_sale.ic_answered_actual_trdytd})
      value_format:
      value_format_name: decimal_0
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.ic_answered_actual_trdy_ly}=0, null, ${new_business_sale.ic_answered_actual_trdy_ly})
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
    - new_business_sale.ic_answered_actual_trdy_ly
    - new_business_sale.ic_answered_actual_trdytd
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
      - id: Cross-Sell Propositions - Current
        name: Cross-Sell Propositions - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 2690
      - id: Cross-Sell Propositions - Last Year
        name: Cross-Sell Propositions - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 2694
      - id: Digital Marketing - Current
        name: Digital Marketing - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 2698
      - id: Digital Marketing - Last Year
        name: Digital Marketing - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 2702
      - id: Direct Marketing - Current
        name: Direct Marketing - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 2706
      - id: Direct Marketing - Last Year
        name: Direct Marketing - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 2710
      - id: Face to Face and Outbound - Current
        name: Face to Face and Outbound - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 2714
      - id: Face to Face and Outbound - Last Year
        name: Face to Face and Outbound - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 2718
      - id: Other - Current
        name: Other - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 2722
      - id: Other - Last Year
        name: Other - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 2726
      - id: Partnerships - Current
        name: Partnerships - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 2730
      - id: Partnerships - Last Year
        name: Partnerships - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 2734
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 2678
    hidden_series:
    - Direct Marketing - Direct Mail - Last Year
    - Direct Marketing - Directories - Last Year
    - Direct Marketing - DR Radio - Last Year
    - Direct Marketing - DRTV - Last Year
    - Direct Marketing - Inserts - Last Year
    - Direct Marketing - Manufacturer Conversion - Last Year
    - Direct Marketing - Other - Last Year
    - Direct Marketing - Press - Last Year
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Marketing Channel Level 1: marketing_channel.marketing_channel_lvl1_full_desc
    row: 31
    col: 0
    width: 12
    height: 9
  - title: CCI - Calls Conversion Rate Metrics NMU by Marketing Channel
    name: CCI - Calls Conversion Rate Metrics NMU by Marketing Channel
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    - marketing_channel.marketing_channel_lvl2_full_desc
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_full_desc: Direct Marketing
      new_business_sale.accounting_treatmenr: Transacted
      new_business_sale.is_will_join: N
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      staff.staff_type: New Member Unit
      call_type.call_type_desc: New Business,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.ic_answered_actual_trdwk desc
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
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 2849
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 2844
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 2866
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 2861
    hidden_fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    series_labels:
      new_business_sale.agcp_actual_trdwk: AGCP Trading Wk
      new_business_sale.agcp_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.agcp_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.agcp_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.ic_actual_trdwk: Offered Trading WK
      new_business_sale.ic_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.ic_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_answered_actual_trdwk: Answered Trading WK
      new_business_sale.ic_answered_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_answered_actual_trdwk_vs_fcast: Trading WK vs Forecast
        %
      new_business_sale.ic_answered_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_cr_actual_trdwk: Conversion Rate Trading WK
      new_business_sale.ic_cr_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_cr_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.icr_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.aatv_actual_trdwk: AATV Trading WK
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.volume_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY %
      marketing_channel.marketing_channel_lvl1_full_desc: Marketing Channel Lvl 1
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Marketing Channel Level 1: marketing_channel.marketing_channel_lvl1_full_desc
    row: 26
    col: 12
    width: 12
    height: 5
  - title: CCI - Calls Conversion Rate Trading YTD Trend NMU by Marketing Channel
    name: CCI - Calls Conversion Rate Trading YTD Trend NMU by Marketing Channel
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.ic_cr_actual_trdytd
    - new_business_sale.ic_cr_actual_trdy_ly
    - marketing_channel.marketing_channel_lvl2_full_desc
    pivots:
    - marketing_channel.marketing_channel_lvl2_full_desc
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_full_desc: Direct Marketing
      new_business_sale.accounting_treatmenr: Transacted
      new_business_sale.is_will_join: N
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      staff.staff_type: New Member Unit
      call_type.call_type_desc: New Business,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.trx_trdwk_number
    - marketing_channel.marketing_channel_lvl2_full_desc
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.ic_cr_actual_trdytd}=0, null, ${new_business_sale.ic_cr_actual_trdytd})
      value_format:
      value_format_name: percent_2
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.ic_cr_actual_trdy_ly}=0, null, ${new_business_sale.ic_cr_actual_trdy_ly})
      value_format:
      value_format_name: percent_2
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
    - new_business_sale.ic_cr_actual_trdytd
    - new_business_sale.ic_cr_actual_trdy_ly
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
      valueFormat: ''
      series:
      - id: Cross-Sell Propositions - Current
        name: Cross-Sell Propositions - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3029
      - id: Cross-Sell Propositions - Last Year
        name: Cross-Sell Propositions - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3033
      - id: Digital Marketing - Current
        name: Digital Marketing - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3037
      - id: Digital Marketing - Last Year
        name: Digital Marketing - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3041
      - id: Direct Marketing - Current
        name: Direct Marketing - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3045
      - id: Direct Marketing - Last Year
        name: Direct Marketing - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3049
      - id: Face to Face and Outbound - Current
        name: Face to Face and Outbound - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3053
      - id: Face to Face and Outbound - Last Year
        name: Face to Face and Outbound - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3057
      - id: Other - Current
        name: Other - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3061
      - id: Other - Last Year
        name: Other - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3065
      - id: Partnerships - Current
        name: Partnerships - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3069
      - id: Partnerships - Last Year
        name: Partnerships - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3073
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 3017
    hidden_series:
    - Direct Marketing - Direct Mail - Last Year
    - Direct Marketing - Directories - Last Year
    - Direct Marketing - DR Radio - Last Year
    - Direct Marketing - DRTV - Last Year
    - Direct Marketing - Inserts - Last Year
    - Direct Marketing - Manufacturer Conversion - Last Year
    - Direct Marketing - Other - Last Year
    - Direct Marketing - Press - Last Year
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Marketing Channel Level 1: marketing_channel.marketing_channel_lvl1_full_desc
    row: 31
    col: 12
    width: 12
    height: 9
  - title: CCI - Volume Metrics NMU by Marketing Channel
    name: CCI - Volume Metrics NMU by Marketing Channel
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    - marketing_channel.marketing_channel_lvl2_full_desc
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_full_desc: Direct Marketing
      new_business_sale.accounting_treatmenr: Transacted
      new_business_sale.is_will_join: N
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      staff.staff_type: New Member Unit
      call_type.call_type_desc: New Business,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.ic_answered_actual_trdwk desc
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
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.volume_actual_trdwk
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3190
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 3185
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3207
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 3202
    hidden_fields:
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
    series_labels:
      new_business_sale.agcp_actual_trdwk: AGCP Trading Wk
      new_business_sale.agcp_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.agcp_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.agcp_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.ic_actual_trdwk: Offered Trading WK
      new_business_sale.ic_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.ic_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_answered_actual_trdwk: Answered Trading WK
      new_business_sale.ic_answered_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_answered_actual_trdwk_vs_fcast: Trading WK vs Forecast
        %
      new_business_sale.ic_answered_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_cr_actual_trdwk: Conversion Rate Trading WK
      new_business_sale.ic_cr_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_cr_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.icr_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.aatv_actual_trdwk: AATV Trading WK
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.volume_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY %
      marketing_channel.marketing_channel_lvl1_full_desc: Marketing Channel Lvl 1
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Marketing Channel Level 1: marketing_channel.marketing_channel_lvl1_full_desc
    row: 40
    col: 0
    width: 12
    height: 5
  - title: CCI - Volume Trading YTD Trend NMU by Marketing Channel
    name: CCI - Volume Trading YTD Trend NMU by Marketing Channel
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.volume_actual_trdytd
    - new_business_sale.volume_actual_trdy_ly
    - marketing_channel.marketing_channel_lvl2_full_desc
    pivots:
    - marketing_channel.marketing_channel_lvl2_full_desc
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_full_desc: Direct Marketing
      new_business_sale.accounting_treatmenr: Transacted
      new_business_sale.is_will_join: N
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      staff.staff_type: New Member Unit
      call_type.call_type_desc: New Business,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.trx_trdwk_number
    - marketing_channel.marketing_channel_lvl2_full_desc
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
      valueFormat: ''
      series:
      - id: Cross-Sell Propositions - Current
        name: Cross-Sell Propositions - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3542
      - id: Cross-Sell Propositions - Last Year
        name: Cross-Sell Propositions - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3546
      - id: Digital Marketing - Current
        name: Digital Marketing - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3550
      - id: Digital Marketing - Last Year
        name: Digital Marketing - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3554
      - id: Direct Marketing - Current
        name: Direct Marketing - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3558
      - id: Direct Marketing - Last Year
        name: Direct Marketing - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3562
      - id: Face to Face and Outbound - Current
        name: Face to Face and Outbound - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3566
      - id: Face to Face and Outbound - Last Year
        name: Face to Face and Outbound - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3570
      - id: Other - Current
        name: Other - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3574
      - id: Other - Last Year
        name: Other - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3578
      - id: Partnerships - Current
        name: Partnerships - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3582
      - id: Partnerships - Last Year
        name: Partnerships - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3586
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 3530
    hidden_series:
    - Direct Marketing - Direct Mail - Last Year
    - Direct Marketing - Directories - Last Year
    - Direct Marketing - DR Radio - Last Year
    - Direct Marketing - DRTV - Last Year
    - Direct Marketing - Inserts - Last Year
    - Direct Marketing - Manufacturer Conversion - Last Year
    - Direct Marketing - Other - Last Year
    - Direct Marketing - Press - Last Year
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Marketing Channel Level 1: marketing_channel.marketing_channel_lvl1_full_desc
    row: 45
    col: 0
    width: 12
    height: 9
  - title: CCI - AATV Metrics NMU by Marketing Channel
    name: CCI - AATV Metrics NMU by Marketing Channel
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    - marketing_channel.marketing_channel_lvl2_full_desc
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_full_desc: Direct Marketing
      new_business_sale.accounting_treatmenr: Transacted
      new_business_sale.is_will_join: N
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      staff.staff_type: New Member Unit
      call_type.call_type_desc: New Business,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.ic_answered_actual_trdwk desc
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
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3361
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 3356
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3378
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 3373
    hidden_fields:
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    series_labels:
      new_business_sale.agcp_actual_trdwk: AGCP Trading Wk
      new_business_sale.agcp_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.agcp_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.agcp_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.ic_actual_trdwk: Offered Trading WK
      new_business_sale.ic_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.ic_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_answered_actual_trdwk: Answered Trading WK
      new_business_sale.ic_answered_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_answered_actual_trdwk_vs_fcast: Trading WK vs Forecast
        %
      new_business_sale.ic_answered_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_cr_actual_trdwk: Conversion Rate Trading WK
      new_business_sale.ic_cr_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_cr_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.icr_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.aatv_actual_trdwk: AATV Trading WK
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.volume_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY %
      marketing_channel.marketing_channel_lvl1_full_desc: Marketing Channel Lvl 1
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Marketing Channel Level 1: marketing_channel.marketing_channel_lvl1_full_desc
    row: 40
    col: 12
    width: 12
    height: 5
  - title: CCI - AATV Trading YTD Trend NMU by Marketing Channel
    name: CCI - AATV Trading YTD Trend NMU by Marketing Channel
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.aatv_actual_trdytd
    - new_business_sale.aatv_actual_trdy_ly
    - marketing_channel.marketing_channel_lvl2_full_desc
    pivots:
    - marketing_channel.marketing_channel_lvl2_full_desc
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      marketing_channel.marketing_channel_lvl1_full_desc: Direct Marketing
      new_business_sale.accounting_treatmenr: Transacted
      new_business_sale.is_will_join: N
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      staff.staff_type: New Member Unit
      call_type.call_type_desc: New Business,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.trx_trdwk_number
    - marketing_channel.marketing_channel_lvl2_full_desc
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
      new_business_sale.agcp_actual_fytd: Current
      new_business_sale.agcp_actual_fytd_ly: Last Year
      new_business_sale.agcp_fcast_fytd: Forecast
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
      valueFormat: ''
      series:
      - id: Cross-Sell Propositions - Current
        name: Cross-Sell Propositions - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3714
      - id: Cross-Sell Propositions - Last Year
        name: Cross-Sell Propositions - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3718
      - id: Digital Marketing - Current
        name: Digital Marketing - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3722
      - id: Digital Marketing - Last Year
        name: Digital Marketing - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3726
      - id: Direct Marketing - Current
        name: Direct Marketing - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3730
      - id: Direct Marketing - Last Year
        name: Direct Marketing - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3734
      - id: Face to Face and Outbound - Current
        name: Face to Face and Outbound - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3738
      - id: Face to Face and Outbound - Last Year
        name: Face to Face and Outbound - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3742
      - id: Other - Current
        name: Other - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3746
      - id: Other - Last Year
        name: Other - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3750
      - id: Partnerships - Current
        name: Partnerships - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3754
      - id: Partnerships - Last Year
        name: Partnerships - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3758
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 3702
    hidden_series:
    - Direct Marketing - Direct Mail - Last Year
    - Direct Marketing - Directories - Last Year
    - Direct Marketing - DR Radio - Last Year
    - Direct Marketing - DRTV - Last Year
    - Direct Marketing - Inserts - Last Year
    - Direct Marketing - Manufacturer Conversion - Last Year
    - Direct Marketing - Other - Last Year
    - Direct Marketing - Press - Last Year
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Marketing Channel Level 1: marketing_channel.marketing_channel_lvl1_full_desc
    row: 45
    col: 12
    width: 12
    height: 9
  - name: CCI - Calls Answered Metrics MR
    title: CCI - Calls Answered Metrics MR
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
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
      new_business_sale.is_will_join: N
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      staff.staff_type: Member Retention
      call_type.call_type_desc: Service,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.ic_answered_actual_trdwk desc
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
    - new_business_sale.ic_answered_actual_trdwk
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3872
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 3867
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 3889
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 3884
    hidden_fields:
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.volume_actual_fytd_vs_ly
    series_labels:
      new_business_sale.agcp_actual_trdwk: AGCP Trading Wk
      new_business_sale.agcp_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.agcp_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.agcp_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.ic_actual_trdwk: Offered Trading WK
      new_business_sale.ic_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.ic_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_answered_actual_trdwk: Answered Trading WK
      new_business_sale.ic_answered_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_answered_actual_trdwk_vs_fcast: Trading WK vs Forecast
        %
      new_business_sale.ic_answered_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_cr_actual_trdwk: Conversion Rate Trading WK
      new_business_sale.ic_cr_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_cr_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.icr_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.aatv_actual_trdwk: AATV Trading WK
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.volume_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY %
      marketing_channel.marketing_channel_lvl1_full_desc: Marketing Channel Lvl 1
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 56
    col: 0
    width: 12
    height: 2
  - name: CCI - Calls Conversion Rate Metrics MR
    title: CCI - Calls Conversion Rate Metrics MR
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
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
      new_business_sale.is_will_join: N
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      staff.staff_type: Member Retention
      call_type.call_type_desc: Service,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.ic_answered_actual_trdwk desc
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
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4227
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 4222
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4244
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 4239
    hidden_fields:
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    series_labels:
      new_business_sale.agcp_actual_trdwk: AGCP Trading Wk
      new_business_sale.agcp_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.agcp_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.agcp_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.ic_actual_trdwk: Offered Trading WK
      new_business_sale.ic_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.ic_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_answered_actual_trdwk: Answered Trading WK
      new_business_sale.ic_answered_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_answered_actual_trdwk_vs_fcast: Trading WK vs Forecast
        %
      new_business_sale.ic_answered_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_cr_actual_trdwk: Conversion Rate Trading WK
      new_business_sale.ic_cr_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_cr_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.icr_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.aatv_actual_trdwk: AATV Trading WK
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.volume_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY %
      marketing_channel.marketing_channel_lvl1_full_desc: Marketing Channel Lvl 1
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 56
    col: 12
    width: 12
    height: 2
  - name: CCI - Calls Answered Trading YTD Trend MR
    title: CCI - Calls Answered Trading YTD Trend MR
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.ic_answered_actual_trdytd
    - new_business_sale.ic_answered_actual_trdy_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      new_business_sale.is_will_join: N
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      staff.staff_type: Member Retention
      call_type.call_type_desc: Service,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.ic_answered_actual_trdytd}=0, null, ${new_business_sale.ic_answered_actual_trdytd})
      value_format:
      value_format_name: decimal_0
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.ic_answered_actual_trdy_ly}=0, null, ${new_business_sale.ic_answered_actual_trdy_ly})
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
    - new_business_sale.ic_answered_actual_trdy_ly
    - new_business_sale.ic_answered_actual_trdytd
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
      - id: current
        name: Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4052
        axisId: current
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4056
        axisId: last_year
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 4040
    hidden_series:
    - Direct Marketing - Direct Mail - Last Year
    - Direct Marketing - Directories - Last Year
    - Direct Marketing - DR Radio - Last Year
    - Direct Marketing - DRTV - Last Year
    - Direct Marketing - Inserts - Last Year
    - Direct Marketing - Manufacturer Conversion - Last Year
    - Direct Marketing - Other - Last Year
    - Direct Marketing - Press - Last Year
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 58
    col: 0
    width: 12
    height: 6
  - name: CCI - Calls Conversion Rate Trading YTD Trend MR
    title: CCI - Calls Conversion Rate Trading YTD Trend MR
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.ic_cr_actual_trdytd
    - new_business_sale.ic_cr_actual_trdy_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      new_business_sale.is_will_join: N
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      staff.staff_type: Member Retention
      call_type.call_type_desc: Service,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.ic_cr_actual_trdytd}=0, null, ${new_business_sale.ic_cr_actual_trdytd})
      value_format:
      value_format_name: percent_2
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.ic_cr_actual_trdy_ly}=0, null, ${new_business_sale.ic_cr_actual_trdy_ly})
      value_format:
      value_format_name: percent_2
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
    - new_business_sale.ic_cr_actual_trdytd
    - new_business_sale.ic_cr_actual_trdy_ly
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
      valueFormat: ''
      series:
      - id: Cross-Sell Propositions - Current
        name: Cross-Sell Propositions - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4407
      - id: Cross-Sell Propositions - Last Year
        name: Cross-Sell Propositions - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4411
      - id: Digital Marketing - Current
        name: Digital Marketing - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4415
      - id: Digital Marketing - Last Year
        name: Digital Marketing - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4419
      - id: Direct Marketing - Current
        name: Direct Marketing - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4423
      - id: Direct Marketing - Last Year
        name: Direct Marketing - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4427
      - id: Face to Face and Outbound - Current
        name: Face to Face and Outbound - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4431
      - id: Face to Face and Outbound - Last Year
        name: Face to Face and Outbound - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4435
      - id: Other - Current
        name: Other - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4439
      - id: Other - Last Year
        name: Other - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4443
      - id: Partnerships - Current
        name: Partnerships - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4447
      - id: Partnerships - Last Year
        name: Partnerships - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4451
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 4395
    hidden_series:
    - Direct Marketing - Direct Mail - Last Year
    - Direct Marketing - Directories - Last Year
    - Direct Marketing - DR Radio - Last Year
    - Direct Marketing - DRTV - Last Year
    - Direct Marketing - Inserts - Last Year
    - Direct Marketing - Manufacturer Conversion - Last Year
    - Direct Marketing - Other - Last Year
    - Direct Marketing - Press - Last Year
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 58
    col: 12
    width: 12
    height: 6
  - name: CCI - Volume Metrics MR
    title: CCI - Volume Metrics MR
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
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
      new_business_sale.is_will_join: N
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      staff.staff_type: Member Retention
      call_type.call_type_desc: Service,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.ic_answered_actual_trdwk desc
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
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.volume_actual_trdwk
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4568
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 4563
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4585
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 4580
    hidden_fields:
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
    series_labels:
      new_business_sale.agcp_actual_trdwk: AGCP Trading Wk
      new_business_sale.agcp_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.agcp_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.agcp_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.ic_actual_trdwk: Offered Trading WK
      new_business_sale.ic_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.ic_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_answered_actual_trdwk: Answered Trading WK
      new_business_sale.ic_answered_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_answered_actual_trdwk_vs_fcast: Trading WK vs Forecast
        %
      new_business_sale.ic_answered_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_cr_actual_trdwk: Conversion Rate Trading WK
      new_business_sale.ic_cr_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_cr_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.icr_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.aatv_actual_trdwk: AATV Trading WK
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.volume_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY %
      marketing_channel.marketing_channel_lvl1_full_desc: Marketing Channel Lvl 1
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 64
    col: 0
    width: 12
    height: 2
  - name: CCI - AATV Metrics MR
    title: CCI - AATV Metrics MR
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
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
      new_business_sale.is_will_join: N
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      staff.staff_type: Member Retention
      call_type.call_type_desc: Service,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.ic_answered_actual_trdwk desc
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
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4739
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 4734
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4756
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 4751
    hidden_fields:
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    series_labels:
      new_business_sale.agcp_actual_trdwk: AGCP Trading Wk
      new_business_sale.agcp_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.agcp_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.agcp_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.ic_actual_trdwk: Offered Trading WK
      new_business_sale.ic_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.ic_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_answered_actual_trdwk: Answered Trading WK
      new_business_sale.ic_answered_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_answered_actual_trdwk_vs_fcast: Trading WK vs Forecast
        %
      new_business_sale.ic_answered_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_cr_actual_trdwk: Conversion Rate Trading WK
      new_business_sale.ic_cr_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_cr_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.icr_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.aatv_actual_trdwk: AATV Trading WK
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.volume_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY %
      marketing_channel.marketing_channel_lvl1_full_desc: Marketing Channel Lvl 1
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 64
    col: 12
    width: 12
    height: 2
  - name: CCI - AATV Trading YTD Trend MR
    title: CCI - AATV Trading YTD Trend MR
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.aatv_actual_trdytd
    - new_business_sale.aatv_actual_trdy_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      new_business_sale.is_will_join: N
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      staff.staff_type: Member Retention
      call_type.call_type_desc: Service,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
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
      new_business_sale.agcp_actual_fytd: Current
      new_business_sale.agcp_actual_fytd_ly: Last Year
      new_business_sale.agcp_fcast_fytd: Forecast
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
      - id: current
        name: Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 5568
        axisId: current
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 5572
        axisId: last_year
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 5556
    hidden_series:
    - Direct Marketing - Direct Mail - Last Year
    - Direct Marketing - Directories - Last Year
    - Direct Marketing - DR Radio - Last Year
    - Direct Marketing - DRTV - Last Year
    - Direct Marketing - Inserts - Last Year
    - Direct Marketing - Manufacturer Conversion - Last Year
    - Direct Marketing - Other - Last Year
    - Direct Marketing - Press - Last Year
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 66
    col: 12
    width: 12
    height: 6
  - title: CCI - Calls Answered Metrics by Department
    name: CCI - Calls Answered Metrics by Department
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - staff.staff_type
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      new_business_sale.is_will_join: Y
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      staff.staff_type: ACT,Close DEPT,Emergency Breakdown,Member Relations,New Member
        Unit,Not Applicable,Stay AA,Unknown
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.ic_answered_actual_trdwk desc
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
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.volume_actual_trdwk
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 5080
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 5075
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 5097
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 5092
    hidden_fields:
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    series_labels:
      new_business_sale.agcp_actual_trdwk: AGCP Trading Wk
      new_business_sale.agcp_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.agcp_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.agcp_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.ic_actual_trdwk: Offered Trading WK
      new_business_sale.ic_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.ic_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_answered_actual_trdwk: Answered Trading WK
      new_business_sale.ic_answered_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_answered_actual_trdwk_vs_fcast: Trading WK vs Forecast
        %
      new_business_sale.ic_answered_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_cr_actual_trdwk: Calls Conversion Rate Trading WK
      new_business_sale.ic_cr_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_cr_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.icr_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.volume_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY %
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 74
    col: 0
    width: 12
    height: 5
  - name: CCI - Volume Trading YTD Trend MR
    title: CCI - Volume Trading YTD Trend MR
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.volume_actual_trdytd
    - new_business_sale.volume_actual_trdy_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      new_business_sale.is_will_join: N
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      staff.staff_type: Member Retention
      call_type.call_type_desc: Service,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
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
      valueFormat: ''
      series:
      - id: Cross-Sell Propositions - Current
        name: Cross-Sell Propositions - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4920
      - id: Cross-Sell Propositions - Last Year
        name: Cross-Sell Propositions - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4924
      - id: Digital Marketing - Current
        name: Digital Marketing - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4928
      - id: Digital Marketing - Last Year
        name: Digital Marketing - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4932
      - id: Direct Marketing - Current
        name: Direct Marketing - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4936
      - id: Direct Marketing - Last Year
        name: Direct Marketing - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4940
      - id: Face to Face and Outbound - Current
        name: Face to Face and Outbound - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4944
      - id: Face to Face and Outbound - Last Year
        name: Face to Face and Outbound - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4948
      - id: Other - Current
        name: Other - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4952
      - id: Other - Last Year
        name: Other - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4956
      - id: Partnerships - Current
        name: Partnerships - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4960
      - id: Partnerships - Last Year
        name: Partnerships - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 4964
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 4908
    hidden_series: []
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 66
    col: 0
    width: 12
    height: 6
  - title: CCI - Calls Conversion Rate Metrics by Department
    name: CCI - Calls Conversion Rate Metrics by Department
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - staff.staff_type
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      new_business_sale.is_will_join: Y
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      staff.staff_type: ACT,Close DEPT,Emergency Breakdown,Member Relations,New Member
        Unit,Not Applicable,Stay AA,Unknown
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.ic_answered_actual_trdwk desc
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
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.volume_actual_trdwk
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 5390
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 5385
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 5407
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 5402
    hidden_fields:
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    series_labels:
      new_business_sale.agcp_actual_trdwk: AGCP Trading Wk
      new_business_sale.agcp_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.agcp_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.agcp_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.ic_actual_trdwk: Offered Trading WK
      new_business_sale.ic_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.ic_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_answered_actual_trdwk: Answered Trading WK
      new_business_sale.ic_answered_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_answered_actual_trdwk_vs_fcast: Trading WK vs Forecast
        %
      new_business_sale.ic_answered_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_cr_actual_trdwk: Calls Conversion Rate Trading WK
      new_business_sale.ic_cr_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_cr_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.icr_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.volume_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY %
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 74
    col: 12
    width: 12
    height: 5
  - title: CCI - Calls Answered Trading YTD Trend by Department
    name: CCI - Calls Answered Trading YTD Trend by Department
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.ic_answered_actual_trdytd
    - new_business_sale.ic_answered_actual_trdy_ly
    - staff.staff_type
    pivots:
    - staff.staff_type
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      new_business_sale.is_will_join: Y
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      staff.staff_type: ACT,Close DEPT,Emergency Breakdown,Member Retention,New Member
        Unit,Not Applicable,Stay AA,Unknown
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - staff.staff_type 0
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.ic_answered_actual_trdytd}=0, null, ${new_business_sale.ic_answered_actual_trdytd})
      value_format:
      value_format_name: decimal_0
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.ic_answered_actual_trdy_ly}=0, null, ${new_business_sale.ic_answered_actual_trdy_ly})
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
    - new_business_sale.ic_answered_actual_trdy_ly
    - new_business_sale.ic_answered_actual_trdytd
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
      valueFormat: ''
      series:
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 5256
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 5260
      - id: current
        name: Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 5264
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 5244
    hidden_series:
    - Accident Assist - Last Year
    - ACT - Last Year
    - Admin.com - Last Year
    - Close DEPT - Last Year
    - DO NOT USE GRAD BAY ALL STAFF - Last Year
    - Emergency Breakdown - Last Year
    - Member Relations - Last Year
    - Member Retention - Last Year
    - MR Newcastle - Last Year
    - New Member Unit - Last Year
    - Not Applicable - Last Year
    - QM - Last Year
    - Resourcing - Last Year
    - Social Media - Last Year
    - Stay AA - Last Year
    - UNKNOWN - Last Year
    - Unknown - Last Year
    - User Application Team - Last Year
    - Wheels Team - Member Care - Last Year
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 79
    col: 0
    width: 12
    height: 7
  - title: CCI - Calls Conversion Rate Trading YTD Trend by Department
    name: CCI - Calls Conversion Rate Trading YTD Trend by Department
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.ic_cr_actual_trdytd
    - new_business_sale.ic_cr_actual_trdy_ly
    - staff.staff_type
    pivots:
    - staff.staff_type
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      new_business_sale.is_will_join: Y
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      staff.staff_type: ACT,Close DEPT,Emergency Breakdown,Member Retention,New Member
        Unit,Not Applicable,Stay AA,Unknown
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - staff.staff_type 0
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.ic_cr_actual_trdytd}=0, null, ${new_business_sale.ic_cr_actual_trdytd})
      value_format:
      value_format_name: percent_2
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.ic_cr_actual_trdy_ly}=0, null, ${new_business_sale.ic_cr_actual_trdy_ly})
      value_format:
      value_format_name: percent_2
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
    - new_business_sale.ic_cr_actual_trdytd
    - new_business_sale.ic_cr_actual_trdy_ly
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
      valueFormat: ''
      series:
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 5905
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 5909
      - id: current
        name: Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 5913
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 5893
    hidden_series:
    - Accident Assist - Last Year
    - ACT - Last Year
    - Admin.com - Last Year
    - Close DEPT - Last Year
    - DO NOT USE GRAD BAY ALL STAFF - Last Year
    - Emergency Breakdown - Last Year
    - Member Relations - Last Year
    - Member Retention - Last Year
    - MR Newcastle - Last Year
    - New Member Unit - Last Year
    - Not Applicable - Last Year
    - QM - Last Year
    - Resourcing - Last Year
    - Social Media - Last Year
    - Stay AA - Last Year
    - UNKNOWN - Last Year
    - Unknown - Last Year
    - User Application Team - Last Year
    - Wheels Team - Member Care - Last Year
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 79
    col: 12
    width: 12
    height: 7
  - title: CCI - AATV Metrics by Department
    name: CCI - AATV Metrics by Department
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - staff.staff_type
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      new_business_sale.is_will_join: Y
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      staff.staff_type: ACT,Close DEPT,Emergency Breakdown,Member Relations,New Member
        Unit,Not Applicable,Stay AA,Unknown
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.ic_answered_actual_trdwk desc
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
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.volume_actual_trdwk
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6424
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 6419
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6441
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 6436
    hidden_fields:
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
    - new_business_sale.volume_actual_trdwk
    series_labels:
      new_business_sale.agcp_actual_trdwk: AGCP Trading Wk
      new_business_sale.agcp_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.agcp_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.agcp_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.ic_actual_trdwk: Offered Trading WK
      new_business_sale.ic_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.ic_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_answered_actual_trdwk: Answered Trading WK
      new_business_sale.ic_answered_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_answered_actual_trdwk_vs_fcast: Trading WK vs Forecast
        %
      new_business_sale.ic_answered_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_cr_actual_trdwk: Calls Conversion Rate Trading WK
      new_business_sale.ic_cr_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_cr_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.icr_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.volume_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY %
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 86
    col: 12
    width: 12
    height: 5
  - title: CCI - Volume Metrics by Department
    name: CCI - Volume Metrics by Department
    model: commercial_road_new_business
    explore: new_business_sale
    type: table
    fields:
    - staff.staff_type
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_fytd_vs_ly
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      new_business_sale.is_will_join: Y
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      staff.staff_type: ACT,Close DEPT,Emergency Breakdown,Member Relations,New Member
        Unit,Not Applicable,Stay AA,Unknown
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - new_business_sale.ic_answered_actual_trdwk desc
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
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.volume_actual_trdwk
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 5729
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 5724
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
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 5746
      bold: false
      italic: false
      strikethrough: false
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 5741
    hidden_fields:
    - new_business_sale.ic_answered_actual_trdwk
    - new_business_sale.ic_answered_actual_trdwk_vs_ly
    - new_business_sale.ic_answered_actual_trdwk_vs_fcast
    - new_business_sale.ic_answered_actual_fytd_vs_ly
    - new_business_sale.ic_cr_actual_trdwk
    - new_business_sale.ic_cr_actual_trdwk_vs_ly
    - new_business_sale.ic_cr_actual_trdwk_vs_fcast
    - new_business_sale.icr_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_fytd_vs_ly
    series_labels:
      new_business_sale.agcp_actual_trdwk: AGCP Trading Wk
      new_business_sale.agcp_actual_trdwk_vs_ly: Trading Wk vs LY%
      new_business_sale.agcp_actual_trdwk_vs_fcast: Trading Wk vs Forecast%
      new_business_sale.agcp_actual_fytd_vs_ly: FYTD vs LY%
      new_business_sale.ic_actual_trdwk: Offered Trading WK
      new_business_sale.ic_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.ic_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_answered_actual_trdwk: Answered Trading WK
      new_business_sale.ic_answered_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_answered_actual_trdwk_vs_fcast: Trading WK vs Forecast
        %
      new_business_sale.ic_answered_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.ic_cr_actual_trdwk: Calls Conversion Rate Trading WK
      new_business_sale.ic_cr_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.ic_cr_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.icr_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.aatv_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.aatv_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.aatv_actual_fytd_vs_ly: FYTD vs LY %
      new_business_sale.volume_actual_trdwk_vs_ly: Trading WK vs LY %
      new_business_sale.volume_actual_trdwk_vs_fcast: Trading WK vs Forecast %
      new_business_sale.volume_actual_fytd_vs_ly: FYTD vs LY %
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 86
    col: 0
    width: 12
    height: 5
  - title: CCI - AATV Trading YTD Trend by Department
    name: CCI - AATV Trading YTD Trend by Department
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - staff.staff_type
    - new_business_sale.aatv_actual_trdytd
    - new_business_sale.aatv_actual_trdy_ly
    pivots:
    - staff.staff_type
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      new_business_sale.is_will_join: Y
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      staff.staff_type: ACT,Close DEPT,Emergency Breakdown,Member Retention,New Member
        Unit,Not Applicable,Stay AA,Unknown
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - staff.staff_type 0
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
      new_business_sale.agcp_actual_fytd: Current
      new_business_sale.agcp_actual_fytd_ly: Last Year
      new_business_sale.agcp_fcast_fytd: Forecast
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
      - id: ACT - Current
        name: ACT - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6237
      - id: ACT - Last Year
        name: ACT - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6241
      - id: Close DEPT - Current
        name: Close DEPT - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6245
      - id: Close DEPT - Last Year
        name: Close DEPT - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6249
      - id: Emergency Breakdown - Current
        name: Emergency Breakdown - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6253
      - id: Emergency Breakdown - Last Year
        name: Emergency Breakdown - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6257
      - id: Member Retention - Current
        name: Member Retention - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6261
      - id: Member Retention - Last Year
        name: Member Retention - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6265
      - id: New Member Unit - Current
        name: New Member Unit - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6269
      - id: New Member Unit - Last Year
        name: New Member Unit - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6273
      - id: Not Applicable - Current
        name: Not Applicable - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6277
      - id: Not Applicable - Last Year
        name: Not Applicable - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6281
      - id: Stay AA - Current
        name: Stay AA - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6285
      - id: Stay AA - Last Year
        name: Stay AA - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6289
      - id: Unknown - Current
        name: Unknown - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6293
      - id: Unknown - Last Year
        name: Unknown - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6297
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 6225
    hidden_series:
    - Accident Assist - Last Year
    - ACT - Last Year
    - Admin.com - Last Year
    - Close DEPT - Last Year
    - DO NOT USE GRAD BAY ALL STAFF - Last Year
    - Emergency Breakdown - Last Year
    - Member Relations - Last Year
    - Member Retention - Last Year
    - MR Newcastle - Last Year
    - New Member Unit - Last Year
    - Not Applicable - Last Year
    - QM - Last Year
    - Resourcing - Last Year
    - Social Media - Last Year
    - Stay AA - Last Year
    - UNKNOWN - Last Year
    - Unknown - Last Year
    - User Application Team - Last Year
    - Wheels Team - Member Care - Last Year
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 91
    col: 12
    width: 12
    height: 7
  - title: CCI - Volume Trading YTD Trend by Department
    name: CCI - Volume Trading YTD Trend by Department
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.volume_actual_trdytd
    - new_business_sale.volume_actual_trdy_ly
    - staff.staff_type
    pivots:
    - staff.staff_type
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      new_business_sale.is_will_join: Y
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      staff.staff_type: ACT,Close DEPT,Emergency Breakdown,Member Retention,New Member
        Unit,Not Applicable,Stay AA,Unknown
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - staff.staff_type 0
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
      valueFormat:
      series:
      - id: ACT - Current
        name: ACT - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6050
      - id: ACT - Last Year
        name: ACT - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6054
      - id: Close DEPT - Current
        name: Close DEPT - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6058
      - id: Close DEPT - Last Year
        name: Close DEPT - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6062
      - id: Emergency Breakdown - Current
        name: Emergency Breakdown - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6066
      - id: Emergency Breakdown - Last Year
        name: Emergency Breakdown - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6070
      - id: Member Retention - Current
        name: Member Retention - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6074
      - id: Member Retention - Last Year
        name: Member Retention - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6078
      - id: New Member Unit - Current
        name: New Member Unit - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6082
      - id: New Member Unit - Last Year
        name: New Member Unit - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6086
      - id: Not Applicable - Current
        name: Not Applicable - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6090
      - id: Not Applicable - Last Year
        name: Not Applicable - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6094
      - id: Stay AA - Current
        name: Stay AA - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6098
      - id: Stay AA - Last Year
        name: Stay AA - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6102
      - id: Unknown - Current
        name: Unknown - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6106
      - id: Unknown - Last Year
        name: Unknown - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6110
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 6038
    hidden_series:
    - ACT - Last Year
    - Close DEPT - Last Year
    - Emergency Breakdown - Last Year
    - Member Retention - Last Year
    - New Member Unit - Last Year
    - Not Applicable - Last Year
    - Stay AA - Last Year
    - Unknown - Last Year
    - UNKNOWN - Last Year
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 91
    col: 0
    width: 12
    height: 7
  - title: CCI - Service Level Trading YTD Trend by Department
    name: CCI - Service Level Trading YTD Trend by Department
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_trdwk_number
    - new_business_sale.ic_answered_sl_actual_trdytd
    - new_business_sale.ic_answered_sl_actual_trdy_ly
    - staff.staff_type
    pivots:
    - staff.staff_type
    filters:
      new_business_sale.date_filter_parameter: 'NULL'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q3F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
      sales_channel.sales_channel_lvl1_full_desc: Inbound
      staff.staff_type: ACT,Close DEPT,Emergency Breakdown,Member Retention,New Member
        Unit,Not Applicable,Stay AA,Unknown
      call_type.call_type_desc: New Business,Not Applicable
      new_business_sale.exclude_digital_data_filter: 'Yes'
      new_business_sale.exclude_outbound_data_filter: 'Yes'
      new_business_sale.exclude_sales_data_filter: 'Yes'
      new_business_sale.exclude_fst_staffing_data_filter: 'Yes'
    sorts:
    - staff.staff_type 0
    - new_business_sale.trx_trdwk_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.ic_answered_sl_actual_trdytd}=0, null, ${new_business_sale.ic_answered_sl_actual_trdytd})
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.ic_answered_sl_actual_trdy_ly}=0, null, ${new_business_sale.ic_answered_sl_actual_trdy_ly})
      value_format:
      value_format_name: percent_2
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
    - new_business_sale.ic_answered_sl_actual_trdytd
    - new_business_sale.ic_answered_sl_actual_trdy_ly
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
      valueFormat:
      series:
      - id: ACT - Current
        name: ACT - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6605
      - id: ACT - Last Year
        name: ACT - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6609
      - id: Close DEPT - Current
        name: Close DEPT - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6613
      - id: Close DEPT - Last Year
        name: Close DEPT - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6617
      - id: Emergency Breakdown - Current
        name: Emergency Breakdown - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6621
      - id: Emergency Breakdown - Last Year
        name: Emergency Breakdown - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6625
      - id: Member Retention - Current
        name: Member Retention - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6629
      - id: Member Retention - Last Year
        name: Member Retention - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6633
      - id: New Member Unit - Current
        name: New Member Unit - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6637
      - id: New Member Unit - Last Year
        name: New Member Unit - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6641
      - id: Not Applicable - Current
        name: Not Applicable - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6645
      - id: Not Applicable - Last Year
        name: Not Applicable - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6649
      - id: Stay AA - Current
        name: Stay AA - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6653
      - id: Stay AA - Last Year
        name: Stay AA - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6657
      - id: Unknown - Current
        name: Unknown - Current
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6661
      - id: Unknown - Last Year
        name: Unknown - Last Year
        __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
        __LINE_NUM: 6665
      __FILE: commercial_road_new_business/04___focus_on_contact_centre_sales_channel__inbound.dashboard.lookml
      __LINE_NUM: 6593
    hidden_series:
    - ACT - Last Year
    - Close DEPT - Last Year
    - Emergency Breakdown - Last Year
    - Member Retention - Last Year
    - New Member Unit - Last Year
    - Not Applicable - Last Year
    - Stay AA - Last Year
    - Unknown - Last Year
    - UNKNOWN - Last Year
    discontinuous_nulls: false
    listen:
      'Performance to end of day:': new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
    row: 100
    col: 0
    width: 24
    height: 8
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
    default_value: Direct Marketing
    model: commercial_road_new_business
    explore: new_business_sale
    field: marketing_channel.marketing_channel_lvl1_full_desc
    listens_to_filters: []
    allow_multiple_values: true
    required: false