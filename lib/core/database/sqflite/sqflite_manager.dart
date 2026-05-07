import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'crud.dart';

class SqfliteManage extends CRUD {
  int versionDb = 1;

  ///////////////////////////
  String tableUser = "users";
  String columnIdUsers = "id_users";
  String columnNameUsers = "name_doctors";
  String columnEmailUsers = "email_doctors";
  String columnPasswordUsers = "password_users";

  /////////////////////////////////////
  String tableDoctor = "doctors";
  String columnIdDoctors = "id_doctors";
  String columnNameDoctors = "name_doctor";
  String columnEmailDoctors = "email_doctors";
  String columnLocationDoctors = "location_table";
  String columnImageDoctors = "image_doctor";
  String columnCvDoctors = "cv_doctors";
  String specialityDoctor = "speciality_doctor";

  //////////////////////////////////////
  Future<Database> createDb() async {
    String dbName = "user.db";
    //1 Get a location using getDatabasesPath
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, dbName);
    //2 open db
    Database db = await openDatabase(
      path,
      version: versionDb,
      //! foreign key won't work without this lines
      onConfigure: _onConfigureDB,
      onCreate: _onCreateDB,
    );
    return db;
  }

  void _openDb() {
    createDb();
  }

  FutureOr<void> _onConfigureDB(db) async {
    await db.execute("PRAGMA foreign_keys = ON");
  }

  FutureOr<void> _onCreateDB(db, version) async {
    await db.execute(
      "CREATE TABLE $tableUser"
      " ($columnIdUsers Integer PRIMARY KEY AUTOINCREMENT ,"
      " $columnNameUsers VARCHAR(20) ,"
      " $columnEmailUsers VARCHAR(100) UNIQUE,"
      " $columnPasswordUsers VARCHAR(100)"
      " ON DELETE CASCADE "
      "ON UPDATE CASCADE  );"
      "",
    );
    await db.execute(
      "CREATE TABLE $tableDoctor"
      " ($columnIdDoctors INTEGER PRIMARY KEY AUTOINCREMENT ,"
      " $columnNameDoctors VARCHAR(20) ,"
      " $columnEmailDoctors VARCHAR(100) UNIQUE,"
      " $columnLocationDoctors VARCHAR(100),"
      " $columnImageDoctors VARCHAR(30),"
      " $columnCvDoctors VARCHAR(100),"
      "$specialityDoctor VARCHAR(30)"
      " ON DELETE CASCADE "
      "ON UPDATE CASCADE "
      ");"
      "",
    );
  }

  @override
  Future<bool> create({
    required String table,
    required Map<String, dynamic> values,
  }) async {
    Database? db;
    int inserted = -1;
    try {
      // open db
      db = await createDb();
      //query
      inserted = await db.insert(table, values);
      // close db
      db.close();
      return inserted > 0 ? true : false;
    } catch (e) {
      // close db
      print("error is $inserted");
      inserted = -1;
    } finally {
      // if(db!= null ){
      //   if(db.isOpen){
      //     db.close();
      //   }
      // }
      if (db?.isOpen ?? false) {
        db?.close();
      }
    }
    return inserted > 0 ? true : false;
  }

  ////////////////////////////////////
  @override
  Future<bool> delete({
    required String table,
    required String columnName,
    required String value,
  }) async {
    Database? db;
    int deleted = -1;
    try {
      // open db
      db = await createDb();
      //query
      deleted = await db.delete(
        table,
        where: "'$columnName = ?'",
        whereArgs: [value],
      );
      // close db
    } catch (e) {
      // close db
      print("error while deleting $deleted");
      deleted = -1;
    } finally {
      // if(db!= null ){
      //   if(db.isOpen){
      //     db.close();
      //   }
      // }
      if (db?.isOpen ?? false) {
        db?.close();
      }
    }
    return deleted > 0 ? true : false;
  }

  //////////////////////////////////////////////
  @override
  Future<void> read() {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  Future<void> update() {
    // TODO: implement update
    throw UnimplementedError();
  }
}
