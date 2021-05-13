import 'package:flutter/material.dart';

class ExpenseDetais extends StatelessWidget {
  final String imageUrl;
  final DateTime expenseDate;
  final String status;
  final String name;
  final double expenseValue;
  final double expensePayment;
  final double expenseFee;
  final String expenseType;
  final int expenseCode;

  ExpenseDetais({
    this.imageUrl,
    this.expenseDate,
    this.status,
    this.name,
    this.expenseValue,
    this.expensePayment,
    this.expenseFee,
    this.expenseCode,
    this.expenseType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
              Column(
                children: <Widget>[
                  Text(
                    expenseDate.toString(),
                  ),
                  Text(status)
                ],
              )
            ],
          ),
          Text(name),
          Text(expenseType),
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text('Valor'),
                  Text(expenseValue.toString())
                ],
              ),
              Column(
                children: <Widget>[
                  Text('Pago'),
                  Text(expensePayment.toString())
                ],
              ),
              Column(
                children: <Widget>[Text('Juros'), Text(expenseFee.toString())],
              ),
            ],
          ),
          Divider(),
          InkWell(
            child: Row(
              children: <Widget>[
                Text(expenseCode.toString()),
                Icon(Icons.copy_outlined)
              ],
            ),
          ),
          Divider(),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.check),
            label: Text('DAR BAIXA'),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.description_outlined),
            label: Text('VISUALIZAR'),
          ),
          TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.share),
              label: Text('COMPARTILHAR')),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: new Text('Close'),
          ),
        ],
      ),
    );
  }
}
