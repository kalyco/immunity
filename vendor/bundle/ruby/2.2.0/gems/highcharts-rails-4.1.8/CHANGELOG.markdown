# 4.1.8 / 2015-08-31

* Updated Highcharts to 4.1.8 (2015-08-20)
  * Added experimental support for using HTML in exported charts through the exporting.allowHTML option. Discussed in #2473.
  * Added new option, maxPointWidth, to the column chart type and its derivatives.
  * Add %k, hours with no padding, in dateFormat.
  * Don't cache undefined bounding box key. Closes #4328.
  * Fixed #4448, which causes duplicated event calls for column series.
  * Fixed #1498, minor ticks were missing when using column series.
  * Fixed #1655, where setExtremes event could be called with undefined extremes.
  * Fixed #2775, click on custom button propagated and caused JS errors when destroying chart.
  * Fixed #3379, minPadding and maxPadding was wrong on color axis.
  * Fixed #3737, points within a group were not reversed in a reversed bar chart X axis.
  * Fixed #3879, where linked series didn't inherit initial visibility from a parent.
  * Fixed #3909, HTML data label was invisible after drilling up.
  * Fixed #4149, tooltip went off plot area when data was clipped.
  * Fixed #4189, wrong position of the legend in IE7.
  * Fixed #4219, enconding problem with ellipsis. Better fix for #4079.
  * Fixed #4246, pie slices with null values should not be rendered.
  * Fixed #4313, setting one of the extremes removed both, min and max, axis paddings for bubble series.
  * Fixed #4320, stack items building up and creating memory leak when adding and removing points.
  * Fixed #4333, data label overlapping detection was too aggressive. Don't handle padding when the label doesn't have a border or background.
  * Fixed #4339, touch-dragging in IE11 on a zoom enabled chart caused JS errors.
  * Fixed #4343, axis lines missing when 3D was loaded.
  * Fixed #4347, legend item click of heatmap with data classes should hide items.
  * Fixed #4349, updating point.x prevented point from being hidden from legend.
  * Fixed #4350, pie chart failing with StockChart constructor.
  * Fixed #4356, pointBreak wasn't called for values below the threshold.
  * Fixed #4356, series with null threshold now calls breakPoint correctly
  * Fixed #4359, drilldown pie selected slices had wrong color.
  * Fixed #4360, float error on logarithmic axis label.
  * Fixed #4364, chart click event fired when clicking menu items in the export menu.
  * Fixed #4365, pie chart connectors were not hidden when data labels used HTML and hiding the series.
  * Fixed #4371, where negative Axis offset miscalculated clip-path for series.
  * Fixed #4390, JS error in some cases on updating a series with no data.
  * Fixed #4396, different minSize and maxSize per separate series didn't work.
  * Fixed #4401, better handling categories based on a point.name.
  * Fixed #4410, a regression causing incorrect mouseover events in column charts.
  * Fixed #4411, setting axis.labels.step to 1 didn't result in 1:1 labels.
  * Fixed #4420, generic X axis gridline width with 3d columns.
  * Fixed #4421, overlapping upper data labels on arearange series.
  * Fixed #4430, point color was not set on positive points when negativeColor was set.
  * Fixed #4434, regression causing failure with reversed solid gauge.
  * Fixed #4443, auto rotation was not reset after widening chart when labels used HTML.
  * Fixed #4449, a regression causing wrong alignment on legend items when rtl was combined with useHTML.
  * Fixed #4477, too dense ticks when setting staggerLines, caused browser crash.
  * Fixed #4313, setting one of the extremes removed both, min and max, paddings.
  * Fixed #4351, setSize with standalone adapter didn't resize inner container.
  * Fixed animation on updating map colors.
  * Fixed issue with displayNegative not working with all data. Closes #4419
  * Fixed issue with pie and data labels producing JS error in IE6.
  * Fixed issue with updating mapbubble point to null.
  * Fixed regression with JS error on updating pie slice value to null.
  * Improve logic for pointBreaks, touch #4356
  * Partial fix for #3861, bubble series not working with logarithmic axes. It now displays, but the bubbles are clipped unless the user sets a padding.

# 4.1.7 / 2015-08-31

* Updated Highcharts to 4.1.7 (2015-06-26)
  * Added new option, drilldown.allowPointDrilldown, that can be set to false to allow only drilling to categories. Closes #4295.
  * Added support for useHTML in legend navigation.
  * Added useHTML option to no-data-to-display module. Closes #4316.
  * Fixed #2911, JS error when drilldown and allowPointSelect were enabled at the same time.
  * Fixed #3318, gauge background altered background on polar charts in the same page.
  * Fixed #3650, updating a point from zero in 3d pies.
  * Fixed #3709, crash when showing/hiding linked series and setting data at the same time.
  * Fixed #3941, added option to turn off axis label ellipsis through text-overflow style.
  * Fixed #4130, errors when running Series.update from the series' own events.
  * Fixed #4170, halo was still visible after hiding pie slice.
  * Fixed #4233, columns and areas ascended from botton when threshold was null and all values negative. Closed #4282.
  * Fixed #4275, when null points were present inside an axis break, connectNulls: false did not have an effect.
  * Fixed #4280, 3D for inverted charts was disabled.
  * Fixed #4284, a regression causing columns to disappear after Point.update with an object argument.
  * Fixed #4291, number suffixes like k and M was applied to non-round tick labels.
  * Fixed #4301, point update on solid gauge gave wrong animation.
  * Fixed #4308, graphs were clipped to axis line even when it was offset.
  * Fixed #4309, JS error in Firefox when rendering chart inside an iframe with display:none.
  * Fixed #4310, point hovering was unstable when stickyTracking was false and point markers disabled in normal state.
  * Fixed #4318, ignoreHiddenPoint didn't take effect for funnels.
  * Fixed #4319, tooltip was broken on canvas heatmap demo.
  * Fixed bad translation from broken axis pixels to values. Part of #4229.
  * Fixed issue with Batik powered exporting and IE8. Invalid SVG tag.

