abstract class DatabaseRequest
{
  static const String tableRole = 'role';
  static const String tableUser = 'user';
  static String deleteTable(String table) => 'DROP TABLE $table'; 

  static const List<String> tableList = [tableRole, tableUser];
  static const List<String> tableCreateList = [_createTableRole, _createTableRole];

  static const String _createTableRole =
      'CREATE TABLE "$tableRole" ("id" INTEGER,"role" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableUsers =
      'CREATE TABLE "$tableUser" ("id"	INTEGER,"login"	TEXT NOT NULL UNIQUE,"password"	TEXT NOT NULL,"id_role"	INTEGER,FOREIGN KEY("id_role") REFERENCES "Role"("id") ON DELETE CASCADE,PRIMARY KEY("id" AUTOINCREMENT) )';
  
}