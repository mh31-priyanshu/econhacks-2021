import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomePageVM extends ChangeNotifier {
  String _email;
  String _url = "";
  bool _haspfp = false;
  bool _loading = false;
  HomePageVM(this._email);

  get isLoading => _loading;
  get hasPfp => _haspfp;
  get getUrl => _url;

  getData() {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  }
}
