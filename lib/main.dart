import 'package:attendance/mysqpconnect.dart';

import "firebase_options.dart";
// ignore_for_file: camel_case_types
import 'package:attendance/pages/addpages/add_faculty.dart';
import 'package:attendance/pages/addpages/add_student.dart';
import 'package:attendance/pages/loginpages/logout.dart';
import 'package:attendance/pages/profilepages/adminPage.dart';
import 'package:attendance/pages/reportpages/adminreport.dart';
import 'package:attendance/pages/attendencepages/attendencePage.dart';
import 'package:attendance/pages/attendencepages/attendencedropdown1.dart';
import 'package:attendance/pages/attendencepages/attendencedropdownpage2.dart';
import 'package:attendance/pages/bottomNavBar.dart';
import 'package:attendance/pages/editpages/changePasswordPage.dart';
import 'package:attendance/widgets/datepicker.dart';
import 'package:attendance/pages/editpages/editProfilePage.dart';
import 'package:attendance/pages/editpages/edit_faculty.dart';
import 'package:attendance/pages/editpages/edit_student.dart';
import 'package:attendance/pages/detailspages/facultyDetailpage.dart';
import 'package:attendance/pages/detailspages/facultyScreen.dart';
import 'package:attendance/pages/profilepages/profilepage.dart';
import 'package:attendance/pages/reportpages/reportGenration.dart';
import 'package:attendance/pages/reportpages/reportPdfDownload.dart';
import 'package:attendance/pages/detailspages/studentDetailspage.dart';
import 'package:attendance/pages/loginpages/loginPage.dart';
import 'package:attendance/theme/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseHelper().initDatabase();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var themeData = ThemeData(
        // canvasColor: primaryColor,
        primarySwatch: primaryColor,
        dividerColor: Colors.black);
    // DE0000
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Attendence Management System',
      theme: themeData,
      home:
      AttendenceDropdownPage1(),
          // Logout(),
          // LoginNavScreen(),
          // AttendenceDropdownPage1(),
            // AttendenceDropdownpage2(),
          // AttendencePage(),
          // ProfilePage(),
          // EditProfilePage(),
          // ChangePassword(),
          // ReportGenration(),
          // ReportPdfDownloadPage(),
          // AdminPage(),
          // AdminReport(),
          // StudentDetailsPage(),
          // FacultyPage(),
          // FacultyDetailsPage(),
          // AddStud(),
          // EditStud(),
          // AddFaculty(),
          // EditFaculty(),
          // MyHomePage(title: 'Flutter Demo Home Page'),

    );
  }
}

// to do
// profile photo change nhi hori
// profile photo widget mai default wali daalni hai
// toggle buttons kaam nhi karre 
// drop downs kaam nhi karre n drop downs ke variables set nhi hai 