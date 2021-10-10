import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:myapp/homepage/appdrawer.dart';
import 'package:provider/provider.dart';
import 'homepageVM.dart';

class Homepage extends StatefulWidget {
  String email;
  Homepage(this.email);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomePageVM(widget.email),
      builder: (context, Widget) {
        var _size = MediaQuery.of(context).size;
        var _data = context.watch<HomePageVM>();
        return Scaffold(
          drawer: new Drawer(),
          backgroundColor: HexColor('#ff31344A'),
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: _size.height * 0.03, left: _size.width * 0.05),
                child: SizedBox(
                  height: _size.height * 0.045,
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/digilogo.png'),
                      ),
                      SizedBox(width: _size.width * 0.02),
                      Text(
                        'Digi',
                        style: TextStyle(color: Colors.white, fontSize: 23),
                      ),
                      Text(
                        'Cash',
                        style: TextStyle(
                            color: HexColor("#ffA8A8A8"), fontSize: 23),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: _size.height * 0.007,
                    left: _size.width * 0.05,
                    right: _size.width * 0.05),
                child: SizedBox(
                  height: _size.height * 0.060,
                  child: Container(
                    decoration: BoxDecoration(
                        color: HexColor('#ff7E8197'),
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      children: [
                        SizedBox(width: _size.width * 0.025),
                        InkWell(
                          onTap: ()=> Scaffold.of(context).openDrawer(),
                          child: Icon(
                            Icons.menu,
                            size: 32,
                          ),
                        ),
                        Expanded(child: Container()),
                        Padding(
                          padding: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width * 0.0025,
                              top: MediaQuery.of(context).size.height * 0.005,
                              bottom:
                              MediaQuery.of(context).size.height * 0.005),
                          child: Container(
                            child: Container(
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
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: _size.height * 0.03,
                    left: _size.width * 0.05,
                    right: _size.width * 0.05),
                child: SizedBox(
                  height: _size.height * 0.2,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient : LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                             Color(0xff01D09A).withOpacity(0.82),
                             Color(0xff01D09A).withOpacity(0.30)
                          ],
                        ),
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(),
                            child: Text(
                              'Balance',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
