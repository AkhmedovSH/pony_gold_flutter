import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({Key? key}) : super(key: key);

  @override
  _SelectLanguageState createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  _setLanguage(lang) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("lang", 'ru');
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Выберите язык',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50)),
                child: Text('Русский'),
                onPressed: () {
                  _setLanguage('ru');
                },
              ),
            ),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    padding: EdgeInsets.symmetric(vertical: 20)),
                child: Text('Узбекский'),
                onPressed: () {
                  _setLanguage('uz');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
