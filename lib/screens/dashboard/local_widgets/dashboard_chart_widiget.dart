import 'package:bh2_boletos/controller/monthly_transactions_notifier.dart';
import 'package:bh2_boletos/models/dashboard_content.dart';
import 'package:bh2_boletos/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_core/core.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class DashboardChart extends StatefulWidget {
  @override
  _DashboardChartState createState() => _DashboardChartState();
}

class _DashboardChartState extends State<DashboardChart> {
  @override
  Widget build(BuildContext context) {
    MonthlyTransactionsNotifier monthlyNotifier =
        Provider.of<MonthlyTransactionsNotifier>(context);
    return Container(
      height: 250,
      child: SfTheme(
        data: SfThemeData(
          chartThemeData: SfChartThemeData(
            axisLineColor: kColorBlack,
            majorGridLineColor: kColorBlack,
            majorTickLineColor: kColorBlack,
            plotAreaBorderColor: kColorBlack,
            brightness: Brightness.dark,
          ),
        ),
        child: SfCartesianChart(
          primaryXAxis: CategoryAxis(
            // Axis will be rendered based on the index values
            arrangeByIndex: true,
          ),
          primaryYAxis: NumericAxis(
            isVisible: false,
            numberFormat: NumberFormat.compactCurrency(symbol: 'R\$'),
          ),
          series: <ChartSeries>[
            ColumnSeries<DashboardContent, String>(
              // selectionBehavior: _selectionBehavior,
              selectionBehavior: SelectionBehavior(
                enable: true,
                selectionController: RangeController(
                  start: monthlyNotifier.activeIdex,
                  end: monthlyNotifier.activeIdex,
                ),
              ),

              // initialSelectedDataIndexes: <int>[widget.monthIndex],
              enableTooltip: false,
              dataSource: monthlyNotifier.monthlyData,
              xValueMapper: (DashboardContent month, _) =>
                  month.month.substring(0, 3),

              yValueMapper: (DashboardContent amount, _) => amount.amount,
              width: 0.2,
              color: kColorPrimary,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(2.0),
                topRight: Radius.circular(2.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
