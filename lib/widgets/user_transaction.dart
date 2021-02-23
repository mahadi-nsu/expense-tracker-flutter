import 'package:flutter/material.dart';

import 'new_transaction.dart';
import 'transaction_list.dart';

class UserTranasction extends StatefulWidget {
  UserTranasction({Key key}) : super(key: key);

  @override
  _UserTranasctionState createState() => _UserTranasctionState();
}

class _UserTranasctionState extends State<UserTranasction> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        NewTransaction(),
        TransactionList(),
      ],
    );
  }
}
