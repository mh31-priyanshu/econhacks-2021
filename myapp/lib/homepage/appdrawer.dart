import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:myapp/homepage/homepageVM.dart';
import 'package:myapp/profile/editprofle.dart';
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
              Container(
                height: 190,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xff01D09A),
                  ),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: const Center(
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('assets/ruby.jpg'),
                          ),
                        )
                      ),
                      SizedBox(height: 5,),
                      Text(
                        _data.getName,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      SizedBox(height: 3,),
                      Text(
                        _data.getUpiId,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300
                        ),
                      )
                    ],
                  )
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height-260,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 50,),
                        Container(
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          Icon(
                            Icons.person_rounded,
                            size: 32,
                          ),
                          SizedBox(width: 25,),
                          GestureDetector(
                            onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>EditProfile()));
                        },
                            child: Text(
                              "Profile",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          Icon(
                            Icons.history_rounded,
                            size: 32,
                          ),
                          SizedBox(width: 25,),
                          Text(
                            "Transaction History",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          Icon(
                            Icons.shopping_bag_rounded,
                            size: 32,
                          ),
                          SizedBox(width: 25,),
                          Text(
                            "Offers",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          Icon(
                            Icons.analytics_outlined,
                            size: 32,
                          ),
                          SizedBox(width: 25,),
                          Text(
                            "Analytics",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600
                            ),
                          )
                        ],
                      ),
                    )
                      ],
                    ),
                    Container(
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          Icon(
                            Icons.exit_to_app_rounded,
                            size: 32,
                          ),
                          SizedBox(width: 25,),
                          Text(
                            "Sign Out",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600
                            ),
                          )
                        ],
                      ),
                    )
                  ],
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