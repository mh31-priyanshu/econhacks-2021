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
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Center(
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/ruby.jpg'),
                        ),
                      )
                    ),
                    
                  ],
                )
              ),
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