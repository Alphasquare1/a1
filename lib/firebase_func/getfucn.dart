// import 'package:cloud_firestore/cloud_firestore.dart';
//
// // Function to get programs
// Future<List<String>> getProgramNames() async {
//   try {
//     QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('Programs').get();
//     List<String> programNames = [];
//     querySnapshot.docs.forEach((doc) {
//       programNames.add(doc.data()['programName']); // Assuming the field name is 'programName'
//     });
//     return programNames;
//   } catch (e) {
//     print('Error getting programs: $e');
//     return [];
//   }
// }
//
// // Function to get branches for a given program
// Future<List<String>> getBranchNames(String programId) async {
//   try {
//     QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('Branches').where('program', isEqualTo: FirebaseFirestore.instance.doc('Programs/$programId')).get();
//     List<String> branchNames = [];
//     querySnapshot.docs.forEach((doc) {
//       branchNames.add(doc.data()['branchName']); // Assuming the field name is 'branchName'
//     });
//     return branchNames;
//   } catch (e) {
//     print('Error getting branches: $e');
//     return [];
//   }
// }
//
// // Function to get years for a given program
// Future<List<int>> getYearNumbers(String programId) async {
//   try {
//     QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('Years').where('program', isEqualTo: FirebaseFirestore.instance.doc('Programs/$programId')).get();
//     List<int> yearNumbers = [];
//     querySnapshot.docs.forEach((doc) {
//       yearNumbers.add(doc.data()['yearNumber']); // Assuming the field name is 'yearNumber'
//     });
//     return yearNumbers;
//   } catch (e) {
//     print('Error getting years: $e');
//     return [];
//   }
// }
//
// // Function to get semesters for a given year
// Future<List<int>> getSemesterNumbers(String yearId) async {
//   try {
//     QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('Semesters').where('year', isEqualTo: FirebaseFirestore.instance.doc('Years/$yearId')).get();
//     List<int> semesterNumbers = [];
//     querySnapshot.docs.forEach((doc) {
//       semesterNumbers.add(doc.data()['semesterNumber']); // Assuming the field name is 'semesterNumber'
//     });
//     return semesterNumbers;
//   } catch (e) {
//     print('Error getting semesters: $e');
//     return [];
//   }
// }
//
// // Function to get sections for a given branch and semester
// Future<List<String>> getSectionNames(String branchId, String semesterId) async {
//   try {
//     QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('Sections').where('branch', isEqualTo: FirebaseFirestore.instance.doc('Branches/$branchId')).where('semester', isEqualTo: FirebaseFirestore.instance.doc('Semesters/$semesterId')).get();
//     List<String> sectionNames = [];
//     querySnapshot.docs.forEach((doc) {
//       sectionNames.add(doc.data()['sectionName']); // Assuming the field name is 'sectionName'
//     });
//     return sectionNames;
//   } catch (e) {
//     print('Error getting sections: $e');
//     return [];
//   }
// }
//
// // Function to get students for a given section
// Future<List<String>> getStudentNames(String sectionId) async {
//   try {
//     QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('Students').where('section', isEqualTo: FirebaseFirestore.instance.doc('Sections/$sectionId')).get();
//     List<String> studentNames = [];
//     querySnapshot.docs.forEach((doc) {
//       studentNames.add(doc.data()['studentName']); // Assuming the field name is 'studentName'
//     });
//     return studentNames;
//   } catch (e) {
//     print('Error getting students: $e');
//     return [];
//   }
// }
//
// // Function to get attendance records for a given section and date
// Future<List<String>> getAttendanceRecordNames(String sectionId, DateTime date) async {
//   try {
//     QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('Attendance').where('section', isEqualTo: FirebaseFirestore.instance.doc('Sections/$sectionId')).where('date', isEqualTo: date).get();
//     List<String> attendanceRecordNames = [];
//     querySnapshot.docs.forEach((doc) {
//       attendanceRecordNames.add(doc.data()['recordName']); // Assuming the field name is 'recordName'
//     });
//     return attendanceRecordNames;
//   } catch (e) {
//     print('Error getting attendance records: $e');
//     return [];
//   }
// }
