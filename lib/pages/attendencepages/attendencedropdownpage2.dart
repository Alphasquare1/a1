import 'dart:ffi';

import 'package:attendance/pages/attendencepages/attendencePage.dart';
import 'package:attendance/widgets/dropDownWidget.dart';
import 'package:attendance/utils/names.dart';
import 'package:flutter/material.dart';

import '../../widgets/dropDownWidget.dart';
class AttendenceDropdownpage2 extends StatefulWidget {
  int year;
  String program;
  String branch;

  AttendenceDropdownpage2({
    required this.year,
    required this.program,
    required this.branch,
    Key? key,
  }) : super(key: key);

  @override
  _AttendenceDropdownpage2State createState() => _AttendenceDropdownpage2State();
}

class _AttendenceDropdownpage2State extends State<AttendenceDropdownpage2> {
  DateTime selectedDate = DateTime.now();
  int? Semester_;
  String? Subject_;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    // String semesterdropdownValue = Semester[0];
    // String batchdropdownValue = Batch[0];
    // String schooldropdownValue = School[0];
    // String subjectdropdownValue = Subject[0];
    // String datedropdownValue = Date[0];
    // String monthdropdownValue = Month[0];
    // String yeardropdownValue = Year[0];


    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Attendence"),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(
              child: Text(
                "Attendence Management System",
                style: TextStyle(
                    fontSize: 17, fontWeight: FontWeight.w500, color: Colors.grey),
              )),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              SizedBox(
                height: 20,
              ),
              dropdown( DropdownValue :semesterdropdownValue, sTring: Semester,Hint :"Semester", onChanged: (newValue) {
                setState(() {
                  Semester_=newValue;
                });
              },),
              SizedBox(
                height: 20,
              ),
              dropdown( DropdownValue :subjectdropdownValue, sTring:Subject,Hint: "Subject", onChanged: (newValue) {
                setState(() {
                  Subject_=newValue;
                });
              },),
              SizedBox(
                height: 30,
              ),
              // Text("${selectedDate.toLocal()}".split(' ')[0]),
              // SizedBox(height: 20.0,),
              // ignore: deprecated_member_use
              ElevatedButton(
                //color: Colors.red,
                onPressed: () => _selectDate(context),
                child: Text('Select date',style: TextStyle(color: Colors.white),),
              ),
              // Row(children: [
              //   SizedBox(
              //     width: 30,
              //   ),
              //    Container(
              //       padding: EdgeInsets.symmetric(horizontal: 10.0),
              //       decoration: BoxDecoration(
              //           color: Colors.grey[100],
              //           borderRadius: BorderRadius.circular(15.0),
              //           border: Border.all(
              //               color: Colors.grey,
              //               style: BorderStyle.solid,
              //               width: 0.80),
              //           boxShadow: [
              //             BoxShadow(
              //               color: Colors.grey,
              //               offset: const Offset(
              //                 5.0,
              //                 5.0,
              //               ),
              //               blurRadius: 10.0,
              //               spreadRadius: 2.0,
              //             ),
              //           ]),
              //       child: DropdownButton<String>(
              //         underline: Container(
              //                 height: 0,
              //             color: Colors.black),
              //         hint: Text(datedropdownValue),
              //         items: Date
              //             //  <String>['A', 'B', 'C', 'D']
              //             .map((String value) {
              //           return DropdownMenuItem<String>(
              //             value: value,
              //             child: Text(value),
              //           );
              //         }).toList(),
              //         onChanged: (_) {},
              //       ),
              //     ),

              //   SizedBox(
              //     width: 30,
              //   ),
              //    Container(
              //       padding: EdgeInsets.symmetric(horizontal: 10.0),
              //       decoration: BoxDecoration(
              //           color: Colors.grey[100],
              //           borderRadius: BorderRadius.circular(15.0),
              //           border: Border.all(
              //               color: Colors.grey,
              //               style: BorderStyle.solid,
              //               width: 0.80),
              //           boxShadow: [
              //             BoxShadow(
              //               color: Colors.grey,
              //               offset: const Offset(
              //                 5.0,
              //                 5.0,
              //               ),
              //               blurRadius: 10.0,
              //               spreadRadius: 2.0,
              //             ),
              //           ]),
              //       child: DropdownButton<String>(
              //         underline: Container(
              //                 height: 0,
              //             color: Colors.black),
              //         hint: Text(monthdropdownValue),
              //         items: Month
              //             //  <String>['A', 'B', 'C', 'D']
              //             .map((String value) {
              //           return DropdownMenuItem<String>(
              //             value: value,
              //             child: Text(value),
              //           );
              //         }).toList(),
              //         onChanged: (_) {},
              //       ),

              //   ),
              //   SizedBox(
              //     width: 30,
              //   ),
              //    Container(
              //       padding: EdgeInsets.symmetric(horizontal: 10.0),
              //       decoration: BoxDecoration(
              //           color: Colors.grey[100],
              //           borderRadius: BorderRadius.circular(15.0),
              //           border: Border.all(
              //               color: Colors.grey,
              //               style: BorderStyle.solid,
              //               width: 0.80),
              //           boxShadow: [
              //             BoxShadow(
              //               color: Colors.grey,
              //               offset: const Offset(
              //                 5.0,
              //                 5.0,
              //               ),
              //               blurRadius: 10.0,
              //               spreadRadius: 2.0,
              //             ),
              //           ]),
              //       child: DropdownButton<String>(
              //         underline: Container(
              //                 height: 0,
              //             color: Colors.black),
              //         hint: Text(yeardropdownValue),
              //         items: Year
              //             //<String>['A', 'B', 'C', 'D']
              //             .map((String value) {
              //           return DropdownMenuItem<String>(
              //             value: value,
              //             child: Text(value),
              //           );
              //         }).toList(),
              //         onChanged: (_) {},
              //       ),
              //     ),

              // ]),
              SizedBox(height: 20,),
              Center(
                child: Container(
                  // height: 300,
                  width: 350,
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 0.80),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ),
                      ]),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        // Text("Time",style: TextStyle(fontSize: 30),),
                        Text("${selectedDate.toLocal()}".split(' ')[0],style: TextStyle(fontSize: 30),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(child: Text("Program : ${widget.program}")),
                              Expanded(child: Text("Branch : ${widget.branch}")),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(child: Text("Year : ${widget.year}")),
                              Expanded(child: Text("Semester : ${Semester_}"))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(child: Text("Batch : ${widget.branch}")),
                              Expanded(child: Text("Subject : ${Subject_}"))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => AttendencePage(year: widget.year, program: widget.program, branch: widget.branch, subject: Subject_!, semester: Semester_!, selectedDate: selectedDate)),
                                      );
                                    },
                                    child: Text("Take Attendence")),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
