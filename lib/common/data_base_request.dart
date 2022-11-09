abstract class DatabaseRequest {
  static const String tableRole = 'role';
  static const String tableUser = 'user';
  static const String tableGender = 'gender';
  static const String tableEmployee = 'employee';
  static const String tableItemCategory = 'item_category';
  static const String tableItem = 'item';
  static const String tableCustomer = 'customer';
  static const String tableOrder = 'order';
  static const String tableOrderItem = 'order_item';

  static String deleteTable(String table) => 'DROP TABLE $table';

  static const List<String> tableList = [
    tableRole,
    tableUser,
    tableGender,
    tableEmployee,
    tableItemCategory,
    tableItem,
    tableCustomer,
    tableOrder,
    tableOrderItem
  ];

  static const List<String> tableCreateList = [
    _createTableRole,
    _createTableUsers,
    _createTableGender,
    _createTableEmployee,
    _createTableItemCategory,
    _createTableItem,
    _createTableCustomer,
    _createTableOrder,
    _createTableOrderItem
  ];

  static const String _createTableRole =
      'CREATE TABLE "$tableRole" ("id" INTEGER,"name" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableUsers =
      'CREATE TABLE "$tableUser" ("id"	INTEGER,"login"	TEXT NOT NULL UNIQUE,"password"	TEXT NOT NULL,"id_role"	INTEGER,FOREIGN KEY("id_role") REFERENCES "Role"("id") ON DELETE CASCADE,PRIMARY KEY("id" AUTOINCREMENT) )';

  static const String _createTableGender =
      'CREATE TABLE "$tableGender" ("id"	INTEGER,"name"	TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableEmployee =
      'CREATE TABLE "$tableEmployee" ("id"	INTEGER,"idGender" INTEGER,"idUser" INTEGER, "lastName"	TEXT NOT NULL, "firstName" TEXT NOT NULL, "middleName" TEXT NOT NULL, "passportNumber" TEXT NOT NULL, "age" INTEGER NOT NULL, FOREIGN KEY("idGender") REFERENCES "gender"("id") ON DELETE SET NULL, FOREIGN KEY("idUser") REFERENCES "user"("id") ON DELETE SET NULL, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableItemCategory =
      'CREATE TABLE "$tableItemCategory" ("id" INTEGER,"name" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableItem =
      'CREATE TABLE "$tableItem" ("id" INTEGER,"idItemCategory" INTEGER,"name" TEXT NOT NULL UNIQUE,"price" REAL NOT NULL, "description" TEXT NOT NULL,"producerName" TEXT NOT NULL,"count" INTEGER NOT NULL, FOREIGN KEY("idItemCategory") REFERENCES "item_category"("id") ON DELETE SET NULL, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableCustomer =
      'CREATE TABLE "$tableCustomer" ("id" INTEGER,"lastName" TEXT NOT NULL,"firstName" TEXT NOT NULL ,"phoneNumber" TEXT NOT NULL,"email" TEXT NOT NULL UNIQUE,"idUser" INTEGER, FOREIGN KEY("idUser") REFERENCES "user"("id") ON DELETE SET NULL, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableOrder =
      'CREATE TABLE "$tableOrder" ("id" INTEGER,"number" TEXT NOT NULL UNIQUE,"description" TEXT NOT NULL,"idCustomer" INTEGER, FOREIGN KEY("idCustomer") REFERENCES "customer"("id") ON DELETE SET NULL, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableOrderItem =
      'CREATE TABLE "$tableOrderItem" ("id" INTEGER,"itemsCount" INTEGER NOT NULL,"idItem" INTEGER, "idOrder" INTEGER, FOREIGN KEY("idItem") REFERENCES "item"("id") ON DELETE SET NULL, FOREIGN KEY("idOrder") REFERENCES "order"("id") ON DELETE SET NULL,  PRIMARY KEY("id" AUTOINCREMENT))';
}
