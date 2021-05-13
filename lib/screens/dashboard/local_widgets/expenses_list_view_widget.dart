import 'package:bh2_boletos/models/expense.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'package:bh2_boletos/models/expenses.dart';
import '../../../models/expenses.dart';
import 'expense_detais.dart';

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
            InkWell(
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (_) {
                    return ExpenseDetais(
                      imageUrl: expensesList[index].imageUrl,
                      expenseDate: expensesList[index].expenseDate,
                      status: expensesList[index].status,
                      name: expensesList[index].name,
                      expenseValue: expensesList[index].expenseValue,
                      expensePayment: expensesList[index].expensePayment,
                      expenseFee: expensesList[index].expenseFee,
                      expenseCode: expensesList[index].expenseCode,
                      expenseType: expensesList[index].expenseType,
                    );
                  },
                );
              },
              child: Row(
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
            ),
            Divider()
          ],
        );
      },
      itemCount: expensesList.length,
    );
  }
}
