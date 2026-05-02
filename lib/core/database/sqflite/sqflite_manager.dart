import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqfliteManager {
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
  void _init() async {
    String dbName = "user.db";
    //1 Get a location using getDatabasesPath
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, dbName);
    //2 open db
    openDatabase(path,
        version: versionDb,
        onCreate: (db, version) async{
       await  db.execute("CREATE TABLE $tableUser"
            " ($columnIdUsers Integer PRIMARY KEY AUTOINCREMENT ,"
            " $columnNameUsers VARCHAR(20) ,"
            " $columnEmailUsers VARCHAR(100) UNIQUE,"
            " $columnPasswordUsers VARCHAR(100)  );"
            "");
       await  db.execute("CREATE TABLE $tableDoctor"
           " ($columnIdDoctors INTEGER PRIMARY KEY AUTOINCREMENT ,"
           " $columnNameDoctors VARCHAR(20) ,"
           " $columnEmailDoctors VARCHAR(100) UNIQUE,"
           " $columnLocationDoctors VARCHAR(100),"
           " $columnImageDoctors VARCHAR(30),"
           " $columnCvDoctors VARCHAR(100),"
           "$specialityDoctor VARCHAR(30) "
           ");"
           "");



        });
  }
}
