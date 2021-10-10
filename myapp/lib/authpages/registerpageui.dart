import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

import 'loginpageui.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff31344A),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                SizedBox(
                  height: height * 0.060,
                  child: Image(image: AssetImage('assets/digilogo.png')),
                ),
                SizedBox(
                  width: 10,
                ),
                const Text(
                  "Digi",
                  style: TextStyle(fontSize: 20, color: Color(0xffffffff)),
                ),
                const Text(
                  "Cash",
                  style: TextStyle(fontSize: 20, color: Color(0xffA8A8A8)),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            child: GlassmorphicContainer(
              blur: 0.5,
              border: 0.5,
              linearGradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xffffffff).withAlpha(30),
                  const Color(0xffffffff).withAlpha(30)
                ],
              ),
              borderRadius: 20,
              borderGradient: const LinearGradient(
                  colors: [Color(0xffffffff), Color(0xffffffff)]),
              height: height * 0.65,
              width: width * 0.65,
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 0, 25, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(7, 40, 0, 0),
                      child: const Text("Register",
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.bold,
                              fontSize: 22)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(7, 0, 0, 0),
                      child: const Text(
                        "Email",
                        style:
                            TextStyle(color: Color(0xffA8A8A8), fontSize: 12),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      height: 35,
                      child: TextField(
                        mouseCursor: MouseCursor.uncontrolled,
                        cursorHeight: 20,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          disabledBorder: InputBorder.none,
                          fillColor: Color(0xffBBBCCD),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        style: TextStyle(),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(7, 0, 0, 0),
                      child: const Text(
                        "Username",
                        style:
                            TextStyle(color: Color(0xffA8A8A8), fontSize: 12),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      height: 35,
                      child: TextField(
                        mouseCursor: MouseCursor.uncontrolled,
                        cursorHeight: 20,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          disabledBorder: InputBorder.none,
                          fillColor: Color(0xffBBBCCD),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        style: TextStyle(),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(7, 0, 0, 0),
                      child: const Text(
                        "Password",
                        style:TextStyle(color: Color(0xffA8A8A8), fontSize: 12),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      height: 35,
                      child: TextField(
                        mouseCursor: MouseCursor.uncontrolled,
                        cursorHeight: 20,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          disabledBorder: InputBorder.none,
                          fillColor: Color(0xffBBBCCD),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        style: TextStyle(),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(7, 0, 0, 0),
                      child: const Text(
                        "Confirm Password",
                        style:
                            TextStyle(color: Color(0xffA8A8A8), fontSize: 12),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      height: 35,
                      child: TextField(
                        mouseCursor: MouseCursor.uncontrolled,
                        cursorHeight: 20,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          disabledBorder: InputBorder.none,
                          fillColor: Color(0xffBBBCCD),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        style: TextStyle(),
                      ),
                    ),
                    SizedBox(height: 25,),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xff01D09A),
                          borderRadius: BorderRadius.circular(50),
                      ),
                      padding: EdgeInsets.all(10),
                      width: width*0.65-0.14,
                      child: Text("Sign Up",
                      textAlign: TextAlign.center,
                        style:TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.bold
                        )
                      ),
                    ),
                    SizedBox(height:20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 1,
                          width:width*0.20,
                          color: Color(0xffBBBCCD),
                        ),
                        Text(
                          "or",
                          style: TextStyle(
                            color:Color(0xffA8A8A8),

                          ),
                        ),
                        Container(
                          height: 1,
                          width:width*0.20,
                          color: Color(0xffBBBCCD),
                        )
                      ],
                    ),
                    SizedBox(height: 12,),
                    Container(
                      width: width*0.65-0.14,
                      child: Text(
                        "Don't have an account?",
                        textAlign :TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:14,
                          color: Color(0xffA8A8A8)
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: width*0.65-0.14,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const LoginPage()));
                        },
                        child: Text(
                          "Login",
                          textAlign :TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize:14,
                            color: Color(0xffffffff)
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
