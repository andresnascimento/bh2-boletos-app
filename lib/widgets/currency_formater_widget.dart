import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CurrencyFormatedValue extends StatelessWidget {
  final double currencyAmount;
  final TextStyle textStyle;
  const CurrencyFormatedValue({@required this.currencyAmount, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Text(
      NumberFormat.currency(locale: 'pt-br', decimalDigits: 2, symbol: 'R\$')
          .format(currencyAmount),
      style: textStyle,
    );
  }
}
