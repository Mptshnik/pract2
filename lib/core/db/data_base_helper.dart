import 'dart:io';

import 'package:pract2/domain/entity/role_entity.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import '../../common/data_base_request.dart';
import '../../data/model/role.dart';
import '../../data/model/user.dart';

class DataBaseHepler {
  static final DataBaseHepler instance = DataBaseHepler._instance();

  final int _version = 1;
  late final String _pathDB;
  late final Directory _appDocumentDirectory;
  late final Database database;

  DataBaseHepler._instance();

  void init() async {
    _appDocumentDirectory =
        await path_provider.getApplicationDocumentsDirectory();

    _pathDB = join(_appDocumentDirectory.path, "test.db");

    if (Platform.isLinux || Platform.isWindows || Platform.isMacOS) {
      // db connection
    } else {
      database = await openDatabase(
        _pathDB,
        version: _version,
        onCreate: (db, version) {},
      );
    }
  }

  Future<void> onUpdateTable(Database db) async {
    var tables = await db.rawQuery('SELECT name FROM sqlite_master');

    for (var element in DatabaseRequest.tableList.reversed) {
      if (tables.where((element) => element['name'] == element).isNotEmpty) {
        await db.execute(DatabaseRequest.deleteTable(element));
      }
    }
  }

  Future<void> onInitTable(Database db) async{
    try{
      for (var element in RoleEnum.values) {
        db.insert(DatabaseRequest.tableRole, Role(name: element.name).toMap());
      }
    }
    on DatabaseException catch (error)
    {
      
    }

    db.insert(DatabaseRequest.tableUser, User(login:'admon', idRole: RoleEnum.admin, password: 'qwerty').toMap());
  }

  Future<void> onCreateTable(Database db) async {
    for (var tableCreate in DatabaseRequest.tableCreateList) {
      await db.execute(tableCreate);
    }
  }

  Future<void> onDropDatabase() async {
    database.close();
    if (Platform.isLinux || Platform.isWindows || Platform.isMacOS) {
      // db connection
    } else {
      deleteDatabase(_pathDB);
    }
  }
}
