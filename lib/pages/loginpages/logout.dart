
import 'package:attendance/pages/loginpages/loginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Logout extends StatefulWidget {
  const Logout({ Key? key }) : super(key: key);

  @override
  _LogoutState createState() => _LogoutState();
}
void logout(BuildContext context) async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('loggedIn', false);
  await FirebaseAuth.instance.signOut();
  Navigator.popUntil(context, (route) => route.isFirst);
  Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context)=>LoginPage()));

}
class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Logout"),),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text("Confirm Logout ?", style: TextStyle(fontSize: 30),),
            SizedBox(height: 30,),
            ElevatedButton(onPressed:()=> //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> LoginPage()))
             logout(context) , child: Text("Logout",style: TextStyle(fontSize: 20),),
                          style: ElevatedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(15),
                            ),
                            fixedSize: Size(200, 50),
                          ),)
          ],
        ),
      ),
      );
      
  }
}