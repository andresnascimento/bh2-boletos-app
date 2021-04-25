import 'dart:ffi';

import 'package:bh2_boletos/controller/monthly_transactions_notifier.dart';
import 'package:bh2_boletos/models/dashboard_content.dart';
import 'package:bh2_boletos/utilities/constants.dart';
import 'package:bh2_boletos/screens/dashboard/local_widgets/horizontal_tab_list_widget.dart';
import 'package:bh2_boletos/widgets/currency_formater_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_core/core.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'local_widgets/amount_monthly_expenses_widget.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class DashboardPage extends StatefulWidget {
  static String id = 'dashboard_screen';

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String userName = 'André Nascimento';

  @override
  Widget build(BuildContext context) {
    MonthlyTransactionsNotifier monthlyNotifier =
        Provider.of<MonthlyTransactionsNotifier>(context);
    return Container(
      child: Scaffold(
        backgroundColor: kColorBlack,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: kColorGray400,
                    child: Text(
                      '${userName[0]}${userName[1]}',
                      style: kTextBody.copyWith(color: kColorPrimary),
                    ),
                  ),
                  SizedBox(width: 16),
                  Text(userName),
                ],
              ),
              Container(
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kColorGray400,
                ),
                child: IconButton(
                    alignment: Alignment.center,
                    icon: Icon(Icons.notifications_outlined),
                    onPressed: () {}),
              )
            ],
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            HorizontalTabList(),
            AmountMonthlyExpenses(
              currencyAmount: monthlyNotifier
                  .monthlyData[monthlyNotifier.activeIdex].amount,
            ),
            //TODO change to call this widget whenever the tab changes
            DashboardChart()
          ],
        ),
      ),
    );
  }
}

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
              initialSelectedDataIndexes: <int>[monthlyNotifier.activeIdex],
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
