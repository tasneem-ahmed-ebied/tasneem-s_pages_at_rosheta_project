abstract class CRUD {
  Future<bool>create({required String table , required Map<String,dynamic > values});
  Future<void> read();
  Future<void> update();
  Future<bool> delete({required String table , required String columnName , required String value});
}