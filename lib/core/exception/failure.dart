abstract class Failure {
  String errorMessage = '';
  int code = 0;
}

class FailureImpl extends Failure {
  final int getResultCode;

  FailureImpl(this.getResultCode);

  Failure get error {
    switch (getResultCode) {
      case 1555:
      case 2067:
        {
          return InsertFailure();
        }
      default:
        {
          return DefaultFailure();
        }
    }
  }
}

class DefaultFailure implements Failure {
  @override
  String errorMessage = 'Не известная ошибка';

  @override
  int code = 0;
}


class InsertFailure implements Failure {
  @override
  String errorMessage = 'Такие данные уже есть в базе данных';

  @override
  int code = 1555;
}

class AuthUserEmptyFailure implements Failure {
  @override
  String errorMessage = 'Такого пользователя нет в системе';

  @override
  int code = 1055;
}

class AuthPasswordFailure implements Failure {
  @override
  String errorMessage = 'Не верный пароль';

  @override
  int code = 1054;
}
