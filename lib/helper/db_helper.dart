import 'package:meals_app/model/meal_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  static final DBHelper _instance = DBHelper._internal();
  factory DBHelper() => _instance;
  DBHelper._internal();

  static Database? _db;

  Future<Database> get db async {
    if (_db != null) return _db!;
    _db = await _initDb();
    return _db!;
  }

  Future<Database> _initDb() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'meals_app.db');
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE meals (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        description TEXT,
        price REAL,
        image TEXT,
        rating REAL,
      )
    ''');
  }

  Future<int> insert(MealModel mealModel) async {
    Map<String, dynamic> meal = mealModel.toMap();
    final dbClient = await db;
    return await dbClient.insert('meals', meal);
  }

  Future<List<MealModel>> queryAll() async {
    final dbClient = await db;
    List<Map<String, dynamic>> mealsmap = await dbClient.query('meals');
    List<MealModel> meals =
        mealsmap.map((meal) => MealModel.fromMap(meal)).toList();
    return meals;
  }

  Future<int> delete(int id) async {
    final dbClient = await db;
    return await dbClient.delete('meals', where: 'id = ?', whereArgs: [id]);
  }
}
