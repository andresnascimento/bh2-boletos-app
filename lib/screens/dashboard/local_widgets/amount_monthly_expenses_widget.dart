import 'package:bh2_boletos/utilities/constants.dart';
import 'package:bh2_boletos/widgets/currency_formater_widget.dart';
import 'package:flutter/material.dart';

class AmountMonthlyExpenses extends StatefulWidget {
  final double currencyAmount;
  const AmountMonthlyExpenses({
    @required this.currencyAmount,
  });

  @override
  _AmountMonthlyExpensesState createState() => _AmountMonthlyExpensesState();
}

class _AmountMonthlyExpensesState extends State<AmountMonthlyExpenses> {
  bool isAmountVisible = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            'Total de despesas neste mês',
            style: kTextBodySM.copyWith(color: kColorGray200),
          ),
          Row(
            children: <Widget>[
              isAmountVisible
                  ? CurrencyFormatedValue(
                      currencyAmount: widget.currencyAmount,
                      textStyle: kTextHeader.copyWith(color: Colors.white),
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
