import 'package:bh2_boletos/models/expenses.dart';
import 'package:bh2_boletos/models/monthly_expenses_amount.dart';
import 'package:bh2_boletos/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class DashboardChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final expensesData = Provider.of<Expenses>(context);
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
          ),
          series: <ChartSeries>[
            ColumnSeries<MonthlyExpensesAmount, String>(
              enableTooltip: false,
              dataSource: expensesData.expensesAmount,
              xValueMapper: (MonthlyExpensesAmount monthList, _) =>
                  DateFormat.MMMM()
                      .format(DateTime.parse(monthList.month))
                      .substring(0, 3),
              yValueMapper: (MonthlyExpensesAmount amount, _) => amount.amount,
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
