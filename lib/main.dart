import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './auth/login.dart';
import './auth/register.dart';
import './auth/select_language.dart';
import 'pages/main_page.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  void initState() {
    super.initState();
    _getLanguage();
  }

  _getLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.getString('lang');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SelectLanguage(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/main_page': (context) => MainPage(),
      },
    );
  }
}
