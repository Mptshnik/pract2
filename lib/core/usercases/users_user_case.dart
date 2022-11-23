import 'package:dartz/dartz.dart';

abstract class UsersUserCase<Type, Params> {
  Future<Either<Type, Params>> insert(Params params);
  Future<List<Params>> get(Params params);
  Future<List<Params>> getAll();
  Future<Either<Type, Params>> update(Params params);
  Future<Either<Type, bool>> delete(Params params);
}
