import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:myapp/Payment/Payment.dart';
import 'package:myapp/Transactions/transactionsUI.dart';
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
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomePageVM(widget.email),
      builder: (context, Widget) {
        var _size = MediaQuery.of(context).size;
        var _data = context.watch<HomePageVM>();
        return _data.isLoading ?
            Center(
              child: CircularProgressIndicator(
                backgroundColor: Color(0xff7E8197),
                color: Color(0xff01D09A),
              ),
            )
            : Scaffold(
          key: _globalKey,
          drawer: Theme(
            data: Theme.of(context).copyWith(
                 canvasColor: Color(0xff32354A),
              ),
            child: AppDrawer(widget.email),
          ),
          backgroundColor: HexColor('#ff31344A'),
          floatingActionButton: Padding(
            padding:  EdgeInsets.only(right: _size.width*0.18),
            child: Container(
              height: _size.width*0.2,
              child: FittedBox(
                child: FloatingActionButton(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(
                      builder: (context) => Payment(widget.email)
                    ));
                  },
                  backgroundColor: Color(0xff01D09A),
                  child: Center(
                    child: Image(
                      height: _size.height*0.04,
                      image: AssetImage('assets/plane.png'
                      ),
                    ),
                  ),


                ),
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          bottomNavigationBar: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
              child: BottomAppBar(
                color: Color(0XFFD5D8F1),
                child: Container(
                  height: _size.height*0.15,
                  child: Center(
                    child: Container(
                      child: InkWell(
                        onTap: (){},
                        child: Padding(
                          padding: EdgeInsets.only(right: _size.width*0.4),
                          child: ElevatedButton.icon(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all( Color(0xffBEC4F8)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)
                                )
                              )

                            ),
                              onPressed: (){}
                              , icon: RotatedBox(
                                quarterTurns: 1,
                                child: Icon(
                            Icons.local_offer_outlined,
                                  size: 30,
                                  color: Colors.black,
                            ),
                           ),
                           label: Padding(
                             padding: EdgeInsets.symmetric(vertical: _size.height*0.02),
                             child: Text(
                               'Offers',
                               style: TextStyle(
                                 fontSize: 30,
                                 color: Colors.black,
                                 fontWeight: FontWeight.w400
                               ),
                             ),
                           )
                          )
                          // Row(
                          //   children: [
                          //     RotatedBox(
                          //       quarterTurns: 1,
                          //       child: Icon(
                          //         Icons.local_offer_outlined,
                          //         size: 48,
                          //       ),
                          //     ),
                          //     Padding(
                          //       padding: EdgeInsets.only(left: _size.width*0.02),
                          //       child: Text(
                          //         'Offers',
                          //         style: TextStyle(
                          //           color: Colors.black,
                          //           fontSize: 32
                          //         ),
                          //       ),
                          //     )
                          //   ],
                          // ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: _size.height * 0.04, left: _size.width * 0.05),
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
                          onTap: (){
                            _globalKey.currentState!.openDrawer();
                          },
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
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(
                      builder: (context) => Transactions(widget.email),
                    ));
                  },
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
                              padding: EdgeInsets.only(right: _size.height*0.1),
                              child: Text(
                                'Balance',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                               Padding(
                                 padding: EdgeInsets.only(right : _size.width*0.01),
                                 child: BalanceClass('₹',36),
                               ),
                               BalanceClass(_data.getBalanceInRupee.toString(),36),
                               BalanceClass('.',36),
                               Padding(
                                 padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01),
                                 child: BalanceClass(_data.getBalanceInPaise.toString(),22),
                               ),
                              ],
                            )
                          ],
                        ),
                      )
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
                    height: _size.height * 0.1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: InkWell(
                        onTap: (){},
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.02),
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height*0.07,
                                width: MediaQuery.of(context).size.height*0.07,
                                child: CircularProgressIndicator(
                                  strokeWidth: 8.0,
                                  value: _data.getanalalysisPercent/100,
                                  color: Color(0xff01D09A),
                                  backgroundColor: Color(0xff7E8197),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.04),
                              child: BalanceClass("${_data.getanalalysisPercent.toInt()}%" ,28),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: _size.height*0.05,top: _size.height*0.008),
                              child: Column(
                                children: [
                                  BalanceClass('Total Expenditure', 18),
                                  Padding(
                                    padding: EdgeInsets.only(top: _size.height*0.01),
                                    child: Row(
                                      children: [
                                        Text(
                                          _data.getMoneySpent.toInt().toString(),
                                          style: TextStyle(
                                              color: Color(0xff7E8197),
                                              fontSize: 26
                                          ),
                                        ),
                                        Text(
                                          '/',
                                          style: TextStyle(
                                              color: Color(0xff7E8197),
                                              fontSize: 26
                                          ),
                                        ),
                                        Text(
                                          _data.getSpentLimit.toInt().toString(),
                                          style: TextStyle(
                                              color: Color(0xff7E8197),
                                              fontSize: 26
                                          ),
                                        ),
                                      ],
                                    )
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: _size.height * 0.03,
                    left: _size.width * 0.085,
                    right: _size.width * 0.05),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Recents',
                    style: TextStyle(
                    color: Color(0xffCECBB5),
                    fontSize: 24,
                    fontWeight: FontWeight.w700
                   ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: _size.height*0.02),
                child: SizedBox(
                  height: _size.height*0.17,
                  width: _size.width,
                  child: FutureBuilder(
                    future: getRecents(_data.getRecents),
                    builder: (context,AsyncSnapshot snapshot){
                      if(snapshot.hasData){
                        if(snapshot.data.length > 0){
                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: snapshot.data.length,
                            itemBuilder: (context,index){
                              print("yoooooooooooo");
                              print(snapshot.data);
                              print(snapshot.data[index]['url']);
                              var name = snapshot.data[index]['name'].toString().split(' ');
                              return Padding(
                                padding:  EdgeInsets.only(left:_size.width*0.030,top: _size.width*0.015,bottom:  _size.width*0.015),
                                child: Container(
                                  height: _size.height*0.15,
                                  width: _size.width*0.26,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xff828491),
                                        Color(0xff535568)
                                      ]
                                    ),
                                  ),
                                 child: Column(
                                   children: [
                                     Padding(
                                       padding: EdgeInsets.only(top: _size.height*0.01),
                                       child: Container(
                                         height: MediaQuery.of(context).size.height * 0.1,
                                         width: MediaQuery.of(context).size.height * 0.1,
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
                                             snapshot.data[index]['url'],
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
                                     Padding(
                                       padding: EdgeInsets.only(top: _size.height*0.005),
                                       child: Center(
                                         child: Text(
                                           name[0],
                                           style: TextStyle(
                                             color: Colors.white,
                                             overflow: TextOverflow.ellipsis
                                           ),
                                         ),
                                       ),
                                     )
                                   ],
                                 ),
                                ),
                              );
                            },
                          );
                        }else{
                          return Center(
                            child: Text(
                              'No recent contacts'
                            ),
                          );
                        }
                      }else{
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  )
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}


class BalanceClass extends StatelessWidget {
  String text = " ";
  double size = 0;
  BalanceClass(this.text,this.size);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: size,
        fontWeight: FontWeight.w900
      ),
    );
  }
}
