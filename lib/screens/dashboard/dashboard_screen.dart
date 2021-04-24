import 'package:bh2_boletos/controller/monthly_transactions_notifier.dart';
import 'package:bh2_boletos/models/dashboard_content.dart';
import 'package:bh2_boletos/utilities/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:money2/money2.dart';
import 'package:provider/provider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

// class DashboardPage extends StatefulWidget {
//   static String id = 'dashboard_screen';

//   @override
//   _DashboardPageState createState() => _DashboardPageState();
// }

// class _DashboardPageState extends State<DashboardPage> {
//   List<String> data = [
//     'JANHEIRO',
//     'FEVEREIRO',
//     'MARÇO',
//     'ABRIL',
//     'MAIO',
//     'JUNHO',
//     'JULHO'
//   ];
//   int initPosition = 4;
//   String userName = 'André Nascimento';
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Scaffold(
//         backgroundColor: kColorBlack,
//         appBar: AppBar(
//           automaticallyImplyLeading: false,
//           centerTitle: false,
//           elevation: 0,
//           title: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Row(
//                 children: <Widget>[
//                   CircleAvatar(
//                     backgroundColor: kColorGray400,
//                     child: Text(
//                       '${userName[0]}${userName[1]}',
//                       style: kTextBody.copyWith(color: kColorPrimary),
//                     ),
//                   ),
//                   SizedBox(width: 16),
//                   Text(userName),
//                 ],
//               ),
//               Container(
//                 height: 40,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: kColorGray400,
//                 ),
//                 child: IconButton(
//                     alignment: Alignment.center,
//                     icon: Icon(Icons.notifications_outlined),
//                     onPressed: () {}),
//               )
//             ],
//           ),
//         ),
//         body: CustomTabView(
//           initPosition: initPosition,
//           itemCount: data.length,
//           tabBuilder: (context, index) => Tab(text: data[index]),
//           tabContentBuilder: (context, index) => Center(
//             child: Column(
//               children: <Widget>[
//                 Text(
//                   data[index],
//                   style: kHeaderLG.copyWith(color: Colors.white),
//                 ),
//               ],
//             ),
//           ),
//           onPositionChange: (index) {
//             print('current position: $index');
//             initPosition = index;
//           },
//           onScroll: (position) => print('$position'),
//         ),
//       ),
//     );
//   }
// }

// class CustomTabView extends StatefulWidget {
//   final int itemCount;
//   final IndexedWidgetBuilder tabBuilder;
//   final IndexedWidgetBuilder tabContentBuilder;
//   final Widget stub;
//   final ValueChanged<int> onPositionChange;
//   final ValueChanged<double> onScroll;
//   final int initPosition;

//   CustomTabView({
//     @required this.itemCount,
//     @required this.tabBuilder,
//     @required this.tabContentBuilder,
//     this.stub,
//     this.onPositionChange,
//     this.onScroll,
//     this.initPosition,
//   });

//   @override
//   _CustomTabsState createState() => _CustomTabsState();
// }

// class _CustomTabsState extends State<CustomTabView>
//     with TickerProviderStateMixin {
//   TabController controller;
//   int _currentCount;
//   int _currentPosition;

//   @override
//   void initState() {
//     _currentPosition = widget.initPosition ?? 0;
//     controller = TabController(
//       length: widget.itemCount,
//       vsync: this,
//       initialIndex: _currentPosition,
//     );
//     controller.addListener(onPositionChange);
//     controller.animation.addListener(onScroll);
//     _currentCount = widget.itemCount;
//     super.initState();
//   }

//   @override
//   void didUpdateWidget(CustomTabView oldWidget) {
//     if (_currentCount != widget.itemCount) {
//       controller.animation.removeListener(onScroll);
//       controller.removeListener(onPositionChange);
//       controller.dispose();

//       if (widget.initPosition != null) {
//         _currentPosition = widget.initPosition;
//       }

//       if (_currentPosition > widget.itemCount - 1) {
//         _currentPosition = widget.itemCount - 1;
//         _currentPosition = _currentPosition < 0 ? 0 : _currentPosition;
//         if (widget.onPositionChange is ValueChanged<int>) {
//           WidgetsBinding.instance.addPostFrameCallback((_) {
//             if (mounted) {
//               widget.onPositionChange(_currentPosition);
//             }
//           });
//         }
//       }

//       _currentCount = widget.itemCount;
//       setState(() {
//         controller = TabController(
//           length: widget.itemCount,
//           vsync: this,
//           initialIndex: _currentPosition,
//         );
//         controller.addListener(onPositionChange);
//         controller.animation.addListener(onScroll);
//       });
//     } else if (widget.initPosition != null) {
//       controller.animateTo(widget.initPosition);
//     }

//     super.didUpdateWidget(oldWidget);
//   }

//   @override
//   void dispose() {
//     controller.animation.removeListener(onScroll);
//     controller.removeListener(onPositionChange);
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (widget.itemCount < 1) return widget.stub ?? Container();

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: <Widget>[
//         Container(
//           alignment: Alignment.center,
//           child: TabBar(
//             isScrollable: true,
//             controller: controller,
//             labelColor: kColorPrimary,
//             unselectedLabelColor: kColorGray400,
//             indicator: BoxDecoration(
//               border: Border(
//                 bottom: BorderSide(
//                   color: kColorPrimary,
//                   width: 2,
//                 ),
//               ),
//             ),
//             tabs: List.generate(
//               widget.itemCount,
//               (index) => widget.tabBuilder(context, index),
//             ),
//           ),
//         ),
//         Expanded(
//           child: TabBarView(
//             controller: controller,
//             children: List.generate(
//               widget.itemCount,
//               (index) {
//                 return widget.tabContentBuilder(context, index);
//                 // return Text(
//                 //   'data',
//                 //   style: kHeaderLG.copyWith(color: Colors.white),
//                 // );
//               },
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   onPositionChange() {
//     if (!controller.indexIsChanging) {
//       _currentPosition = controller.index;
//       if (widget.onPositionChange is ValueChanged<int>) {
//         widget.onPositionChange(_currentPosition);
//       }
//     }
//   }

//   onScroll() {
//     if (widget.onScroll is ValueChanged<double>) {
//       widget.onScroll(controller.animation.value);
//     }
//   }
// }

class DashboardPage extends StatefulWidget {
  static String id = 'dashboard_screen';

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String userName = 'André Nascimento';
  final teste =
      NumberFormat.currency(locale: 'pt-br', decimalDigits: 0, symbol: 'R\$')
          .format(10000);

  @override
  Widget build(BuildContext context) {
    MonthlyTransactionsNotifier monthlyNotifier =
        Provider.of<MonthlyTransactionsNotifier>(context);
    return Container(
      child: Scaffold(
        backgroundColor: kColorBlack,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: kColorGray400,
                    child: Text(
                      '${userName[0]}${userName[1]}',
                      style: kTextBody.copyWith(color: kColorPrimary),
                    ),
                  ),
                  SizedBox(width: 16),
                  Text(userName),
                ],
              ),
              Container(
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kColorGray400,
                ),
                child: IconButton(
                    alignment: Alignment.center,
                    icon: Icon(Icons.notifications_outlined),
                    onPressed: () {}),
              )
            ],
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            HorizontalTabList(),
            Container(
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
                      Text(
                        NumberFormat.currency(
                                locale: 'pt-br',
                                decimalDigits: 2,
                                symbol: 'R\$')
                            .format(monthlyNotifier
                                .monthlyData[monthlyNotifier.activeIdex]
                                .amount),
                        style: kTextHeader.copyWith(color: Colors.white),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.remove_red_eye_outlined,
                            color: kColorGray200,
                            size: 24,
                          ),
                          onPressed: () {})
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

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
    MonthlyTransactionsNotifier monthlyNotifier =
        Provider.of<MonthlyTransactionsNotifier>(context);
    return SizedBox(
      height: 80.0,
      child: ListView.builder(
        controller: _controller,
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: monthlyNotifier.monthlyDataLength,
        itemBuilder: (BuildContext context, int index) {
          return AutoScrollTag(
            key: ValueKey(index),
            controller: _controller,
            index: index,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                    color: index == monthlyNotifier.activeIdex
                        ? kColorPrimary
                        : kColorBlack),
              )),
              child: GestureDetector(
                onTap: () {
                  monthlyNotifier.setActivedTabIndex(index);
                },
                child: Center(
                  child: Text(
                    '${monthlyNotifier.monthlyData[index].month}',
                    style: kTextBodySM.copyWith(
                        color: index == monthlyNotifier.activeIdex
                            ? kColorPrimary
                            : kColorGray300,
                        fontWeight: FontWeight.bold),
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

//https://stackoverflow.com/questions/54512171/horizontal-listview-inside-a-vertical-scrollview-in-flutter

// var NumberFormat(

//     [String? newPattern,
//     String? locale]

// ) ;
