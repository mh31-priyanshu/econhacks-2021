import 'package:flutter/material.dart';

class transactionVM extends ChangeNotifier{
  String _email = " ";

  transactionVM(email){
    _email = email;
  }


}