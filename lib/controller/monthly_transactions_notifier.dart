import 'package:bh2_boletos/models/dashboard_content.dart';
import 'package:flutter/material.dart';

class MonthlyTransactionsNotifier extends ChangeNotifier {
  int _activeIndex = DateTime.now().month - 1;

  List<DashboardContent> monthlyData = [
    DashboardContent(month: 'JANEIRO', amount: 234024.32),
    DashboardContent(month: 'FEVEREIRO', amount: 87900),
    DashboardContent(month: 'MARÇO', amount: 347890),
    DashboardContent(month: 'ABRIL', amount: 7980.19),
    DashboardContent(month: 'MAIO', amount: 679.04),
    DashboardContent(month: 'JUNHO', amount: 057.12),
    DashboardContent(month: 'JULHO', amount: 6760.43),
  ];

  int get activeIdex => _activeIndex;
  int get monthlyDataLength => monthlyData.length;

  void setActivedTabIndex(selectedIndex) {
    _activeIndex = selectedIndex;
    notifyListeners();
  }
}
