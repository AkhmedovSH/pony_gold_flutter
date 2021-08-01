import 'package:flutter/material.dart';
import './auth/login.dart';
import './auth/register.dart';
import './auth/select_language.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SelectLanguage(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),
      },
    );
  }
}
