import 'package:pract2/common/data_base_request.dart';
import 'package:pract2/core/crypto/crypto.dart';
import 'package:pract2/core/db/data_base_helper.dart';
import 'package:pract2/core/exception/failure.dart';
import 'package:pract2/data/model/user.dart';
import 'package:pract2/domain/entity/role_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:pract2/domain/repository/auth_repositories.dart';
import 'package:sqflite/sqflite.dart';

class AuthRepositoryImpl implements AuthRepositories {
  final _db = DataBaseHepler.instance.database;

  String table = DatabaseRequest.tableUser;

  @override
  Future<Either<Failure, RoleEnum>> signIn(
      String login, String password) async {
    try {
      var user = await _db.query(table, where: 'login = ?', whereArgs: [login]);

      if (user.isEmpty) {
        return Left(AuthUserEmptyFailure());
      }

      if (user.first['password'] != Crypto.crypto(password)) {
        return Left(AuthPasswordFailure());
      }

      return Right(
        RoleEnum.values.firstWhere(
          (element) => element.id == user.first['id_role'],
        ),
      );
    } on DatabaseException catch (ex) {
      return Left(FailureImpl(ex.getResultCode()!).error);
    }
  }

  @override
  Future<Either<Failure, bool>> signUp(String login, String password) async {
    try {
      await _db.insert(
        table,
        User(login: login, idRole: RoleEnum.user, password: password).toMap(),
      );

      return Right(true);
    } on DatabaseException catch (ex) {
      return Left(FailureImpl(ex.getResultCode()!).error);
    }
  }
}
