import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                      margin: EdgeInsets.fromLTRB(7, 60, 0, 0),
                      child: const Text("Login",
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
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(7, 0, 0, 0),
                      child: const Text(
                        "Password",
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
                    SizedBox(height:30),
                    Container(
                      
                      child: Text("Sign In",
                        style:TextStyle(

                        )
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
