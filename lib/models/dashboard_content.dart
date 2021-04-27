class DashboardContent {
  String month;
  double amount;
  List<MonthlyExpenses> monthExpenses;

  DashboardContent({this.month, this.amount, this.monthExpenses});
}

class MonthlyExpenses {
  String date;
  String provider;
  String type;
  String status;
  double value;

  MonthlyExpenses({
    this.date,
    this.provider,
    this.type,
    this.status,
    this.value,
  });
}
