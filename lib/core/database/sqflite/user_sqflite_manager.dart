import 'package:flutter/material.dart';
import 'package:tasneem_rosheta/core/database/sqflite/sqflite_manager.dart';

class UserSqfliteManager {
  const UserSqfliteManager._();

  static Future<bool> addNewUser({required UserModel user}) {
    var sqlManager = SqfliteManage();
    return sqlManager.create(
      table: sqlManager.tableUser,
      values: user.toJson(),
    );
  }

  static Future<List<UserModel>> read() async {
    var sqlManager = SqfliteManage();
    List<Map<String, Object?>> data = await sqlManager.read(
      tableName: sqlManager.tableUser,
    );
    return data.map((e) => UserModel.fromJson(e)).toList();
  }

  static Future<bool> update(UserModel user) {
    var sqlManager = SqfliteManage();
    return sqlManager.update(
      tableName: sqlManager.tableUser,
      values: user.toJson(),
      where: "${sqlManager.columnIdUsers} = ?",
      whereArgs: "${user.id}",
    );
  }

  static Future<bool> deleteById(UserModel user) {
    var sqlManager = SqfliteManage();
    return sqlManager.delete(
      table: sqlManager.tableUser,
      columnName: sqlManager.columnIdUsers,
      value: '${user.id}',
    );
  }

  static Future<bool> deleteByName(UserModel user) {
    var sqlManager = SqfliteManage();
    return sqlManager.delete(
      table: sqlManager.tableUser,
      columnName: sqlManager.columnNameUsers,
      value: user.name,
    );
  }

  static Future<bool> checkUserDataByNameAndPassword(UserModel user) async {
    var sqlManager = SqfliteManage();
    var data = await sqlManager.readByCondition(
      query:
          "SELECT * FROM ${sqlManager.tableUser} WHERE ${sqlManager.columnNameUsers} = ${user.name} AND ${sqlManager.columnPasswordUsers} =${user.password}",
    );
    return data.isEmpty ? false : true;
  }
}

class UserModel {
  final String name;
  final String email;
  final String password;
  final int id;

  const UserModel({
    required this.name,
    required this.email,
    required this.password,
    required this.id,
  });

  Map<String, dynamic> toJson() {
    var sqlManager = SqfliteManage();
    return {
      sqlManager.columnNameUsers: name,
      sqlManager.columnPasswordUsers: password,
      sqlManager.columnEmailUsers: email,
      sqlManager.columnIdUsers: id,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    var sqlManager = SqfliteManage();
    return UserModel(
      name: json[sqlManager.columnNameUsers],
      email: json[sqlManager.columnEmailUsers],
      password: json[sqlManager.columnPasswordUsers],
      id: json[sqlManager.columnIdUsers],
    );
  }
}

class TestLogin extends StatefulWidget {
  const TestLogin({super.key});

  @override
  State<TestLogin> createState() => _TestLoginState();
}

class _TestLoginState extends State<TestLogin> {
  late TextEditingController nameController = TextEditingController();

  late TextEditingController emailController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(controller: nameController),
          TextField(controller: passwordController),
          ElevatedButton(
            onPressed: () async {
              bool found =
                  await UserSqfliteManager.checkUserDataByNameAndPassword(
                    UserModel(
                      name: nameController.text.trim(),
                      email: '',
                      password: passwordController.text.trim(),
                      id: 0,
                    ),
                  );
              if (found) {
                // Navigator.of(context).poush
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("password and email not valid")),
                );
              }
            },
            child: Text("login"),
          ),
        ],
      ),
    );
  }
}
