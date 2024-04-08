// // // import 'package:flutter/material.dart';
// // // import 'package:attendance/pages/attendencepages/attendencedropdownpage2.dart';
// // // import 'package:attendance/utils/names.dart';
// // //
// // // class AttendenceDropdownPage1 extends StatefulWidget {
// // //   const AttendenceDropdownPage1({Key? key}) : super(key: key);
// // //
// // //   @override
// // //   _AttendenceDropdownPage1State createState() => _AttendenceDropdownPage1State();
// // // }
// // //
// // // class _AttendenceDropdownPage1State extends State<AttendenceDropdownPage1> {
// // //   String programDropdownValue = Program[0]; // Default value for program dropdown
// // //   String branchDropdownValue = Branch[0]; // Default value for branch dropdown
// // //   String yearDropdownValue = CollegeYear[0]; // Default value for year dropdown
// // //   List <dynamic> programs=[];
// // //   String? programid;
// // //
// // //   Map<String, List<String>> branchLists = {
// // //     'B.Tech': ['Computer Science', 'Information Technology'],
// // //     'BCA': ['Web Development', 'Mobile Application Development'],
// // //   };
// // //
// // //   List<String> yearListForBTech = ['1', '2', '3', '4']; // Year options for B.Tech
// // //   List<String> yearListForBCA = ['1', '2', '3']; // Year options for BCA
// // //
// // //   List<String> currentYearList = []; // List that will dynamically change based on selected program
// // //
// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     this.programs.add({'id':1,"label":'B.Tech'});
// // //     this.programs.add({'id':1,"label":'B.Tech'});
// // //     // Set the initial year list based on the initial program selection
// // //
// // //     updateYearList(programDropdownValue);
// // //   }
// // //
// // //   void updateYearList(String selectedProgram) {
// // //     setState(() {
// // //       currentYearList = selectedProgram == 'B.Tech' ? yearListForBTech : yearListForBCA;
// // //       yearDropdownValue = currentYearList[0]; // Set the default year value to the first item in the updated list
// // //     });
// // //   }
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       body: Padding(
// // //         padding: const EdgeInsets.all(15.0),
// // //         child: ListView(
// // //           physics: BouncingScrollPhysics(),
// // //           children: [
// // //             Center(
// // //               child: Image.asset('assets/college logo.jpeg'),
// // //             ),
// // //             SizedBox(height: 30),
// // //             Center(
// // //               child: Text(
// // //                 "Attendance Management System",
// // //                 style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.grey),
// // //               ),
// // //             ),
// // //             SizedBox(height: 30),
// // //             Padding(
// // //               padding: const EdgeInsets.all(10.0),
// // //               child: Column(
// // //                 children: [
// // //                   SizedBox(height: 30),
// // //                   DropdownButton<String>(
// // //                     value: programDropdownValue,
// // //                     onChanged: (newValue) {
// // //                       updateYearList(newValue!); // Update year list based on program selection
// // //                       setState(() {
// // //                         programDropdownValue = newValue;
// // //                         branchDropdownValue = branchLists[newValue]![0]; // Set default branch value based on selected program
// // //                       });
// // //                     },
// // //                     items: Program.map((program) {
// // //                       return DropdownMenuItem<String>(
// // //                         value: program,
// // //                         child: Text(program),
// // //                       );
// // //                     }).toList(),
// // //                   ),
// // //                   SizedBox(height: 20),
// // //                   DropdownButton<String>(
// // //                     value: branchDropdownValue,
// // //                     onChanged: (newValue) {
// // //                       setState(() {
// // //                         branchDropdownValue = newValue!;
// // //                       });
// // //                     },
// // //                     items: branchLists[programDropdownValue]!.map((branch) {
// // //                       return DropdownMenuItem<String>(
// // //                         value: branch,
// // //                         child: Text(branch),
// // //                       );
// // //                     }).toList(),
// // //                   ),
// // //                   SizedBox(height: 20),
// // //                   DropdownButton<String>(
// // //                     value: yearDropdownValue,
// // //                     onChanged: (newValue) {
// // //                       setState(() {
// // //                         yearDropdownValue = newValue!;
// // //                       });
// // //                     },
// // //                     items: currentYearList.map((year) {
// // //                       return DropdownMenuItem<String>(
// // //                         value: year,
// // //                         child: Text(year),
// // //                       );
// // //                     }).toList(),
// // //                   ),
// // //                   SizedBox(height: 20),
// // //                   SizedBox(
// // //                     height: 35,
// // //                     child: ElevatedButton(
// // //                       onPressed: () {
// // //                         Navigator.of(context).push(
// // //                           MaterialPageRoute(builder: (context) => AttendenceDropdownpage2(yearDropdownValue: yearDropdownValue)),
// // //                         );
// // //                       },
// // //                       child: Text("Next"),
// // //                       style: ElevatedButton.styleFrom(
// // //                         foregroundColor: Colors.black,
// // //                         backgroundColor: Colors.grey[100],
// // //                         fixedSize: Size(300, 60),
// // //                         elevation: 10,
// // //                         textStyle: TextStyle(fontSize: 20),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ],
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // // // import 'package:flutter/material.dart';
// // // // import 'package:snippet_coder_utils/FormHelper.dart';
// // // //
// // // // class attendencedropdown1 extends StatefulWidget {
// // // //   const attendencedropdown1({super.key});
// // // //
// // // //   @override
// // // //   State<attendencedropdown1> createState() => _attendencedropdown1State();
// // // // }
// // // //
// // // // class _attendencedropdown1State extends State<attendencedropdown1> {
// // // //   List<dynamic> programs=[];
// // // //   String? programid;
// // // //   void initState(){
// // // //     super.initState();
// // // //     this.programs.add({'id':1,"label":"B.Tech"});
// // // //     this.programs.add({'id':2,"label":"BCA"});
// // // //   }
// // // //
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return const Scaffold(
// // // //       body: Column(
// // // //         children: [
// // // //          FormHelper.dropDownWidget(context, hintText, value, lstData, onChanged, onValidate)
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }
// // // // }
// // // //
// // import 'package:flutter/material.dart';
// // import 'AttendanceDropdownPage2.dart'; // Import the next screen file
// //
// //
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: Text('Dropdown Example'),
// //         ),
// //         body: Center(
// //           child: DropdownWidget(),
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// // class DropdownWidget extends StatefulWidget {
// //   @override
// //   _DropdownWidgetState createState() => _DropdownWidgetState();
// // }
// //
// // class _DropdownWidgetState extends State<DropdownWidget> {
// //   String selectedProgram = '';
// //   String selectedBranch = '';
// //   String selectedYear = '';
// //
// //   Map<String, List<String>> branchMap = {
// //     'B.Tech': ['Computer Science', 'Information Technology'],
// //     'BCA': ['Web Development', 'Mobile Application Development']
// //   };
// //
// //   Map<String, List<String>> yearMap = {
// //     'B.Tech': ['1', '2', '3', '4'],
// //     'BCA': ['1', '2', '3']
// //   };
// //
// //   void navigateToNextPage() {
// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(
// //         builder: (context) => AttendanceDropdownPage2(
// //           selectedProgram: selectedProgram,
// //           selectedBranch: selectedBranch,
// //           selectedYear: selectedYear,
// //         ),
// //       ),
// //     );
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       mainAxisAlignment: MainAxisAlignment.center,
// //       children: <Widget>[
// //         DropdownButton<String>(
// //           hint: Text('Select Program'),
// //           value: selectedProgram,
// //           onChanged: (String? newValue) {
// //             setState(() {
// //               selectedProgram = newValue!;
// //               selectedBranch = ''; // Reset branch when program changes
// //               selectedYear = ''; // Reset year when program changes
// //             });
// //           },
// //           items: ['B.Tech', 'BCA'].map<DropdownMenuItem<String>>((String value) {
// //             return DropdownMenuItem<String>(
// //               value: value,
// //               child: Text(value),
// //             );
// //           }).toList(),
// //         ),
// //         SizedBox(height: 20),
// //         DropdownButton<String>(
// //           hint: Text('Select Branch'),
// //           value: selectedBranch,
// //           onChanged: (String? newValue) {
// //             setState(() {
// //               selectedBranch = newValue!;
// //               selectedYear = ''; // Reset year when branch changes
// //             });
// //           },
// //           items: selectedProgram.isNotEmpty
// //               ? branchMap[selectedProgram]!.map<DropdownMenuItem<String>>((String value) {
// //             return DropdownMenuItem<String>(
// //               value: value,
// //               child: Text(value),
// //             );
// //           }).toList()
// //               : [],
// //         ),
// //         SizedBox(height: 20),
// //         DropdownButton<String>(
// //           hint: Text('Select Year'),
// //           value: selectedYear,
// //           onChanged: (String? newValue) {
// //             setState(() {
// //               selectedYear = newValue!;
// //             });
// //           },
// //           items: (selectedProgram.isNotEmpty && selectedBranch.isNotEmpty)
// //               ? yearMap[selectedProgram]!.map<DropdownMenuItem<String>>((String value) {
// //             return DropdownMenuItem<String>(
// //               value: value,
// //               child: Text(value),
// //             );
// //           }).toList()
// //               : [],
// //         ),
// //         SizedBox(height: 20),
// //         ElevatedButton(
// //           onPressed: () {
// //             if (selectedProgram.isNotEmpty && selectedBranch.isNotEmpty && selectedYear.isNotEmpty) {
// //               navigateToNextPage();
// //             } else {
// //               ScaffoldMessenger.of(context).showSnackBar(
// //                 SnackBar(
// //                   content: Text('Please select Program, Branch, and Year.'),
// //                 ),
// //               );
// //             }
// //           },
// //           child: Text('Next'),
// //         ),
// //       ],
// //     );
// //   }
// // }
// import 'package:attendance/pages/attendencepages/attendencedropdownpage2.dart';
// import 'package:attendance/widgets/dropDownWidget.dart';
// import 'package:attendance/utils/names.dart';
// import 'package:flutter/material.dart';
//
// class AttendenceDropdownPage1 extends StatefulWidget {
//   const AttendenceDropdownPage1({ Key? key }) : super(key: key);
//
//   @override
//   _AttendenceDropdownPage1State createState() => _AttendenceDropdownPage1State();
// }
//
// class _AttendenceDropdownPage1State extends State<AttendenceDropdownPage1> {
//   @override
//   Widget build(BuildContext context) {
//     // String programdropdownValue = Program[0];
//     // String branchdropdownValue = Branch[0];
//     // String schooldropdownValue = School[0];
//     // String semdropdownValue = Semester[0];
//     // String yeardropdownValue = CollegeYear[0];
//
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: ListView(
//             physics: BouncingScrollPhysics(),
//             children: [
//               Center(
//                 child: Image.asset('assets/Logo_Login_Page.png'),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               Center(child: Text("Attendence Management System",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.grey),)),
//               const SizedBox(
//                 height: 30,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Column(
//                   children: [SizedBox(height: 30,),
//                     PopupMenuButton(
//                       onSelected: (String value) {
//                         if (value == 'Reminder') {
//                           // Navigator.push(context, MaterialPageRoute(builder: (context) =>BirthdaySplashScreen()));
//                         }
//                         else if (value == 'My_profile') {
//                           PopupMenuButton(
//                             icon: Icon(Icons.more_vert, color: Colors.white),
//                             onSelected: (String value) {
//                               if (value == 'btech') {
//                                 PopupMenuButton(
//                                   icon: Icon(Icons.more_vert, color: Colors.white),
//                                   onSelected: (String value) {
//                                     if (value == 'Reminder') {
//                                       // Navigator.push(context, MaterialPageRoute(builder: (context) =>BirthdaySplashScreen()));
//                                     }
//                                   },
//                                   itemBuilder: (BuildContext context) {
//                                     return [
//                                       PopupMenuItem(
//                                         value: 'My_profile',
//                                         child: Text('Program'),
//                                       ),
//
//                                     ];
//                                   },
//                                 );
//                               }
//                             },
//                             itemBuilder: (BuildContext context) {
//                               return [
//                                 PopupMenuItem(
//                                   value: 'btech',
//                                   child: Text('Btech'),
//                                 ),
//
//                                 PopupMenuItem(
//                                   value: 'Make_notes',
//                                   child: Text('Notes'),
//                                 ),
//
//                               ];
//                             },
//                           );
//                         }
//
//                       },
//                       itemBuilder: (BuildContext context) {
//                         return [
//                           PopupMenuItem(
//                             value: 'My_profile',
//                             child: Text('Program'),
//                           ),
//                           PopupMenuItem(
//                             value: 'settings',
//                             child: Text('Settings'),
//                           ),
//                         ];
//                       },
//                     ),
//
//
//                     // dropdownButton(batchdropdownValue,Batch,"Batch"),
//                     SizedBox(height: 35,),
//                     ElevatedButton(
//                       onPressed: (){
//                         Navigator.of(context).push(
//                           MaterialPageRoute(builder: (context) => AttendenceDropdownpage2()),);
//                       }, child: Text("Next"),
//                       style: ElevatedButton.styleFrom(
//                           foregroundColor: Colors.black, backgroundColor: Colors.grey[100], fixedSize: Size(300,60),
//                           elevation: 10,
//                           textStyle: TextStyle(fontSize: 20)
//                       ),
//                     )
//                   ],
//                 ),
//                 // DropdownButton<String>(
//                 //   isExpanded: true,
//                 //   value: dropdownValue,
//                 //   icon: const Icon(Icons.keyboard_arrow_down_outlined),
//                 //   elevation: 16,
//                 //   style: const TextStyle(color: Colors.black),
//                 //   // underline: Container(
//                 //   //     height: 2,
//                 //   // color: Colors.black),
//                 //   onChanged: (String? newValue) {
//                 //     setState(() {
//                 //       dropdownValue = newValue!;
//                 //     });
//                 //   },
//                 //   items: <String>['One', 'Two', 'Free', 'Four']
//                 //       .map<DropdownMenuItem<String>>((String value) {
//                 //     return DropdownMenuItem<String>(
//                 //       value: value,
//                 //       child: Text(value),
//                 //     );
//                 //   }).toList(),
//                 // ),
//               ),
//             ]
//         ),
//       ),
//
//     );
//   }
// }
import 'package:attendance/pages/attendencepages/attendencedropdownpage2.dart';
import 'package:attendance/widgets/dropDownWidget.dart';
import 'package:attendance/utils/names.dart';
import 'package:flutter/material.dart';

import '../../utils/names.dart';
import '../../widgets/dropDownWidget.dart';

class AttendenceDropdownPage1 extends StatefulWidget {
  const AttendenceDropdownPage1({ Key? key }) : super(key: key);

  @override
  _AttendenceDropdownPage1State createState() => _AttendenceDropdownPage1State();
}

class _AttendenceDropdownPage1State extends State<AttendenceDropdownPage1> {
  @override
  Widget build(BuildContext context) {
    // String programdropdownValue = Program[0];
    // String branchdropdownValue = Branch[0];
    // String schooldropdownValue = School[0];
    // String semdropdownValue = Semester[0];
    // String yeardropdownValue = CollegeYear[0];
        String Program_ ='';int Year_ =0;
        String Branch_ ='';

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: new ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Center(
                child: Image.asset('assets/Logo_Login_Page.png'),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(child: Text("Attendence Management System",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.grey),)),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [SizedBox(height: 30,),
                    dropdown(DropdownValue: programdropdownValue, Hint: "Program", sTring: Program, onChanged: (newValue) {
                      setState(() {
                        Year_=newValue;
                      });
                    } ,),SizedBox(height: 20,),
                   // dropdown(DropdownValue: schooldropdownValue,Hint: "School",sTring: School),SizedBox(height: 20,),
                    dropdown(DropdownValue: branchdropdownValue,sTring: Branch,Hint: "Branch", onChanged: (newValue) {
                      setState(() {
                        Branch_=newValue;
                      });
                    },),SizedBox(height: 20,),
                    dropdown(DropdownValue: yeardropdownValue,sTring: CollegeYear,Hint:"Year", onChanged: (newValue) {
                      setState(() {
                        Year_=newValue;
                      });
                    },),SizedBox(height: 20,),
                    // dropdownButton(batchdropdownValue,Batch,"Batch"),
                    SizedBox(height: 35,),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => AttendenceDropdownpage2(Year_,Program_,Branch_)),);
                      }, child: Text("Next"),
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black, backgroundColor: Colors.grey[100], fixedSize: Size(300,60),
                          elevation: 10,
                          textStyle: TextStyle(fontSize: 20)
                      ),
                    )
                  ],
                ),

              ),
            ]
        ),
      ),

    );
  }
}