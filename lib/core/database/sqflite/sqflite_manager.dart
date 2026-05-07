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

  _closeDb(Database? db) {
    if (db?.isOpen ?? false) {
      db?.close();
    }
  }

  //////////////////////////////////////////////
  @override
  Future<List<Map<String, Object?>>> read({required String tableName}) async {
    Database? db;
    List<Map<String, Object?>> data = [];
    try {
      // open db
      db = await createDb();
      //query
      data = await db.rawQuery('SELECT * FROM $tableName');

      // close db
    } catch (e) {
      // close db
      print("error while deleting $e");
    } finally {
      _closeDb(db);
    }
    return data;
  }

  @override
  Future<List<Map<String, Object?>>> readByCondition({
    required String query,
  }) async {
    Database? db;
    List<Map<String, Object?>> data = [];
    try {
      // open db
      db = await createDb();
      //query
      data = await db.rawQuery(query);

      // close db
    } catch (e) {
      // close db
      print("error while query $e");
    } finally {
      _closeDb(db);
    }
    return data;
  }

  @override
  Future<bool> update({
    required String tableName,
    required Map<String, Object?> values,
    required String where,
    required String whereArgs,
  }) async {
    Database? db;
    int updated = -1;
    try {
      // open db
      db = await createDb();

      //query
      updated = await db.update(
        tableName,
        values,
        where: "$where = ?",
        whereArgs: [whereArgs],
      );

      // close db
    } catch (e) {
      // close db
      print("error while update $e");
      updated = -1;
    } finally {
      _closeDb(db);
    }
    return updated > 0 ? true : false;
  }
}
