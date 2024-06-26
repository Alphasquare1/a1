import 'package:attendance/widgets/textfieldwidgetform.dart';
import 'package:flutter/material.dart';

import '../bottomNavBar.dart';

class AddStud extends StatefulWidget {
  const AddStud({Key? key}) : super(key: key);

  @override
  _AddStudState createState() => _AddStudState();
}

class _AddStudState extends State<AddStud> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          leading: BackButton(),
          title: Text('STUDENT DETAILS')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              'ADD STUDENT',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            TextFieldWidgetForm(
              label: "Name",
              onChanged: (yuu) {},
              text: "",
            ),
            SizedBox(
              height: 15,
            ),
            TextFieldWidgetForm(
              label: "Email",
              onChanged: (yuu) {},
              text: "",
            ),
            SizedBox(
              height: 15,
            ),
            TextFieldWidgetForm(
              label: "Enrollment Number",
              onChanged: (yuu) {},
              text: "",
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: TextFieldWidgetForm(
                    label: "Program",
                    onChanged: (yuu) {},
                    text: "",
                  ),
                ),
                Flexible(
                  child: TextFieldWidgetForm(
                    label: "Branch",
                    onChanged: (yuu) {},
                    text: "",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: TextFieldWidgetForm(
                    label: "Semester",
                    onChanged: (yuu) {},
                    text: "",
                  ),
                ),
                Flexible(
                  child: TextFieldWidgetForm(
                    label: "Batch",
                    onChanged: (yuu) {},
                    text: "",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            TextFieldWidgetForm(
              label: "Year",
              onChanged: (yuu) {},
              text: "",
            ),
          
            SizedBox(height: 20,),
            Center(
            child: ElevatedButton(onPressed: () =>{Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => AdminNavScreen()),
      
               (route)=>false, ),
                
            }, child: 
              Text("Confirm"),
               style: ElevatedButton.styleFrom(
              shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0)
            ),
      fixedSize: Size(300, 60), 
               )
            ),
            )
          ],
        ),
      ),
    );
  }
}
