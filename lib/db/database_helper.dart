import 'localDB/my_database.dart';

class DatabaseHelper {
  AppDatabase _database;
  static final DatabaseHelper _singleton = DatabaseHelper._internal();

  factory DatabaseHelper() {
    return _singleton;
  }

  AppDatabase getDb() {
    if (_database == null) {
      _database = AppDatabase();
    }
    return _database;
  }

  void closeDb() {
    if (_database != null) {
      _database.close();
    }
  }

  DatabaseHelper._internal();
}
