abstract class CRUD {
  Future<bool> create({
    required String table,
    required Map<String, dynamic> values,
  });

  Future<List<Map<String, Object?>>> read({required String tableName});

  Future<bool> update({
    required String tableName,
    required Map<String, Object?> values,
    required String where,
    required String whereArgs,
  });

  Future<bool> delete({
    required String table,
    required String columnName,
    required String value,
  });
}
