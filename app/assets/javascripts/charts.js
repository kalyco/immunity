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

$(function () {
  $('#pie1').highcharts({
    chart: {
      plotBackgroundColor: null,
      plotBorderWidth: null,
      plotShadow: false
    },
    title: {
      text: 'cell volatility'
    },
    tooltip: {
      pointFormat: '{series.name}: <b>{point.percentage:.1f} %</b>'
    },
    plotOptions: {
      pie: {
        allowPointSelect: true,
        cursor: 'pointer' ,
        dataLabels: {
          enabled: true,
          format: '<b>{point.name}</b>: {point.percentage:.1f} %',
          style: {
            color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
          }
        }
      }
    },
    series: [{
      type: 'pie',
      name: 'volatile',
      data: [
        ['true', <%= Cell.where(volatile: true, system: @system).count %>],
        ['false', <%= Cell.where(volatile: false, system: @system].count %>]
      ]
    }]
  });
});