# 4.1.6 / 2015-08-31

* Updated Highcharts to 4.1.6 (2015-06-12)
  * Added new option, series.getExtremesFromAll, that tells the y axis to be scaled to the whole series range, not only the visible part.
  * Added scaling support for Z axis on 3D charts.
  * Added xAxis.title.x and xAxis.title.y options for positioning.
  * Fixed #4160, 3D should be disabled for inverted charts
  * Fixed #4160, 3D should be disabled for inverted charts.
  * Fixed #1457, columnrange did not render with reversed Y axis.
  * Fixed #182, browser hangs when updating chart from series mouseOut event.
  * Fixed #2077, innerSize of pies was not correct when size was dynamic.
  * Fixed #2088, crosshair shown on multiple axes.
  * Fixed #3923, crash in Chrome when extending a dashed line to extreme length.
  * Fixed #3974, duplicated data labels on Retina displays when text-shadow is applied.
  * Fixed #3977, tooltip content sometimes displayed outside tooltip.
  * Fixed #4069, slow updating of multiple pie slices.
  * Fixed #4108, line wrap dataLabels in tree maps.
  * Fixed #4116, cannot disable tooltip on polar chart.
  * Fixed #4117, broken tooltips in pie charts when useHTML was enabled.
  * Fixed #4124, treemap click on legend item returned error.
  * Fixed #4128, tooltip only looked at X value for line series
  * Fixed #4146, point marker stayed after updating point to null when connectNulls was true.
  * Fixed #4161, a regression causing wrong position of tooltip in top row of heatmap.
  * Fixed #4163, tooltip broken on pie in combo chart.
  * Fixed #4166, resetting point state was coupled to tooltip, resulting in state not reset when the tooltip was empty.
  * Fixed #4167, chart crashed on Y axis breaks in stock chart.
  * Fixed #4177, X axis label ellipsis overlapped when in the middle of the axis.
  * Fixed #4197, ignoreHiddenPoint didn't work.
  * Fixed #4200, unresponsive tooltip on tight column chart with shared tooltip.
  * Fixed #4201, redundant tick alignment to empty axes.
  * Fixed #4203, radial gradient rendered wrong in 3D Pies
  * Fixed #4208, click events did not bubble.
  * Fixed #4210, touch scroll was trapped when zoomType enabled.
  * Fixed #4217, tickInterval on linked axis did not follow that of parent.
  * Fixed #4221, negative color and zones not working with logarithmic axis.
  * Fixed #4223, tooltips showed year when data resolution was less than 1 millisecond.
  * Fixed #4247, X zooming within an Y axis break resulted in empty chart.
  * Fixed #4256, summary columns on waterfall, including data labels, extended below the plot area if an Y axis minimum was set.
  * Fixed #4261, added namespace to drillToNode on click event in tree maps.
  * Fixed #4264, column in stacked chart was mispositioned in some cases.
  * Fixed issue with wrong data label being hidden on overlap in columns.
  * Fixed issues with ellipsis on first and last label on X axis. Closes #3975.
  * Export: Added missing treemaps.js, fixes #4092.
  * Export: Added support for Map constructor.
  * Export: Added treemaps for serverside rendering.
  * Export: Enable loading of maps.js.

# 4.1.5 / 2015-04-13

