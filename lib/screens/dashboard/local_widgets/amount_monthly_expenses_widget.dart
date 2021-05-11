import 'package:bh2_boletos/models/expenses.dart';
import 'package:bh2_boletos/utilities/constants.dart';
import 'package:bh2_boletos/widgets/currency_formater_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class AmountMonthlyExpenses extends StatefulWidget {
  @override
  _AmountMonthlyExpensesState createState() => _AmountMonthlyExpensesState();
}

class _AmountMonthlyExpensesState extends State<AmountMonthlyExpenses> {
  bool isAmountVisible = true;

  @override
  Widget build(BuildContext context) {
    final expensesData = Provider.of<Expenses>(context);
    final monthlyAmount = expensesData.expensesAmount;
    return Container(
      color: kColorBlack,
      height: 120,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Total de despesas neste mês',
            style: kTextBodySM.copyWith(color: kColorGray200),
          ),
          Row(
            children: <Widget>[
              isAmountVisible
                  ? Text(
                      monthlyAmount[5].amount.toString(),
                      style: kTextHeader.copyWith(color: Colors.white),
                    )
                  : Container(
                      width: 150,
                      height: 20,
                      color: kColorGray400,
                    ),
              SizedBox(
                width: 30,
              ),
              IconButton(
                icon: Icon(
                  isAmountVisible
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: kColorGray200,
                  size: 24,
                ),
                onPressed: () {
                  print(DateFormat.MMMM().format(DateTime.parse('2020-01-02')));

                  setState(() {
                    isAmountVisible = !isAmountVisible;
                  });
                },
              )
            ],
          ),
          isAmountVisible
              //TODO transform into a dynamic value
              ? Text(
                  'R\$ 2.800 Total Pago',
                  style: kTextBodySM.copyWith(color: kColorPrimary),
                )
              : Row(
                  children: [
                    Container(
                      width: 80,
                      height: 10,
                      color: kColorGray400,
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
