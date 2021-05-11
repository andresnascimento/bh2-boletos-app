import 'package:flutter/material.dart';
import 'package:bh2_boletos/models/expenses.dart';
import 'package:provider/provider.dart';

//TODO update this widget to recieve data from an api
//TODO add functionality to the list (change status and view details)

class ExpensesListViewByDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final expensesData = Provider.of<Expenses>(context);
    final expensesList = expensesData.expenseList;
    print(expensesList[1].name);
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        // return ListTile(
        //   leading: Text(expensesList[index].name),
        // );
        return Row(
          children: [
            CircleAvatar(
                backgroundImage: NetworkImage(expensesList[index].imageUrl)),
            Column(
              children: [
                Text(expensesList[index].name),
                Text(expensesList[index].expenseType)
              ],
            ),
            Column(
              children: [
                Text(expensesList[index].expenseValue.toString()),
                Text(expensesList[index].status)
              ],
            ),
          ],
        );
      },
      itemCount: expensesList.length,
    );
  }
}
