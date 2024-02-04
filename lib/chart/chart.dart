import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import '../utils/dependencies.dart';

class SaleChart extends StatefulWidget {
  SaleChart({Key? key}) : super(key: key);

  @override
  SaleChartState createState() => SaleChartState();
}

class SaleChartState extends State<SaleChart> {
  List<_SalesData> data = [
    _SalesData('Jul', 35),
    _SalesData('Aug', 28),
    _SalesData('Sep', 34),
    _SalesData('Oct', 32),
    _SalesData('Nov', 40),
    _SalesData('Dec', 15),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //Initialize the chart widget
      SfCartesianChart(
          primaryXAxis: const CategoryAxis(),
          // Chart title
        //title: const ChartTitle(text: 'Half yearly sales analysis'),
          // Enable legend
          legend: const Legend(isVisible: true),
          // Enable tooltip
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <CartesianSeries<_SalesData, String>>[
            LineSeries<_SalesData, String>(
                dataSource: data,
                xValueMapper: (_SalesData sales, _) => sales.year,
                yValueMapper: (_SalesData sales, _) => sales.sales,
                name: 'Sales',
                // Enable data label
                dataLabelSettings: const DataLabelSettings(isVisible: true))
          ],
      ),
    ]
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
