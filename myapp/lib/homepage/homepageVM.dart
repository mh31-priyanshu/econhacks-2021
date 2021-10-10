import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomePageVM extends ChangeNotifier {
  String _email;
  String _url = "";
  bool _haspfp = false;
  bool _loading = false;
  HomePageVM(this._email) {
    _loading = true;
    getData();
  }

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
  }
}
