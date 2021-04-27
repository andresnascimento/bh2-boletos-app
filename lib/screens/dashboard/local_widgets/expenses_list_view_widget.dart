import 'package:bh2_boletos/utilities/constants.dart';
import 'package:bh2_boletos/widgets/currency_formater_widget.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

//TODO update this widget to recieve data from an api
//TODO add functionality to the list (change status and view details)

class ExpensesListViewByDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16.0),
          topLeft: Radius.circular(16.0),
        ),
      ),
      child: GroupedListView<dynamic, String>(
        shrinkWrap: true,
        floatingHeader: true,
        elements: dataDummy,
        groupBy: (element) => element['date'],
        groupSeparatorBuilder: (String groupByValue) {
          return Row(
            children: [
              Text(
                groupByValue,
                textAlign: TextAlign.left,
              ),
            ],
          );
        },
        itemBuilder: (context, dynamic element) {
          return Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 8),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        color: kColorGray50,
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: Icon(
                        Icons.store_outlined,
                        color: kColorGray300,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            element['provider'],
                            style: kTextBody,
                          ),
                          Text(
                            element['type'],
                            style: kTextBodySM.copyWith(color: kColorGray300),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        CurrencyFormatedValue(
                          currencyAmount: element['value'],
                          textStyle: kTextBody.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // Text(element['value'].toString()),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          margin: EdgeInsets.only(top: 8),
                          decoration: BoxDecoration(
                            color: kColorGray50,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            element['status'],
                            style: TextStyle(color: kColorGray400),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 16),
                Divider(
                  indent: 40,
                )
              ],
            ),
          );
        },
        itemComparator: (item1, item2) =>
            item1['value'].compareTo(item2['value']), // optional
        // useStickyGroupSeparators: true, // optional
        order: GroupedListOrder.ASC, // optional
      ),
    );
  }
}

List dataDummy = [
  {
    'date': '04/01/2021',
    'provider': 'Casa campos',
    'type': 'Boleto',
    'status': 'previsto',
    'value': 310.0,
  },
  {
    'date': '04/01/2021',
    'provider': 'Casa campos',
    'type': 'Boleto',
    'status': 'previsto',
    'value': 310.0,
  },
  {
    'date': '05/01/2021',
    'provider': 'Casa campos',
    'type': 'Boleto',
    'status': 'previsto',
    'value': 310.0,
  },
  {
    'date': '05/01/2021',
    'provider': 'Casa campos',
    'type': 'Boleto',
    'status': 'previsto',
    'value': 310.0,
  },
];
