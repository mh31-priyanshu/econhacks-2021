import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  AppDrawer({Key? key}) : super(key: key);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children : <Widget> [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Color(0xff01D09A),
          ),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              )
            ],
          ),
        )
      ],),
    );
  }
}

// sign out
// Offers
// Transaction History
// edit profile
// Photo
// email