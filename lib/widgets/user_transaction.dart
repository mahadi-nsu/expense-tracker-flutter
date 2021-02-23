import 'package:expensetracker/models/transaction.dart';
import 'package:flutter/material.dart';

import 'new_transaction.dart';
import 'transaction_list.dart';

class UserTranasction extends StatefulWidget {
  UserTranasction({Key key}) : super(key: key);

  @override
  _UserTranasctionState createState() => _UserTranasctionState();
}

class _UserTranasctionState extends State<UserTranasction> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 99.98, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'New Groceries', amount: 19.98, date: DateTime.now())
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now());
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
