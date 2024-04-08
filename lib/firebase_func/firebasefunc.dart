// // import 'package:cloud_firestore/cloud_firestore.dart';
// //
// // // Add Program
// // Future<void> addProgram(String programName) async {
// //   try {
// //     await FirebaseFirestore.instance.collection('Programs').add({
// //       'name': programName,
// //     });
// //   } catch (e) {
// //     print('Error adding program: $e');
// //   }
// // }
// //
// // // Add Branch
// // Future<void> addBranch(String branchName, String programId) async {
// //   try {
// //     await FirebaseFirestore.instance.collection('Branches').add({
// //       'name': branchName,
// //       'program': FirebaseFirestore.instance.doc('Programs/$programId'),
// //     });
// //   } catch (e) {
// //     print('Error adding branch: $e');
// //   }
// // }
// //
// // // Add Year
// // Future<void> addYear(int yearNumber, String programId) async {
// //   try {
// //     await FirebaseFirestore.instance.collection('Years').add({
// //       'number': yearNumber,
// //       'program': FirebaseFirestore.instance.doc('Programs/$programId'),
// //     });
// //   } catch (e) {
// //     print('Error adding year: $e');
// //   }
// // }
// //
// // // Add Semester
// // Future<void> addSemester(int semesterNumber, String yearId) async {
// //   try {
// //     await FirebaseFirestore.instance.collection('Semesters').add({
// //       'number': semesterNumber,
// //       'year': FirebaseFirestore.instance.doc('Years/$yearId'),
// //     });
// //   } catch (e) {
// //     print('Error adding semester: $e');
// //   }
// // }
// //
// // // Add Section
// // Future<void> addSection(String sectionName, String branchId, String semesterId) async {
// //   try {
// //     await FirebaseFirestore.instance.collection('Sections').add({
// //       'name': sectionName,
// //       'branch': FirebaseFirestore.instance.doc('Branches/$branchId'),
// //       'semester': FirebaseFirestore.instance.doc('Semesters/$semesterId'),
// //     });
// //   } catch (e) {
// //     print('Error adding section: $e');
// //   }
// // }
// //
// // // Add Student
// // Future<void> addStudent(String studentName, String rollNumber, String sectionId) async {
// //   try {
// //     await FirebaseFirestore.instance.collection('Students').add({
// //       'name': studentName,
// //       'rollNumber': rollNumber,
// //       'section': FirebaseFirestore.instance.doc('Sections/$sectionId'),
// //     });
// //   } catch (e) {
// //     print('Error adding student: $e');
// //   }
// // }
// //
// // // Add Attendance Record
// // Future<void> addAttendanceRecord(DateTime dateTime, String sectionId, List<String> presentStudentIds) async {
// //   try {
// //     await FirebaseFirestore.instance.collection('Attendance').add({
// //       'dateTime': dateTime,
// //       'section': FirebaseFirestore.instance.doc('Sections/$sectionId'),
// //       'presentStudents': presentStudentIds,
// //     });
// //   } catch (e) {
// //     print('Error adding attendance record: $e');
// //   }
// // }
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// // Function to add program
// Future<void> addProgram(String programName) async {
//   try {
//     await FirebaseFirestore.instance.collection('Programs').add({
//       'name': programName,
//     });
//   } catch (e) {
//     print('Error adding program: $e');
//   }
// }
//
// // Function to add branch
// Future<void> addBranch(String branchName, String programId) async {
//   try {
//     await FirebaseFirestore.instance.collection('Branches').add({
//       'name': branchName,
//       'program': FirebaseFirestore.instance.doc('Programs/$programId'),
//     });
//   } catch (e) {
//     print('Error adding branch: $e');
//   }
// }
//
// // Function to add year
// Future<void> addYear(int yearNumber, String programId) async {
//   try {
//     await FirebaseFirestore.instance.collection('Years').add({
//       'number': yearNumber,
//       'program': FirebaseFirestore.instance.doc('Programs/$programId'),
//     });
//   } catch (e) {
//     print('Error adding year: $e');
//   }
// }
//
// // Function to add semester
// Future<void> addSemester(int semesterNumber, String yearId) async {
//   try {
//     await FirebaseFirestore.instance.collection('Semesters').add({
//       'number': semesterNumber,
//       'year': FirebaseFirestore.instance.doc('Years/$yearId'),
//     });
//   } catch (e) {
//     print('Error adding semester: $e');
//   }
// }
//
// // Function to add section
// Future<void> addSection(String sectionName, String branchId, String semesterId) async {
//   try {
//     await FirebaseFirestore.instance.collection('Sections').add({
//       'name': sectionName,
//       'branch': FirebaseFirestore.instance.doc('Branches/$branchId'),
//       'semester': FirebaseFirestore.instance.doc('Semesters/$semesterId'),
//     });
//   } catch (e) {
//     print('Error adding section: $e');
//   }
// }
//
// // Function to add student
// Future<void> addStudent(String studentName, String rollNumber, String sectionId) async {
//   try {
//     await FirebaseFirestore.instance.collection('Students').add({
//       'name': studentName,
//       'rollNumber': rollNumber,
//       'section': FirebaseFirestore.instance.doc('Sections/$sectionId'),
//     });
//   } catch (e) {
//     print('Error adding student: $e');
//   }
// }
//
// // Function to add attendance record
// Future<void> addAttendanceRecord(DateTime dateTime, String sectionId, List<String> presentStudentIds) async {
//   try {
//     await FirebaseFirestore.instance.collection('Attendance').add({
//       'dateTime': dateTime,
//       'section': FirebaseFirestore.instance.doc('Sections/$sectionId'),
//       'presentStudents': presentStudentIds,
//     });
//   } catch (e) {
//     print('Error adding attendance record: $e');
//   }
// }
//