* Updated Highcharts to 4.1.5
  * Added new option, series.keys.
  * Added now option, autoRotationLimit, as an upper limit for when to apply auto rotation. Closes #3941.
  * Added options to solidgauge, radius and innerRadius on individual points.
  * Changed tooltip behaviour in line charts and derivatives. This made swithching between series easier when the other series was covered by the tooltip.
  * Fixed #2922, redundant drilldown event on clicking data label.
  * Fixed #3355, causing misaligned bars around the threshold value.
  * Fixed #3758, setData on heatmap caused X axis to lose point range.
  * Fixed #3839, axis labels not using available space after resize.
  * Fixed #3867, errors on drill up on multi-series multi-level chart.
  * Fixed #3912, shared tooltips not working well with pointPlacement.
  * Fixed #3935, time axes got wrong extremes in rare cases.
  * Fixed #3951, drilldown activeLabelStyle was lost after setting extremes.
  * Fixed #3962, tooltip covered stacked columns near edges of the chart.
  * Fixed #3967, shared tooltip not working with two datetime axes.
  * Fixed #3969, legend indicator not displayed on colorAxis for 0 values.
  * Fixed #3976, one legend item's height influenced all subsequent boxes.
  * Fixed #3985, clicks registering incorrectly on column charts.
  * Fixed #3988, column legend markers were not aligned to baseline.
  * Fixed #3990, drilldown failed after destroying and re-initialising chart.
  * Fixed #3995, all points were black after drilling in treemap with a coloraxis.
  * Fixed #3996, font-style not taking effect with useHTML.
  * Fixed #4001, errors thrown on area with a single point and zones.
  * Fixed #4003, text replacement in export replaced content in label.
  * Fixed #4006, wrong rendering of zones with values less then the minimum.
  * Fixed #4014, touch scrolling not working on charts since the default followTouchMove changed.
  * Fixed #4015, solid gauge color not updating in IE8.
  * Fixed #4035, lineWidthPlus adding to states.hover.lineWidth.
  * Fixed #4046, treemap issue with drillToNode and redraw of the chart.
  * Fixed #4051, minPointLength gave wrong position on reversed Y axis.
  * Fixed #4055, unable to set borderWidth to 0 for 3d columns.
  * Fixed #4056, stack labels on reversed axis not vertically aligned correctly.
  * Fixed #4062, 3d zIndex incorrect on chart resize.
  * Fixed #4067, 3d columns datalabels not aligned.
  * Fixed #4068, null colors rendered as black in columns and white in pies.
  * Fixed #4069, setVisible was very slow on pies with many legend items.
  * Fixed #4070, label ellipsis lost on vertical axis after redraw.
  * Fixed #4075, zone elements were not destroyed on series update.
  * Fixed #4079, bullets in tooltips had wrong encoding in IE8 on non-UTC pages.
  * Fixed #4082, series with zones didn't apply hover line width.
  * Fixed #4083, series with zones animated wrong on addPoint.
  * Fixed #4085, wrong usage of momentjs in demo.
  * Fixed #3832, bundled PhantomJS scripts not copied to filesystem on Windows.

# 4.1.4 / 2015-03-10

