import '../widgets/newtransaction.dart';
import '../widgets/transactions_list.dart';
import '../models/transaction.dart';
import 'package:flutter/material.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> userTransactions = [
    Transaction(id: 't1', title: 'Shoes', amount: 1500, date: DateTime.now()),
    Transaction(id: 't2', title: 'Books', amount: 2000, date: DateTime.now())
  ];

  void addNewTransaction(String title, double amount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());
    setState(() {
      userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(addNewTransaction),
        TransactionList(userTransactions),
      ],
    );
  }
}
