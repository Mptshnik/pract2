import 'package:flutter/material.dart';
import 'package:pract2/common/url_page.dart';
import 'package:pract2/presentation/admin/admin_home.dart';
import 'package:pract2/presentation/auth/sign_in.dart';
import 'package:pract2/presentation/auth/sign_up.dart';
import 'package:pract2/presentation/user/user_home.dart';

import 'core/db/data_base_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DataBaseHepler.instance.init();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: UrlPage.singIn,
      routes: {
        UrlPage.admin: (context) => AdminHome(),
        UrlPage.user: (context) => UserHome(),
        UrlPage.singIn: (context) => SignIn(),
        UrlPage.signUp: (context) => SignUp()
      },
    );
  }
}
