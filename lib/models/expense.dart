import 'package:flutter/material.dart';

class Expense with ChangeNotifier {
  final String imageUrl;
  final DateTime expenseDate;
  final String status;
  final String name;
  final double expenseValue;
  final double expensePayment;
  final double expenseFee;
  final String expenseType;
  final int expenseCode;
  final String id;

  Expense({
    this.imageUrl,
    this.expenseDate,
    this.status,
    this.name,
    this.expenseValue,
    this.expensePayment,
    this.expenseFee,
    this.expenseCode,
    this.expenseType,
    this.id,
  });
}
