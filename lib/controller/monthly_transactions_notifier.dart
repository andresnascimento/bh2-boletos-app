import 'package:bh2_boletos/models/dashboard_content.dart';
import 'package:flutter/material.dart';

class MonthlyTransactionsNotifier extends ChangeNotifier {
  int _activeIndex = DateTime.now().month - 1;

  List<DashboardContent> monthlyData = [
    DashboardContent(
      month: 'JANEIRO',
      amount: 234024.32,
      monthExpenses: [
        MonthlyExpenses(
          date: '04/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '04/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '04/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '08/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '08/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
      ],
    ),
    DashboardContent(
      month: 'FEVEREIRO',
      amount: 87900,
      monthExpenses: [
        MonthlyExpenses(
          date: '04/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '04/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '04/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '08/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '08/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
      ],
    ),
    DashboardContent(
      month: 'MARÇO',
      amount: 347890,
      monthExpenses: [
        MonthlyExpenses(
          date: '04/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '04/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '04/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '08/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '08/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
      ],
    ),
    DashboardContent(
      month: 'ABRIL',
      amount: 7980.19,
      monthExpenses: [
        MonthlyExpenses(
          date: '04/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '04/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '04/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '08/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '08/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
      ],
    ),
    DashboardContent(
      month: 'MAIO',
      amount: 679.04,
      monthExpenses: [
        MonthlyExpenses(
          date: '04/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '04/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '04/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '08/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '08/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
      ],
    ),
    DashboardContent(
      month: 'JUNHO',
      amount: 057.12,
      monthExpenses: [
        MonthlyExpenses(
          date: '04/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '04/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '04/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '08/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '08/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
      ],
    ),
    DashboardContent(
      month: 'JULHO',
      amount: 6760.43,
      monthExpenses: [
        MonthlyExpenses(
          date: '04/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '04/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '04/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '08/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
        MonthlyExpenses(
          date: '08/01/2021',
          provider: 'Casa campos',
          type: 'Boleto',
          status: 'previsto',
          value: 310.0,
        ),
      ],
    ),
  ];

  int get activeIdex => _activeIndex;
  int get monthlyDataLength => monthlyData.length;

  void setActivedTabIndex(selectedIndex) {
    _activeIndex = selectedIndex;
    notifyListeners();
  }
}
