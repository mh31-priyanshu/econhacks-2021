import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomePageVM extends ChangeNotifier {
  String _email;
  String _url = "";
  bool _haspfp = false;
  bool _loading = false;
  int _balanceInRupee = 0;
  int _balanceInPaise = 0;


  HomePageVM(this._email) {
    bool _loading = true;
    getData();
  }

  get getBalanceInRupee => _balanceInRupee;
  get getBalanceInPaise => _balanceInPaise;
  get isLoading => _loading;
  get hasPfp => _haspfp;
  get getUrl => _url;

  getData() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    await firebaseFirestore
        .collection('accounts')
        .doc(this._email)
        .get()
        .then((value) {
      try{
        var temp = value.data()!['balance'];
        _balanceInRupee = temp.toInt();
        print(404);
        _balanceInPaise = ((temp - _balanceInRupee) * 100).toInt();
      }catch(e){
        print(e);
      }

      try {
        _url = value.data()!['url'];
        _haspfp = true;
      } catch (e) {
        print(e);
        _haspfp = false;
      }

    });
    print("_url : $_url");
    print("has url : $_haspfp");
    _loading = false;
    notifyListeners();
  }
}
