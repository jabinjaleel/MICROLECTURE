import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class StudentDB {
  StudentDB._();

  static final StudentDB sdb = StudentDB._();
  static Database database;

  Future <Database> get databaseFunction async => database = await initDB();

  initDB() async
  {
    Directory dir = await getApplicationDocumentsDirectory();
    String path = join(dir.path, "StudentDB.db");
    return await openDatabase(path, version: 1,
        onOpen: (db) {},
        onCreate: (Database db, int version) async
        {
          await db.execute("create table student(name text,email text)");
        });
  }

  Future <List<StudentDetail>> viewStudent() async
  {
    final db = await databaseFunction;
    List<Map> result = await db.query("student");
    return List.generate (result.length, (i)
    {
      return StudentDetail.fromMap(result[i]);
    });
  }


  insertDb(StudentDetail student) async
  {
    final db = await databaseFunction;
    var result = db.rawInsert("insert into student(name,email) values(?,?)",
        [student.name, student.email]);
    return result;
  }

}

class StudentDetail {
  final String name;
  final String email;

  StudentDetail( this.name, this.email);

  Map<String, dynamic> toMap() {
    return {"name": name, "email": email};
  }

  factory StudentDetail.fromMap(Map<dynamic, dynamic> data)
  {
    return StudentDetail(data['name'],data['email']);
  }
}