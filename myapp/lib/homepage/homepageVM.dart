import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomePageVM extends ChangeNotifier {
  String _email;
  String _url = "";
  bool _haspfp = false;
  bool _loading = false;
  int _balanceInRupee = 0;
  int _balanceInPaise = 0;
  double _spend_limit = 0.0;
  double _money_spent = 0.0;
  double _analysis_percent = 0;
  String _username = " ";
  String _name = " ";
  String _upiID = " ";
  String _gender = " ";
  int _age = 0;


  HomePageVM(this._email) {
    bool _loading = true;
    getData();
  }

  get getBalanceInRupee => _balanceInRupee;
  get getBalanceInPaise => _balanceInPaise;
  get isLoading => _loading;
  get hasPfp => _haspfp;
  get getUrl => _url;
  get getSpentLimit => _spend_limit;
  get getMoneySpent => _money_spent;
  get getanalalysisPercent => _analysis_percent;
  get getUserName => _username;
  get getName => _name;
  get getUpiId => _upiID;
  get getAge => _age;

  getData() async {

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    print(404);
    await firebaseFirestore
        .collection('accounts')
        .doc(this._email)
        .get()
        .then((value) {
          print(value.data());
      try{
        var temp = value.data()!['balance'];
        _balanceInRupee = temp.toInt();
        _balanceInPaise = ((temp - _balanceInRupee) * 100).toInt();
      }catch(e){
        print(e);
      }
      print(401);

      try{
        _spend_limit = value.data()!['limit'].toDouble();
      }catch(e){
        print(e);
        _spend_limit = 1;
      }

      print(402);

      try{
         _money_spent = value.data()!['expenses'].toDouble();
        }catch(e){
        print(e);
        _money_spent = 1;
      }

      print(403);

      try{
        _analysis_percent  = ((_money_spent/_spend_limit) * 100);
        print(_analysis_percent);
      }catch(e){
        print(e);
      }

      print(404);

      try {
        _url = value.data()!['url'];
        _haspfp = true;
      } catch (e) {
        print(e);
        _haspfp = false;
      }
      print(405);

      try {
        _name = value.data()!['name'];
      } catch (e) {
        print(e);
      }

      try {
        _username = value.data()!['username'];
        _haspfp = true;
      } catch (e) {
        print(e);
        _haspfp = false;
      }

          try {
            _upiID = value.data()!['upi_id'];
            _haspfp = true;
          } catch (e) {
            print(e);
            _haspfp = false;
          }

      try{
        _gender = value.data()!['gender'];
      } catch(e){
        print(e);
      }

          try{
            _age = value.data()!['age'];
          } catch(e){
            print(e);
          }


    });
    print("_url : $_url");
    print("has url : $_haspfp");
    _loading = false;
    notifyListeners();
  }
}
