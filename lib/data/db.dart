import 'dart:async';
import 'dart:io' as io;
import 'package:i_speak/model/profile.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DB {
  static Database? _db;

  static const String? DBName = 'dbName.db';
  static const String? TableUserProfile = 'tableUserProfile';
  static const String? ID = 'id';
  static const String? ImageName = 'imageName';
  static const String? ImageUrl = 'imageUrl';
  static const String? Fullname = 'fullname';
  static const String? Post = 'post';
  static const String? CountPost = 'countPost';
  static const String? TotalFollowers = 'totalFollowers';
  static const String? TotalFollowing = 'totalFollowing';

  Future<Database> get db async {
    if (null != _db) {
      return _db!;
    }
    _db = await initDB();
    return _db!;
  }

  initDB() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String? path = join(documentsDirectory.path, DBName);
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db.execute('''CREATE TABLE $TableUserProfile(
          $ID INTEGER, 
          $ImageName TEXT, 
          $ImageUrl TEXT,
          $Fullname TEXT,
          $Post TEXT,
          $CountPost TEXT,
          $TotalFollowers TEXT,
          $TotalFollowing TEXT,)''');
  }

  Future<Profile> save(Profile profile) async {
    var dbClient = await db;
    profile.id = await dbClient.insert(TableUserProfile!, profile.toMap());
    return profile;
  }

  Future<List<Profile>> getPhotos() async {
    var dbClient = await db;
    List<Map> maps = await dbClient.query(TableUserProfile!, columns: [
      ID!,
      ImageName!,
      ImageUrl!,
      Fullname!,
      Post!,
      CountPost!,
      TotalFollowers!,
      TotalFollowing!,
    ]);
    List<Profile> profiles = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        profiles.add(Profile.fromMap(maps[i]));
      }
    }
    return profiles;
  }

  Future close() async {
    var dbClient = await db;
    dbClient.close();
  }
}
