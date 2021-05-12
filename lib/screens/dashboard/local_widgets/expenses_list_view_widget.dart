import 'package:flutter/material.dart';
import 'package:bh2_boletos/models/expenses.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

//TODO update this widget to recieve data from an api
//TODO add functionality to the list (change status and view details)

class ExpensesListViewByDate extends StatelessWidget {
  final formatCurrency = NumberFormat("#,##0.00", "pt_BR");

  @override
  Widget build(BuildContext context) {
    final expensesData = Provider.of<Expenses>(context);
    final expensesList = expensesData.expenseList;
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(expensesList[index].imageUrl),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(expensesList[index].name),
                        Text(expensesList[index].expenseType)
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                          'R\$ ${formatCurrency.format(expensesList[index].expenseValue).toString()}'),
                      Text(expensesList[index].status)
                    ],
                  ),
                ),
              ],
            ),
            Divider()
          ],
        );
      },
      itemCount: expensesList.length,
    );
  }
}
