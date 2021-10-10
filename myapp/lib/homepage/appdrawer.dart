import 'package:flutter/material.dart';
import 'package:myapp/homepage/homepageVM.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatefulWidget {
  String _email;
  AppDrawer(this._email);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomePageVM(widget._email),
        builder: (context, Widget){
          var _data = context.watch<HomePageVM>();
          return Drawer(
            child: ListView(children :[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xff01D09A),
                ),
                child:Container(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.height * 0.06,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(50.0),
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                              child: _data.hasPfp
                                  ? CircleAvatar(
                                radius: 30.0,
                                backgroundColor: Colors.transparent,
                                backgroundImage: NetworkImage(
                                  _data.getUrl,
                                ),
                              )
                                  : Center(
                                child: Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                              ),
                            ),
              )
            ],),
          );
        }
    );
  }
}

// sign out
// Offers
// Transaction History
// edit profile
// Photo
// email