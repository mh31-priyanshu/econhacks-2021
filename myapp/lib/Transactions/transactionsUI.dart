import 'package:flutter/material.dart';
import 'package:myapp/Transactions/transactionsVM.dart';
import 'package:provider/provider.dart';

class Transactions extends StatefulWidget {
  String email = " ";
  Transactions(this.email);

  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => transactionVM(widget.email),
        builder: (context,Widget){
          var _data = context.watch<transactionVM>();
          return Scaffold(
            backgroundColor: Color(0xff31344A),
            appBar: AppBar(
              leading: IconButton(
                icon : Icon(
                  Icons.arrow_back_ios,
                ),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
              backgroundColor: Colors.transparent,
            ),
            body: Container(
              child: Column(
                children: [

                ],
              ),
            ),
          );

        },
    );
  }
}
