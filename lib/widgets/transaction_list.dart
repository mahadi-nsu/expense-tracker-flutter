import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);
  // print(transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
        }).toList()),
      ),
    );
  }
}
