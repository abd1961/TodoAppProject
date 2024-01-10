import 'package:sqflite/sqflite.dart';
class DBHelper{


  static const String _dbName = 'todo.db';
  static const int _dbVersion = 1;


  static Future<void>createTable(Database database)async{

    await database.execute(""" CREATE TABLE items(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    title TEXT,
    description TEXT,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
    )
    """);

  }

  static Future<Database> db() async{
    return openDatabase(
      _dbName,
      version: _dbVersion,
      onCreate: (Database database,int databaseVersion){
        return createTable(database);
      }
    );
  }

  static Future<int> createItem(String?title,String description) async{
    final db = await DBHelper.db();

    final data = {'title':title,'description':description};
    final id = await db.insert('items', data,conflictAlgorithm: ConflictAlgorithm.replace);

    return id;
  }


  static Future<List<Map<String,dynamic>>>getItems() async{
    final db = await DBHelper.db();

   return await db.query('items',orderBy: 'id');

  }

  static Future<int>updateItems(int id,String?title, String? description) async{

    final db = await DBHelper.db();

    final data = {
      'title':title,
      'description':description,
    };

    final result = await db.update('items', data,where: 'id = ?',whereArgs: [id]);

    return result;

  }

  static Future<void>deleteItems(int id) async{
    final db = await DBHelper.db();

    try{
      await db.delete('items',where: 'id = ?',whereArgs: [id]);
    } catch(e){
      print('error: ${e.toString()}');
    }


  }



}