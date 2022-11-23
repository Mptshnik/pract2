import 'dart:convert';

import 'package:crypto/crypto.dart';

abstract class Crypto {
  static String crypto(String password) {
    var bytes = utf8.encode(password);
    return sha512.convert(bytes).toString();
  }
}
