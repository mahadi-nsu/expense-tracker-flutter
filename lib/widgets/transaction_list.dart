import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatefulWidget {
  TransactionList({Key key}) : super(key: key);

  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 99.98, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'New Groceries', amount: 19.98, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: transactions.map((tx) {
      return Card(
        elevation: 5,
        child: Row(
          children: <Widget>[
            Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 3)),
                padding: EdgeInsets.all(10),
                child: Text(
                  '\$ ${tx.amount}',
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tx.title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  DateFormat.yMMMd().format(tx.date),
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )
              ],
            )
          ],
        ),
      );
    }).toList());
  }
}
