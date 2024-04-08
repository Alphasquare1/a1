
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;

  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    String path = join(await getDatabasesPath(), 'college.db');
    return await openDatabase(path, version: 1, onCreate: _createDatabase);
  }

  Future<void> _createDatabase(Database db, int version) async {
    // Create student_table
    await db.execute('''
      CREATE TABLE student_table (
        student_id INTEGER PRIMARY KEY,
        student_name TEXT,
        program TEXT,
        branch TEXT,
        year INTEGER,
        semester INTEGER
      )
    ''');

    // Create subject_table
    await db.execute('''
      CREATE TABLE subject_table (
        subject_id INTEGER PRIMARY KEY,
        subject_name TEXT,
        program TEXT,
        branch TEXT,
        year INTEGER,
        semester INTEGER
      )
    ''');

    // Create allocation_table
    await db.execute('''
      CREATE TABLE allocation_table (
        allocation_id INTEGER PRIMARY KEY,
        student_id INTEGER,
        subject_id INTEGER,
        FOREIGN KEY(student_id) REFERENCES student_table(student_id),
        FOREIGN KEY(subject_id) REFERENCES subject_table(subject_id)
      )
    ''');
    await db.execute('''
      CREATE TABLE attendance_table (
        attendance_id INTEGER PRIMARY KEY,
        date TEXT,
        allocation_id INTEGER,
        status INTEGER,
        FOREIGN KEY(allocation_id) REFERENCES allocation_table(allocation_id)
      )
    ''');


    // Insert initial data into student_table
    List<Map<String, dynamic>> students = [
      {
        'student_name': 'John Doe',
        'program': 'B.Tech',
        'branch': 'Computer Science',
        'year': 1,
        'semester': 2,
      },
      {
        'student_name': 'Jane Smith',
        'program': 'B.Tech',
        'branch': 'Computer Science',
        'year': 1,
        'semester': 2,
      }, {
        'student_name': 'yash',
        'program': 'B.Tech',
        'branch': 'Computer Science',
        'year': 2,
        'semester': 4,
      }, {
        'student_name': 'Smith',
        'program': 'B.Tech',
        'branch': 'Computer Science',
        'year': 2,
        'semester': 4,
      }, {
        'student_name': 'Jaith',
        'program': 'B.Tech',
        'branch': 'Computer Science',
        'year': 3,
        'semester': 6,
      }, {
        'student_name': 'widith',
        'program': 'B.Tech',
        'branch': 'Computer Science',
        'year': 4,
        'semester': 8,
      }, {
        'student_name': 'midith',
        'program': 'B.Tech',
        'branch': 'Computer Science',
        'year': 4,
        'semester': 8,
      },
      {
        'student_name': 'mahesh',
        'program': 'B.Tech',
        'branch': 'Information Technology',
        'year': 1,
        'semester': 2,
      }, {
        'student_name': 'suhesh',
        'program': 'B.Tech',
        'branch': 'Information Technology',
        'year': 1,
        'semester': 2,
      }, {
        'student_name': 'rajesh',
        'program': 'B.Tech',
        'branch': 'Information Technology',
        'year': 2,
        'semester': 4,
      }, {
        'student_name': 'kamles',
        'program': 'B.Tech',
        'branch': 'Information Technology',
        'year': 2,
        'semester': 4,
      }, {
        'student_name': 'brijesh',
        'program': 'B.Tech',
        'branch': 'Information Technology',
        'year': 2,
        'semester': 4,
      }, {
        'student_name': 'lokesh',
        'program': 'B.Tech',
        'branch': 'Information Technology',
        'year': 3,
        'semester': 6,
      }, {
        'student_name': 'jay',
        'program': 'B.Tech',
        'branch': 'Information Technology',
        'year': 3,
        'semester': 6,
      }, {
        'student_name': 'yash',
        'program': 'B.Tech',
        'branch': 'Information Technology',
        'year': 4,
        'semester': 8,
      }, {
        'student_name': 'divya',
        'program': 'B.Tech',
        'branch': 'Information Technology',
        'year': 4,
        'semester': 8,
      }, {
        'student_name': 'jaish',
        'program': 'B.Tech',
        'branch': 'Information Technology',
        'year': 2,
        'semester': 4,
      }, {
        'student_name': 'mahesh',
        'program': 'B.Tech',
        'branch': 'Information Technology',
        'year': 1,
        'semester': 2,
      }, {
        'student_name': 'mahesh',
        'program': 'B.Tech',
        'branch': 'Information Technology',
        'year': 2,
        'semester': 4,
      },
      {
        'student_name': 'Alice Johnson',
        'program': 'BCA',
        'branch': 'Web Development',
        'year': 1,
        'semester': 2,
      }, {
        'student_name': 'Alice steweerd',
        'program': 'BCA',
        'branch': 'Web Development',
        'year': 1,
        'semester': 2,
      }, {
        'student_name': 'John',
        'program': 'BCA',
        'branch': 'Web Development',
        'year': 2,
        'semester': 4,
      }, {
        'student_name': 'Alison',
        'program': 'BCA',
        'branch': 'Web Development',
        'year': 2,
        'semester': 4,
      }, {
        'student_name': 'bakinson',
        'program': 'BCA',
        'branch': 'Web Development',
        'year': 3,
        'semester': 6,
      }, {
        'student_name': 'Alison carter',
        'program': 'BCA',
        'branch': 'Web Development',
        'year': 3,
        'semester': 6,
      }, {
        'student_name': 'micah',
        'program': 'BCA',
        'branch': 'Web Development',
        'year': 4,
        'semester': 8,
      }, {
        'student_name': 'yashasvi',
        'program': 'BCA',
        'branch': 'Web Development',
        'year': 2,
        'semester': 4,
      },
      {
        'student_name': 'Bob Williams',
        'program': 'BCA',
        'branch': 'Mobile Application Development',
        'year': 1,
        'semester': 2,
      },
      {
        'student_name': 'William',
        'program': 'BCA',
        'branch': 'Mobile Application Development',
        'year': 1,
        'semester': 2,
      }, {
        'student_name': 'Bob',
        'program': 'BCA',
        'branch': 'Mobile Application Development',
        'year': 2,
        'semester': 4,
      }, {
        'student_name': 'jerry',
        'program': 'BCA',
        'branch': 'Mobile Application Development',
        'year': 3,
        'semester': 6,
      }, {
        'student_name': 'stewerd',
        'program': 'BCA',
        'branch': 'Mobile Application Development',
        'year': 4,
        'semester': 8,
      }
    ];

    for (var student in students) {
      await db.insert('student_table', student);
    }

    // Insert initial data into subject_table
    List<Map<String, dynamic>> subjects = [
      {
        'subject_name': 'Data Structures',
        'program': 'B.Tech',
        'branch': 'Computer Science',
        'year': 1,
        'semester': 2,
      },
      {
        'subject_name': 'Digital Electronics',
        'program': 'B.Tech',
        'branch': 'Information Technology',
        'year': 1,
        'semester': 2,
      },
      {
        'subject_name': 'Web Programming',
        'program': 'BCA',
        'branch': 'Web Development',
        'year': 1,
        'semester': 2,
      },
      {
        'subject_name': 'Mobile App Development',
        'program': 'BCA',
        'branch': 'Mobile Application Development',
        'year': 1,
        'semester': 2,
      }, {
        'subject_name': 'BDA',
        'program': 'B.Tech',
        'branch': 'Computer Science',
        'year': 2,
        'semester': 4,
      },
      {
        'subject_name': 'C Programming',
        'program': 'B.Tech',
        'branch': 'Information Technology',
        'year': 2,
        'semester': 4,
      },
      {
        'subject_name': 'Computation',
        'program': 'BCA',
        'branch': 'Web Development',
        'year': 2,
        'semester': 4,
      },
      {
        'subject_name': 'Jerry model',
        'program': 'BCA',
        'branch': 'Mobile Application Development',
        'year': 2,
        'semester': 4,
      }, {
        'subject_name': 'DWDM',
        'program': 'B.Tech',
        'branch': 'Computer Science',
        'year': 3,
        'semester': 6,
      },
      {
        'subject_name': 'E-commerce',
        'program': 'B.Tech',
        'branch': 'Information Technology',
        'year': 3,
        'semester': 6,
      },
      {
        'subject_name': 'Python',
        'program': 'BCA',
        'branch': 'Web Development',
        'year': 3,
        'semester': 6,
      },
      {
        'subject_name': 'C++',
        'program': 'BCA',
        'branch': 'Mobile Application Development',
        'year': 3,
        'semester': 6,
      }, {
        'subject_name': 'Project',
        'program': 'B.Tech',
        'branch': 'Computer Science',
        'year': 4,
        'semester': 8,
      },
      {
        'subject_name': 'Project',
        'program': 'B.Tech',
        'branch': 'Information Technology',
        'year': 4,
        'semester': 8,
      },
      {
        'subject_name': 'MERN',
        'program': 'BCA',
        'branch': 'Web Development',
        'year': 4,
        'semester': 8,
      },
      {
        'subject_name': 'Android',
        'program': 'BCA',
        'branch': 'Mobile Application Development',
        'year': 4,
        'semester': 8,
      },
    ];

    for (var subject in subjects) {
      await db.insert('subject_table', subject);
    }
    //await _updateAllocations(db);

    Future<void> _updateAllocations(Database db) async {
      String query = '''
      INSERT INTO allocation_table (student_id, subject_id)
      SELECT s.student_id, sub.subject_id
      FROM student_table s
      INNER JOIN subject_table sub
      ON s.program = sub.program
      AND s.branch = sub.branch
      AND s.year = sub.year
      AND s.semester = sub.semester
    ''';

      await db.transaction((txn) async {
        await txn.execute(query);
      });
      Future<void> insertAttendanceRecord(String date, int allocationId,
          int status) async {
        final db = await database;
        await db.insert('attendance_table', {
          'date': date,
          'allocation_id': allocationId,
          'status': status,
        });
      }
      await _updateAllocations(db);

      // Insert initial data into allocation_table
      // Linking students to subjects
    }

    Future<void> insertAttendanceRecord(String date, int allocationId,
        int status) async {
      final db = await database;
      await db.insert('attendance_table', {
        'date': date,
        'allocation_id': allocationId,
        'status': status,
      });
      Future<void> updateAttendanceStatus(
          String date, int allocationId, int newStatus) async {
        final db = await database;
        await db.update(
          'attendance_table',
          {'status': newStatus},
          where: 'date = ? AND allocation_id = ?',
          whereArgs: [date, allocationId],
        );
    }
  }
  }
}