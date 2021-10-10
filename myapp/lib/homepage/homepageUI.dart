import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
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
      builder: (context,Widget){
        var _size = MediaQuery.of(context).size;
        var _data = context.watch<HomePageVM>();
        return Scaffold(
          backgroundColor: HexColor('#ff31344A'),
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: _size.height*0.03,left: _size.width*0.05),
                child: SizedBox(
                  height: _size.height*0.045,
                  child: Row(
                    children: [
                      Image(image: AssetImage('assets/logo.png'),
                      ),
                      SizedBox(
                          width :_size.width*0.02
                      ),
                      Text(
                        'Digi',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23
                        ),
                      ),
                      Text(
                        'Cash',
                        style: TextStyle(
                            color: HexColor("#ffA8A8A8"),
                            fontSize: 23
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: _size.height*0.007,left: _size.width*0.05,right: _size.width*0.05),
                child: SizedBox(
                  height: _size.height*0.060,
                  child: Container(
                    decoration: BoxDecoration(
                        color: HexColor('#ff7E8197') ,
                        borderRadius: BorderRadius.circular(25)
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                            width :_size.width*0.01
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.menu,
                              size: 32,)
                        ),
                        Expanded(
                            child: Container()
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.0025,top: MediaQuery.of(context).size.height*0.005,bottom: MediaQuery.of(context).size.height*0.005),
                          child: Container(
                            child: _data.hasPfp?
                            Image(
                              image: NetworkImage(
                                _data.getUrl,
                              ),
                            ) :
                            Container(
                              height: MediaQuery.of(context).size.height*0.06,
                              width: MediaQuery.of(context).size.height*0.06,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                              child: Center(
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
              )
            ],
          ),
        );
      },
    );
  }
}