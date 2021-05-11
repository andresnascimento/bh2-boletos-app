import 'package:bh2_boletos/controller/monthly_transactions_notifier.dart';
import 'package:bh2_boletos/models/expenses.dart';
import 'package:bh2_boletos/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class HorizontalTabList extends StatefulWidget {
  @override
  _HorizontalTabListState createState() => _HorizontalTabListState();
}

class _HorizontalTabListState extends State<HorizontalTabList> {
  AutoScrollController _controller;
  final scrollDirection = Axis.horizontal;
  int activedTabIndex = DateTime.now().month - 1;

  Future _scrollToIndex(int activeTab) async {
    await _controller.scrollToIndex(activeTab,
        preferPosition: AutoScrollPosition.begin);
  }

  @override
  void initState() {
    _controller = AutoScrollController(
      viewportBoundaryGetter: () =>
          Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: scrollDirection,
    );
    _scrollToIndex(activedTabIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // MonthlyTransactionsNotifier monthlyNotifier =
    //     Provider.of<MonthlyTransactionsNotifier>(context);
    final expensesData = Provider.of<Expenses>(context);
    final monthlyData = expensesData.expensesAmount;
    return SizedBox(
      height: 70.0,
      child: ListView.builder(
        controller: _controller,
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: monthlyData.length,
        itemBuilder: (BuildContext context, int index) {
          return AutoScrollTag(
            key: ValueKey(index),
            controller: _controller,
            index: index,
            child: Container(
              // margin: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              // decoration: BoxDecoration(
              //     color: kColorBlack,
              //     border: Border(
              //       bottom: BorderSide(
              //           color: index == monthlyData
              //               ? kColorPrimary
              //               : kColorBlack),
              //     )),
              child: GestureDetector(
                onTap: () {
                  // monthlyNotifier.setActivedTabIndex(index);
                },
                child: Center(
                  child: Text(
                    DateFormat.MMMM()
                        .format(DateTime.parse(monthlyData[index].month)),
                    style: kTextBodySM.copyWith(
                        color: kColorPrimary, fontWeight: FontWeight.bold),
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
