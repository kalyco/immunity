$(function() {
  $('#system_chart').highcharts({
      chart: {
          type: 'line'
      },
    title: {
      text: "system status"
    },
    xAxis: {
      type: "turn",
    },
    yAxis: {
      title: {
        text: "abilities"
      }
    },
    series: [{
      name: "differentiation",
      data: [1,2,3]
    }]
  });
});
