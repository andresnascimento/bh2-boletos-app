import 'package:bh2_boletos/models/monthly_expenses_amount.dart';
import 'package:flutter/material.dart';
import './expense.dart';
import 'monthly_expenses_amount.dart';

class Expenses with ChangeNotifier {
  List<Expense> _expenseList = [
    Expense(
      imageUrl: 'https://cvtr.rj.gov.br/wp-content/uploads/2019/08/Foto-1.jpeg',
      expenseDate: DateTime.now(),
      status: 'paid',
      name: 'Casa Campos',
      expenseValue: 300.20,
      expensePayment: 300.20,
      expenseFee: 0.0,
      expenseCode: 1349134971394557193,
      expenseType: 'Boleto',
      id: 'b1',
    ),
    Expense(
      imageUrl:
          'https://lh3.googleusercontent.com/proxy/jiVtvLr0AQr3cQbK5wdvRMroJBiGaTxdudvwXVgYMx5e3JWJ0p2zquDVA9MqopSUuuAu8yVGBsK1-pjSx4AdBl37hQoXkJH6Z_CXxGHzPpuzF87uQ1dRxBG5noxm',
      expenseDate: DateTime.now(),
      status: 'late',
      name: 'Fornecedor XYZ',
      expenseValue: 189.00,
      expensePayment: 189.00,
      expenseFee: 0.0,
      expenseCode: 56839906557274,
      expenseType: 'Boleto',
      id: 'b2',
    ),
    Expense(
      imageUrl:
          'https://mandaguarionline.com.br/wp-content/uploads/2019/07/comerc.jpg',
      expenseDate: DateTime.now(),
      status: 'paid',
      name: 'Maquinário Center',
      expenseValue: 430.20,
      expensePayment: 443.22,
      expenseFee: 0.10,
      expenseCode: 56839906557274,
      expenseType: 'Boleto',
      id: 'b2',
    ),
    Expense(
      imageUrl:
          'https://mandaguarionline.com.br/wp-content/uploads/2019/07/comerc.jpg',
      expenseDate: DateTime.now(),
      status: 'paid',
      name: 'Maquinário Center',
      expenseValue: 430.20,
      expensePayment: 443.22,
      expenseFee: 0.10,
      expenseCode: 56839906557274,
      expenseType: 'Boleto',
      id: 'b2',
    ),
    Expense(
      imageUrl:
          'https://mandaguarionline.com.br/wp-content/uploads/2019/07/comerc.jpg',
      expenseDate: DateTime.now(),
      status: 'paid',
      name: 'Maquinário Center',
      expenseValue: 430.20,
      expensePayment: 443.22,
      expenseFee: 0.10,
      expenseCode: 56839906557274,
      expenseType: 'Boleto',
      id: 'b2',
    ),
    Expense(
      imageUrl:
          'https://mandaguarionline.com.br/wp-content/uploads/2019/07/comerc.jpg',
      expenseDate: DateTime.now(),
      status: 'paid',
      name: 'Maquinário Center',
      expenseValue: 430.20,
      expensePayment: 443.22,
      expenseFee: 0.10,
      expenseCode: 56839906557274,
      expenseType: 'Boleto',
      id: 'b2',
    ),
    Expense(
      imageUrl:
          'https://mandaguarionline.com.br/wp-content/uploads/2019/07/comerc.jpg',
      expenseDate: DateTime.now(),
      status: 'paid',
      name: 'Maquinário Center',
      expenseValue: 430.20,
      expensePayment: 443.22,
      expenseFee: 0.10,
      expenseCode: 56839906557274,
      expenseType: 'Boleto',
      id: 'b2',
    ),
    Expense(
      imageUrl:
          'https://mandaguarionline.com.br/wp-content/uploads/2019/07/comerc.jpg',
      expenseDate: DateTime.now(),
      status: 'paid',
      name: 'Maquinário Center',
      expenseValue: 430.20,
      expensePayment: 443.22,
      expenseFee: 0.10,
      expenseCode: 56839906557274,
      expenseType: 'Boleto',
      id: 'b2',
    ),
  ];

  List<Expense> get expenseList {
    return [..._expenseList];
  }

  List<MonthlyExpensesAmount> _expensesAmount = [
    MonthlyExpensesAmount(month: '2021-01-01', amount: 3439.20),
    MonthlyExpensesAmount(month: '2021-02-01', amount: 2345.00),
    MonthlyExpensesAmount(month: '2021-03-01', amount: 6498.33),
    MonthlyExpensesAmount(month: '2021-04-01', amount: 768.00),
    MonthlyExpensesAmount(month: '2021-05-01', amount: 4568.98),
    MonthlyExpensesAmount(month: '2021-06-01', amount: 1293.00),
    MonthlyExpensesAmount(month: '2021-07-01', amount: 6597.05),
  ];

  List<MonthlyExpensesAmount> get expensesAmount {
    return [..._expensesAmount];
  }
}
