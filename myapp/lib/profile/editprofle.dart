import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff31344A),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Color(0xffB3B3B3),
                  ),
                ),
                Text(
                  "Edit Profile",
                  style: TextStyle(
                    color: Color(0xffB3B3B3),
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(width: 35,)
              ],
            ),
            SizedBox(height: 20,),
            Stack(
              alignment: Alignment.center,
              children: [
            Center(
              child: CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage('assets/ruby.jpg'),
              )
            ),
            Positioned(
              bottom: 0,
              left: (MediaQuery.of(context).size.width/2)+25,
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Color(0xffb3b3b3),
                  borderRadius: BorderRadius.all(Radius.circular(100))
                ),
                child: Icon(
                  Icons.edit
                ),
              ),
            )
              ],
            ), 
            SizedBox(height: 20,),
            Container(
              height: 280,
              width: MediaQuery.of(context).size.width-30,
              decoration: BoxDecoration(
                color: Color(0xff4B5070),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Container(
                margin: EdgeInsets.fromLTRB(14, 0, 14, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15,),
                    Text(
                      "Name",
                      style: TextStyle(
                        color: Color(0xff939393),
                      ),
                    ),
                    TextField(
                    ),
                    SizedBox(height: 15,),
                    Text(
                      "Age",
                      style: TextStyle(
                        color: Color(0xff939393),
                      ),
                    ),
                    TextField(
                    ),
                    SizedBox(height: 15,),
                    Text(
                      "Phone Number",
                      style: TextStyle(
                        color: Color(0xff939393),
                      ),
                    ),
                    TextField(
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height:20,),
            Container(
              height: 370,
              width: MediaQuery.of(context).size.width-30,
              decoration: BoxDecoration(
                color: Color(0xff4B5070),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Container(
                margin: EdgeInsets.fromLTRB(14, 0, 14, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15,),
                    Text(
                      "Bio",
                      style: TextStyle(
                        color: Color(0xff939393),
                      ),
                    ),
                    TextField(
                      minLines: 1,
                      maxLines: 3,
                    ),
                    SizedBox(height: 15,),
                    Text(
                      "Username",
                      style: TextStyle(
                        color: Color(0xff939393),
                      ),
                    ),
                    TextField(
                    ),
                    SizedBox(height: 15,),
                    Text(
                      "Email",
                      style: TextStyle(
                        color: Color(0xff939393),
                      ),
                    ),
                    TextField(
                    ),
                    SizedBox(height: 15,),
                    Text(
                      "Gander",
                      style: TextStyle(
                        color: Color(0xff939393),
                      ),
                    ),
                    TextField(
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 25,),
          ],
        ),
      ),
    );
  }
}