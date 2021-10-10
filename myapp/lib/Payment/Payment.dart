import 'package:flutter/material.dart';
import 'package:myapp/Transactions/transactionsVM.dart';
import 'package:myapp/homepage/homepageVM.dart';
import 'package:provider/provider.dart';

class Payment extends StatefulWidget {
  String email = " ";
  Payment(this.email);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomePageVM(widget.email),
      builder: (context,Widget){
        TextEditingController digiId = TextEditingController();
        TextEditingController Amount = TextEditingController();
        var _data = context.watch<HomePageVM>();
        var _size = MediaQuery.of(context).size;
        return Scaffold(
          backgroundColor: Color(0xff31344A),
          appBar: AppBar(
            leading: IconButton(
              icon : Icon(
                Icons.arrow_back_ios,
              ),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            backgroundColor: Colors.transparent,
          ),
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
          body: Container(
            child: Column(
              children: [

                Padding(
                  padding: EdgeInsets.only(
                      top: _size.height * 0.03,
                      left: _size.width * 0.05,
                      right: _size.width * 0.05),
                  child: InkWell(
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
                  child: Container(
                    height: _size.height*0.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.5),
                      color: Color(0xff4A5070),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        controller: digiId,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: _size.width
                          *0.02),
                          labelText: 'Recipent\'s DigiID',
                          labelStyle: TextStyle(
                            color: Color(0xff8B8B8F),
                          ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.cyan),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                          ),
                        ),
                    ),


                    ),
                  ),
                Padding(
                  padding: EdgeInsets.only(
                      top: _size.height * 0.01,
                      left: _size.width * 0.05,
                      right: _size.width * 0.05),
                  child: Container(
                    height: _size.height*0.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.5),
                      color: Color(0xff4A5070),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        controller: Amount,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: _size.width
                          *0.02),
                          labelText: 'Enter the amount',
                          labelStyle: TextStyle(
                            color: Color(0xff8B8B8F),
                          ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.cyan),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                          ),
                        ),
                    ),


                    ),
                  ),
              ],
            ),
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