* Updated Highcharts to 4.1.4
  * Added originalEvent to wrapped event argument for point and series click. Closed #3913.
  * Changed description for error 23 (related to #3920).
  * Fixed data.parseDate callback.
  * Fixed #1093, chart was resized after cancelling print.
  * Fixed #3890, errors on box plots and error bar series when stacking was set in general plot options.
  * Fixed #3891, axis label rotation not working outside -90 to 90.
  * Fixed #3899, tooltip on column range only working on one point per X value.
  * Fixed #3901, tooltip displaying for null points.
  * Fixed #3904, shared tooltip gave errors with null points.
  * Fixed #3911, data label duplication on WebKit with Retina displays.
  * Fixed #3919, click event always triggered on the same point with a shared tooltip.
  * Fixed #3920, color tweening with gradient fills caused black result.
  * Fixed #3926, tooltip not showing when entering the plot directly on a column.
  * Fixed #3932, shadow was not applied when negativeColor was used.
  * Fixed #3934, pie chart did not update when legend was hidden.
  * Fixed #3937, pointer events not reset after chart destroy.
  * Fixed #3945, tooltip did't work afer resize.
  * Fixed regression causing mouseover to not work with a single series.

# 4.1.3 / 2015-02-27

* Updated Highcharts to 4.1.3
  * Fixed #3900, duplicated Y axis in exported charts. Made export module more testable so it would have caught this error.
  * Fixed #3898, zones incorrectly applied if outside axis range.
  * Fixed #3895, error in title setter when setting a non-string value.

# 4.1.2 / 2015-02-27

* Updated Highcharts to 4.1.2
  * Added new option to tree maps: interactByLeaf
  * Added new dataLabel option, shape, in order to allow callouts and connectors on data labels.
  * Fixed #3567, Safari failed at exporting charts with images.
  * Fixed #3898, zones incorrectly applied if outside axis range.
  * Fixed #3895, JS error when setting element title to a non-string value.
  * Fixed #3886, wrong rendering of waterfall with a non-zero Y axis minimum.
  * Fixed #3873, series.points array order was modified when building the k-d tree.
  * Fixed #3866, data labels not re-appearing in remaining series after hiding another series.
  * Fixed #3875, eternal loop and crash in Chrome when using minorTickInterval on an axis with very close data points.
  * Fixed #3842 and #3872, data labels with text shadow are mispositioned in Firefox and modern IE.
  * Fixed #3849, duplicated text on data labels in export. Closes #3864.
  * Fixed #3868, setData broke tooltip.
  * Fixed issue with tooltip not hiding after hiding a series from a floating legend.
  * Hide tooltip on mouse leaving the plot area, also when a hoverSeries is not defined.
  * Fixed #3860, a regression causing onMouseOver event not to work on line series.
  * Fixed #3856, shared tooltip in polar charts.
  * Fixed #3863, pointer with data grouping and addSeries.
  * Fixed #3844, colorByPoint not working on tree maps.
  * Fixed #2202, chartOptions.xAxis options not added in export.
  * Fixed #3852, a regression causing logarithmic axis on gauges to fail.
  * Fixed #3845, problems with addPoint on 3D pies.
  * Fixed #3841, 3d column layering issue.
  * Fixed #3793, charts with huge numbers fail at Number.toFixed.
  * Fixed #3841, issue with multiple columns in 3d.
  * Fixed #3830, point names in category axis were lost after Axis.update.
  * Fixed #3836, a regression causing plot band labels to always be visible.
  * Fixed #3840, isIntermediateSum miscalculation.
  * Fixed drilldown issue with labels having both drilldown and static points.
  * Fixed #3839, a regression causing columns not to be clipped while animating in.
  * Fixed #3837, too aggressive data label collision detection in heat maps.
  * Fixed #3834, crosshair drawn incorrectly on dynamically added yAxes.
  * Fixed #3806, JS errors on clicking on non-drillable axis label after drilldown.

# 4.1.1 / 2015-02-17

* Updated Highcharts to 4.1.1
  * Fixed #3826, a 4.1 regression causing markers to be clipped after setSize.

# 4.1.0 / 2015-02-16

* Updated Highcharts to 4.1.0
  * Added polygon series type
  * Added e.category event argument in drilldown events to make it clear when a category is clicked. Related to #3771.
  * Added new option to the data module, firstRowAsNames.
  * Added new option, pointIntervalUnit, in order to allow months and years as point intervals. Closes #3329.
  * Added beforePrint and afterPrint events. Related to #2284 and #3729.
  * Added new method, Series.removePoint, to allow removing points that are not instanciated on demand.
  * Added new option, global.getTimezoneOffset, to allow integration with third party timezone libraries like moment-timezone.js.
  * Added new Axis option, tickAmount. Refactored alignTicks on multi-axis charts to first compute a tickAmount, then make all axes comply with that.
  * Added new Axis option, autoRotation as an array of possible values.
  * Added new callback option, tooltip.pointFormatter.
  * Added polar support for arearange. Issue #3419.
  * In solid gauges, added support for initial animation as well as setting animation object for updates. Closes #3135.
  * Made the entire numberFormat method settable and wrappable from the outside.
  * Made tooltip.followTouchMove true by default, and allowed page scroll at the same time.
  * Implemented support for "contrast" color setting in data labels. When the data label is inside a shape (like a column), this will ensure the best readability.
  * On category axes, let the crosshair width cover the whole category like a band.
  * Refactored zIndex handling on SVGElements so that the zIndex can also be modified after the element is first added.
  * Changed the Axis.tickPositioner callback so that the default tick positioning logic runs first, to allow modification in the tick positioner instead of creating positions from scratch. Closes #3538.
  * Made the legend draw below or above the plot area in cases where it is placed in a corner and the layout is horizontal.
  * Implemented algorithm for setting precise tooltip xDateFormat when needed, but general format like year, month, day etc. when the time falls on midnight and the closest point range dictates it. Related to #3329.
  * New default behaviour for the xAxis.minTickInterval option on datetime axis. It now goes to the closest point range by default.
  * Implemented silent degradation instead of error 19 when user options dictate too many ticks on an axis.
  * Removed overflow:justify logic. Instead, move labels and add ellipsis in case of overflow.
  * Export server: Adapted to PhantomJS 2
  * Export server: Implemented XSS filter
  * Fixed #3778, redundant legend paging visible after redraw
  * Fixed error on applying stacking to area range series.
  * Fixed #3743, minor ticks rendered outside plot area
  * Partly fixed #3506, overlapping axis labels on polar chart
  * Fixed #3728, Point.update not updating category name.
  * Fixed waterfall issue where the upColor stayed after updating point to negative. Related to #3710.
  * Fixed #3724, JS error on preventing the selection event and running setExtremes immediately.
  * Don't allow decimals on yearly X axis.
  * Fixed #3197, drilldown with hidden series.
  * Fixed #3719, updating areaspline to area failed
  * Fixed #3703, show no-data message on hidden series also.
  * Fixed #3679, no-data label not realigning after showing hidden container.
  * Fixed #3710, update point did not update sum in waterfalls.
  * Fixed #3712, checkboxClick not handled for pie charts.
  * Fixed #3708, color disappearing on redraw of solid gauge.
  * Fixed #3702, JS error when running setData on a hidden series
  * Fixed #3670, funnel ignored point specific border settings on init.
  * Fixed #3648, data label posision for column incorrect when using custom positioned Y axis in inverted chart.
  * Fixed #3654, millisecond ticks not placed correctly
  * Fixed #3652, minor grid lines sometimes rendering outside the plot area to the right.
  * Fixed #3201, crashes when zooming too far in on a dashed series.
  * Fixed data module issue with blank chart when using forced categories with data longer than turboThreshold.
  * Fixed #3635, markers overlapping in cases where they should not, according to the default behaviour.
  * Fixed #2361, plot bands disappearing under certain conditions when zooming in so that parts are clipped.
  * Fixed #3636, negative colors not applied on hover.
  * Fixed #3623, negative values in pies causing bad drawing after running setData.
  * Fixed #3575, huge columns not rendering on Chrome.
  * Fixed #3608, reversed Y axis in gauges causing arcs to be drawn inside out.
  * Fixed #3600, errors raised in modules when a chart was destroyed in its own callback.
  * Fixed #3346, tooltip failed for two Y axes side by side.
  * Fixed #3579, mixed up levels in multidimensional drilldown.
  * Fixed #3569, reset zoom button disappeared after multiple zoom operations in empty area.
  * Fixed #3390, single heatmap point getting huge size and causing rendering defects. Better axis metrics for single points. Closes #2515.
  * Fixed #3544, drilling up failed when top series data was added dynamically.
  * Fixed #3536, implemented error message on wrong color definitions in heat maps.
  * Fixed #3525, error 12 in master-detail demo.
  * Fixed #3295 and #3514 label box not rendered correctly with 0 values.
  * Fixed #3507, fixed width tooltip with a single word on the last line was clipped horizontally.
  * Fixed #3501, long axis labels taking up too much space instead of wrapping in drilldown charts.
  * Fixed #3500, monthly and yearly X axis ticks having the wrong distribution when using timezoneOffset.
  * Fixed #3449, export menu not working on touch devices when zoomType was set.
  * Fixed #3391, halo not hidden on hiding a pie slice from legend
  * Fixed #2889, tooltip not displayed on line series when followPointer was true. Closes #3258.
  * Fixed #3176, updating gauge axis caused background to disappear.
  * Fixed #2919, errors and wrong behaviours on multi-level drilldown.
  * Fixed #3445, pie charts showing wrong bullet color in tooltip.
  * Fixed #2919, errors on drilldown with multiple axes.
  * Fixed #2912, JS error on drawing hidden waterfall
  * Fixed #3437, data module failing with numeric data in first column
  * Fixed #3436 causing round linecaps on median lines in box plots. Reverted fix for #1638, a workaround for a Firefox bug regarding linecaps. Newer Firefox versions don't have the bug.
  * Fixed #3431, regression causing error 16 not to be triggered.
  * Fixed #3434, error 10 throwed with null values on logarithmic axis.
  * Fixed #3380, a regression causing Series.update not to honour updated zIndex.
  * Fixed #3240, 3d pie labels with 0 values
  * Fixed #3418, wrong default tooltip header date format when passing points every two days, two months etc.
  * Fixed #3416, broken tooltip on colorAxis
  * Fixed #3152, tooltip didn't display on the far left of a zoomed axis with categories.
  * Fixed #3382, line series disappering when a negativeColor was applied and the threshold was way beyond the chart.
  * Fixed #3411, align ticks fails without ticks
  * Fixed #3402, redundant halo on heatmap.
  * Fixed #3404, regression causing canvas heatmap to white out.
  * Fixed #3402, issue with updating bar to pie.
  * Fixed #3389, JS error when drilling up multi-level too quickly.

# 4.0.4.1 / 2014-11-18

* Update the bundled Highmaps module to 1.0.4 (#21)

# 4.0.4 / 2014-09-02

* Updated Highcharts to 4.0.4
  * Added more date parsing logic to the data module. Now integrates with Date.js, and uses Date.parse. Tries to parse all dates, but falls back to categories if dates are not sorted (which may be a sign that parsing went wrong).
  * Added support for setting marker image dimensions. Closes #1807. Closes #1817.
  * Added a better default value for xAxis.allowDecimals. Don't allow decimals in X value ranges that look like years. Closes #3363.
  * Added warning on trying to plot negative points on a logarithmic axis.
  * Allow changing "Date" class used to support other calendars. Added new option global.Date.
  * Allow overriding Highcharts.numberFormat from the outside. Closes #3284.
  * Made point.click event work in combination with drilldown charts.
  * Fixed #3381 3D pies, wrong z index applied to sides
  * Fixed #3279, column z issues in 3d
  * Fixed #3397, footerFormat does not replace variables
  * Speed optimization of Series.setData, related to #3260.
  * Fixed #2909, a regression causing chart click event not to fire when zoom enabled on touch devices.
  * Fixed #3334, missing animations in 3d pies
  * Fixed issue causing markers to show even on dense line series, in spite of new logic in 4.x where it should depend on series density.
  * Fixed #3202, tick marks being drawn in unwanted positions when tickInterval was set on categorized axis.
  * Fixed #424, wrong tooltip position for column series in a pane position
  * Fixed #3352, JavaScript errors on clicking category labels on async drilldown.
  * Fixed #3344, drilldown axis label style inconsistent after redraw.
  * Fixed #3353, wrong axis minimum and maximum on thresholded series when switching from linear to logarithmic axes type.
  * Fixed #3342, memory leaks in jQuery 2.x when repeatedly reinstanciating charts or destroying and recreating renderer primitives.
  * Fixed memory leak on addPoint caused by adding empty names to the Axis.names lookup table.
  * Fixed #3328, 3D Columns and null values
  * Fixes #3317, extra tick added when there are only two ticks (start and end)
  * Fixed #3315 by disallowing duplicate ids in drilldown.
  * Fixed #3182, three level drilldown broken when drilling up and down again on the same series.
  * Fixed #3276 with HTML markup in element titles when a label is shortened by ellipsis.
  * Fixed #3088, tooltip blocking new mouse interaction after hiding when useHTML is true.
  * Fixed #3285, funnel and pyramid center option not working for vertical dimension.
  * Fixed #3300 where data labels would remain semi-transparent when chart updated in the middle of labels fading in.
  * Fixed #3295, labels do not render 0 as value
  * Fixed #3282, plotBorder width changed sign, causing a strange animation
  * Fixed #3245, waterfall series failed when first element was Sum or IntermediateSum

# 4.0.3 / 2014-07-03

* Updated Highcharts to 4.0.3
  * Added 3d options edgeColor and edgeWidth to distinguish from borders that have different defaults.
  * Added option, chart.panKey, to allow panning and zooming on the same chart. The chart can now be configured so the user can pan by holding down the shift key while dragging.
  * Added features zMin and zMax for bubble series, to set the Z value corresponding to minSize and maxSize independently from the data.
  * Changed default top position for loading label to 45%, which results in a vertically centered label.
  * Better handling of data label heights on pie charts, related to #2630.
  * Better handling of dynamic font sizes. Adjust tooltip text-wrapping. Apply dynamic font size (em) on line breaks. Fixed placement of title and axis labels when using ems for font size. Added support for em font-size in legend.itemStyle.
  * Fixed #2251, a regression since 3.0.8 causing text and graphic elements to become selected while zooming in old IE.
  * Fixed #3195 where a short axis with startOnTick and endOnTick set to false would display no ticks at all.
  * Fixed #2694 causing columns to overlap by one pixel in some cases when pointPadding is 0.
  * Fixed #2227, waterfall breaking with more than one intermediate sum.
  * Fixed #3163, pie chart data labels displaying outside plot area.
  * Fixed #1991, a regression causing area stacks with null or missing values to draw incorrectly.
  * Fixed #3158 causing wrong line wraps on text containing markup.
  * Fixed #3151, waterfall columns not displaying a border when the rendered height was 0.
  * Downloadbuilder missing metatags in SVG, added filterset, fixes #3106
  * Fixed #3072 causing unexpected borders after hover on column series when borderWidth was 0.
  * Fixed #3132 causing wrong line breaks in SVG text (pseudo HTML) containing markup.
  * Enabled mouse tracking on data labels for some series types where it had been mistakenly disabled.
  * Fixed #2697, JavaScript error in IE11 on destroying a chart containing useHTML elements after the chart container has first been emptied.
  * Fixed #3126, waterfall graph getting wider on hover. Introduced new options, lineWidthPlus, radiusPlus for hover state of graphs and markers.
  * Fixed #3116, halo failing to animate when a point was updated to a new position. Removed redundant pointer.reset call on Axis.redraw because Chart.redraw also calls the same method.
  * Fixed #3113, roundoff error throwing off calculations of extremes on log axis.
  * Fixed #3104, touch panning not being able to pan outside the data range even if the axis min and max options were outside the range.
  * Fixed #3098, plot area size of a pie chart not being recalculated after the legend size changed.
  * Fixed #3090 causing default 3d options not to be interpreted correctly.
  * Fixed #3094 causing series Z index to change after Series.update.
  * Fixed regression issue #3095, semi-transparent fills coming out as black in exports created by Batik.
  * Fixed #3082, positioning of 3d pie datalabels.
  * Fixed #3080 causing JS error on low chart due to negative height of the legend clip rectangle.
  * Fixed #3051 causing wrong Z indexes for slices in 3d pie charts.
  * Fixed #3075 causing touch panning on a categorized axis to alter range.
  * Fixed #3039, series options was not read for 3D.
  * Fixed #2893 causing heatmap point colors not to update after updating the color axis coloring.
  * Fixed #1080, loading text not reflowing to changed chart size.
  * Fixed #3056 with tooltip chevron not pointing exactly on the right point of the graph when animating between close positions.
  * Fixed #3044 causing JS errors in some cases when axis label formatter returned null or undefined. Closes #3050.
  * Fixed #3053 causing series to be cropped too tight on logarithmic X axis when the number of points exceeded the crop threshold.
  * Fixed #2240 causing the point mouse out event not to fire when the tooltip is shared.
  * Fixed #2997, solidgauge issue with points past ±360° or below yAxis.min.
  * Fixed #3028 causing the last series to become unlinked when calling Series.update on several linked series in succession.
  * Fixed #3027 causing truncation of axis labels when the axis title offset is set and the axis title is shorter than the labels.
  * Fixed #3023 causing defered data labels to show even if series was hidden in the meantime while animating.
  * Fixed #3003 causing rotated data labels to be misaligned after redraw when using Standalone Framework.
  * Fixed #3017 causing centering of data labels on inverted range series not to work.
  * Fixed #3007, with halo showing on invisible points in pies.
  * Fixed #3016 causing halo on sliced pie series to diplay incorrectly.
  * Fixed #3000, labels wrongly aligned on plot lines with multiple axes.
  * Fixed #3014 causing wrong tooltip position in waterfall charts in Highcharts 4.
  * Fixed #3006, prevent null and 0 points from rendering in 3D Pies.
  * Fixed #2982 by returning the added plot line or plot band object after Axis.addPlotLine or Axis.addPlotBand.
  * Fixed #2977, set mimimum view point distance for 3D.
  * Fixed #2975 with clipping not being updated on column series and derived series types after chart resize.
  * Fixed #2968, 3d columns not drawn correctly when equal to max.
  * Fixed #2963 where columns were badly drawn in Chrome due to a rendering bug.
  * Fixed #2962 causing data labels on gauges not to display unless defer is set to true.
  * Fixed #2954 that caused invalid SVG attributes on animating in and out grid lines when running older jQuery versions or the Standalone Framework.

# 4.0.1 / 2014-04-24

* Updated Highcharts to 4.0.1
  * Fixed #2945, a regression causing pie data label formatter to be ignored unless the format option is set to null.
  * Fixed #2941 causing columns to be Z-sorted in the wrong direction.
  * Fixed #2940 causing gradient colors not to apply on strokes in Highcharts 4.
  * Fixed #2939 causing wrong clipping of 3D charts rendered with highstock.js.
  * Fixed #2930 causing JS errors on gauges in Highcharts 4.0.
  * Fixed #2936 causing wrong Z index on 3D column.
  * Fixed #2928 causing the halo to be misplaced on multiple pane positions and inverted line charts.

# 4.0.0 / 2014-04-22

* Updated Highcharts to 4.0.0
  * See [the release announcement](http://www.highcharts.com/component/content/article/2-news/134-announcing-highcharts-4/)

# 3.0.10 / 2014-03-11

* Updated Highcharts to 3.0.10
  * Improved performance by 35% in our benchmark suite.
  * Added new option, plotOptions.gauge.overshoot, that takes a value in degrees for how much the dial should overshoot when the value is off the chart.
  * Added smarter logic to Series.setData, where instead of re-creating all the data points, existing points are updated. This allows animation, performs faster and is less prone to memory issues.
  * Added option, yAxis.reversedStacks, to choose whether to stack from the top down or from the bottom of the stack and up.
  * Added support for drilldown on multi-series column charts. Closes #2604.
  * Added 'pyramid' type of series
  * Added 'reversed' option to funnel series.
  * Fixed #2755 where attributes in pseudo-HTML were applied outside elements.
  * Fixed #2753 which caused errors and broken behaviour on drilldown containing null points.
  * Fixed #2770 where data labels on error bars were not displayed.
  * Fixed #2681 where the Pointer object leaked memory after Chart.destroy.
  * Fixed #2763 where series on log axes would disappear alltogether when the axis became too short.
  * Fixed #2760 where the ignoreHiddenSeries setting had no effect on bubble sizes.
  * Fixed issue with Chart.setTitle not causing the chart to redraw to adapt to changed size of the title. Closes #2719. Closes #2744.
  * Fixed #2738 where legend navigation would add one page too many when the last page had two items.
  * Fixed #2722 where pie slice data label connectors would have the wrong Z index after hiding and showing the slice.
  * Made chart.style option take effect on chart instances, not only globally. Closes #2723.
  * Fixed #2713 where series connected to a dynamically added X axis would fail.
  * Fixed issue with horizontal axis labels being clipped instead of justified into chart area. Closes #2703.
  * Fixed #2700 causing data labels to not render inside columns if the actual value of the column was cropped.
  * Fixed #2693 with drilling up from drilldown caused interference between charts.
  * Added sparkline demo
  * Fixed memory leaks in IE11 due to implementation of touch support. Closes #2691.
  * Export server: Fixed jar location lookup on Windows, closes #2869
  * Fixed issue with disappearing bar chart data labels in certain chart widths. Closes #2683.
  * Fixed issue with showLoading not displaying in IE9. Closes #2686.
  * Fixed issue with Axis.update not removing all associated series. Closes #2687.
  * Fixed failure in updating stacking from percent to normal. Closes #2682.
  * Fixed issue with misalignment of rotated axis labels with useHTML in IE11. Closes #2684.
  * Fixed issue with wrapping horizontal legends not taking the x option into account. Closes #2680.
  * Fixed issue with JS errors on hovering chart when running IE11 in combination with the Standalone Framework. Closes #2672.
  * Fixed issue with wrong rotation of polar charts when X axis was reversed. Closes #2570.
  * Fixed issue with tooltip position and hover point on polar chart where startAngle was < 0. Closes #2665.
  * Fixed issue with empty tooltip boxes visible in tall pages in IE10.
  * Fixed issue with showLoading not working in Standalone Framework. Closes #2653.
  * Fixed issues with pie slices and data labels remaining visible after hiding the pie series itself. Closes #2315. Closes #2656.
  * Fixed issue with automatic line height on labels with em font sizes. Closes #2651.
  * Fixed issue in 3.0.9 where wrong vertical axis labels would be skipped when they were of varying height. Closes #2642.
  * Provided reasonable default column width and group width for column charts with only one X value when minRange was set. Closes #2610.
  * Fixed issue with too many pages in the legend when using legend navigation. Closes #2617.
  * Fixed unexpected effects of zooming outside the data range. Closes #1734.
  * Fixed issue with line graphs not being vertically centered when there was only one value which exceeded the upper limit of 44bit values. Closes #2619.
  * Worked around Firefox 26 drawing issue where legend items would not redraw after resizing the chart. Closes #2580.
  * Fixed issue with mispositioned data label on single pie slice with certain pie sizes, caused by JavaScript rounding error. Closes #2650.
  * Fixed issue with text bounding boxes not being correctly computed when the chart was added to a container with display:none !important. Closes #2631.
  * Fixed issue with gauge pane background color not taking effect on multiple panes, or respecting changes. Closes #2257. Closes #2649.
  * Fixed error in Standalone Framework where calling destroy on an animating element would result in endless error messages. Caused errors when a chart was destroyed while fading out the tooltip. Closes #2616.
  * Fixed pie chart issue with messed up data labels with certain combinations of start and end angle. Closes #2645.
  * Fixed issue with pies ignoring endAngle when it was set to 0.
  * Performance improvement for updating tick labels. Closes #2640.
  * Fixed issue with tooltip header not displaying relevant time resolution when points where added at minute or hour resolution with a day between them. Closes #2637.
  * Fixed issue with wrong bounding box detection of numeric texts when they were of number type instead of strings. Closes #2316.
  * Fixed issue with JS errors and failing to activate charts in pages that are saved to disk from the browser. Closes #2609.
  * Fixed issue with followPointer not working correctly for line charts.
  * Fixed issue with numerical legend items crashing chart when navigation was enabled. Removed unsafe internal use of elemWrapper.bBox, used elemWrapper.getBBox() instead. Closes #2605.
  * Fixed regression with pie slice hover color becoming increasingly brightened after repeated redraws. Closes #1619.
  * Fixed issue with positioning of markers in oldIE in inverted charts. Closes #1111.
  * Fixed oldIE issue with box plots and error bars not showing in inverted charts. Closed #1680. Closed #1806.
  * Fixed missing stack percentage in normal stacks. Closes #2551.
  * Fixed issue in Standalone Framework with getting the right mouse position inside a scrollable div. Closes #2205.
  * Fixed JS error on hovering over a chart after running Chart.setData without redrawing. Closes #2594.
  * Fixed issue with tooltip position if data is NaN.

# 3.0.9 / 2014-01-15

* Updated Highcharts to 3.0.9
  * Added bower.json file. Closes #2244.
  * Fixed JS error on quickly moving the mouse out of a chart. Related to #2499.
  * Fixed issue with text positioning in modern IE when CSS line height was much smaller than font size. Closes #2444. Closes #2568. Closes #2569. Affects #2591.
  * Fixed issue with crosshairs not exactly following the tooltip, mostly visible ou touch devices. Closes #2582
  * Fixed issue with categorized Y axis on gauges being positioned wrong. Closes #2593.
  * Reverted optimization that skipped individual handling of point attributes. Closes #2549. Closes #2587.
  * Fixed issue with adding a point in the middle of a line series failing. Issue #1109.
  * Fixed regression with datetime tooltip header format falling back to full years. Closes #2581.
  * Fixed rounding error in stack labels. Closes #2576.
  * Implemented new option, switchRowsAndColumns, in the data module.
  * Fixed regression in 3.0.8 with hover color of columns having individual color option. Closes #2579.
  * Fixed issue with fillColor on box plots not honored when colorByPoint is true. Closes #2574.

# 3.0.8 / 2014-01-09

* Updated Highcharts to 3.0.8

# 3.0.7 / 2013-10-24

* Updated Highcharts to 3.0.7

# 3.0.6 / 2013-10-04

* Updated Highcharts to 3.0.6

# 3.0.5 / 2013-08-27

* Updated Highcharts to 3.0.5

# 3.0.3 / 2013-08-01

* Updated Highcharts to 3.0.3

# 3.0.2 / 2013-06-07

* Updated Highcharts to 3.0.2
* Removed the Rack endpoint
  (https://github.com/PerfectlyNormal/highcharts-rails/issues/9)

# 3.0.1.5 / 2013-05-08

* Add a Rack endpoint for exporting charts to image files

# 3.0.1 / 2013-04-09

* Updated Highcharts to 3.0.1
* Moved assets from vendor/assets to app/assets, since the entire point of the
  gem is to deliver those assets.

# 3.0.0 / 2013-03-25

* Updated Highcharts to 3.0.0

# 2.3.5 / 2013-01-16

* Updated Highcharts to 2.3.5

# 2.3.3.1 / 2012-12-14

* Relaxed railties dependency to prepare for Rails 4

# 2.3.3 / 2012-10-04

* Updated Highcharts to 2.3.3

# 2.3.2 / 2012-08-31

* Updated Highcharts to 2.3.2

# 2.3.0 / 2012-08-27

* Updated Highcharts to 2.3.0

# 2.2.4 / 2012-05-31

* Updated Highcharts to 2.2.4

# 2.2.3 / 2012-05-07

* Updated Highcharts to 2.2.3

# 2.2.2 / 2012-04-26

* Updated Highcharts to 2.2.2
* Relaxed development dependency on Bundler from ~> 1.0.0 to ~> 1.0

# 2.2.1 / 2012-04-15

* Updated Highcharts to 2.2.1
* Added the skies theme (graphic hardcoded to `/assets/highcharts/skies.jpg`)
