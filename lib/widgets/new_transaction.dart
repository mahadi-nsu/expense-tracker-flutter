import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  NewTransaction({Key key}) : super(key: key);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            decoration: InputDecoration(labelText: "Enter Title"),
            controller: titleController,
          ),
          TextField(
            decoration: InputDecoration(labelText: "Enter Amount"),
            controller: amountController,
          ),
          FlatButton(
              onPressed: () {
                print(titleController.text);
                print(amountController.text);
              },
              child: Text(
                "Add Transaction",
                style: TextStyle(color: Colors.purple),
              )),
        ],
      ),
    );
  }
}
