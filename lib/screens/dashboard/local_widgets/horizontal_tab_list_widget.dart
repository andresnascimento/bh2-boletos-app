import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:bh2_boletos/models/expenses.dart';
import 'package:bh2_boletos/utilities/constants.dart';

class HorizontalTabList extends StatelessWidget {
  String _formatedMonth(var month) {
    return DateFormat.MMMM().format(DateTime.parse(month));
  }

  @override
  Widget build(BuildContext context) {
    final expensesData = Provider.of<Expenses>(context);
    final monthlyData = expensesData.expensesAmount;
    var _activeTab = expensesData.activeMonth;
    return SizedBox(
      height: 70.0,
      child: ScrollablePositionedList.builder(
        physics: ClampingScrollPhysics(),
        initialScrollIndex: DateTime.now().month,
        scrollDirection: Axis.horizontal,
        itemCount: monthlyData.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            decoration: BoxDecoration(
                color: kColorBlack,
                border: Border(
                  bottom: BorderSide(
                      color:
                          _activeTab == _formatedMonth(monthlyData[index].month)
                              ? kColorPrimary
                              : kColorBlack),
                )),
            child: GestureDetector(
              onTap: () {
                expensesData.setActiveMonth(monthlyData[index].month);
              },
              child: Center(
                child: Text(
                  _formatedMonth(monthlyData[index].month),
                  style: kTextBodySM.copyWith(
                    color:
                        _activeTab == _formatedMonth(monthlyData[index].month)
                            ? kColorPrimary
                            : kColorGray300,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
