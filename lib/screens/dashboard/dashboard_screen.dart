import 'package:bh2_boletos/controller/monthly_transactions_notifier.dart';
import 'package:bh2_boletos/models/expenses.dart';
import 'package:bh2_boletos/utilities/constants.dart';
import 'package:bh2_boletos/screens/dashboard/local_widgets/horizontal_tab_list_widget.dart';
import 'package:bh2_boletos/widgets/currency_formater_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'local_widgets/amount_monthly_expenses_widget.dart';
import 'package:grouped_list/grouped_list.dart';
import 'local_widgets/dashboard_chart_widiget.dart';
import 'local_widgets/expenses_list_view_widget.dart';

class DashboardPage extends StatefulWidget {
  static String id = 'dashboard_screen';

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String userName = 'André Nascimento';

  @override
  Widget build(BuildContext context) {
    // MonthlyTransactionsNotifier monthlyNotifier =
    //     Provider.of<MonthlyTransactionsNotifier>(context);
    return Container(
      child: Scaffold(
        backgroundColor: kColorBlack,
        // resizeToAvoidBottomInset: true,
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
        body: SingleChildScrollView(
          child: Column(
            // TODO change the page to be scrollable instead of only the list of expenses
            children: <Widget>[
              //TODO  define a solution to hilight the bar when select the month
              HorizontalTabList(),
              AmountMonthlyExpenses(),
              DashboardChart(),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16.0),
                      topLeft: Radius.circular(16.0)),
                ),
                child: ExpensesListViewByDate(),
              ),
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add, color: kColorBlack),
          backgroundColor: kColorPrimary,
        ),
      ),
    );
  }
}
