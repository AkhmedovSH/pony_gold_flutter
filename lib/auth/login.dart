import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final userPhone = TextEditingController();
  final userPassword = TextEditingController();
  bool showPassword = false;

  _signIn() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
    );
    final responseJson = jsonDecode(response.body);

    if (responseJson['userId'] == 1 &&
        userPhone.text == '1' &&
        userPassword.text == '1') {
      print('success');
      //Navigator.of(context).pushNamed('/index');
      Navigator.pushReplacementNamed(context, '/main_page');
    } else {
      print('fail');
    }
  }

  void dispose() {
    // clear memory and listeners of textField
    userPhone.dispose();
    userPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(20),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Text(
                  'Вход',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: TextField(
                    controller: userPhone,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Номер телефона или E-mail')),
              ),
              Container(
                child: TextField(
                  obscureText: showPassword,
                  controller: userPassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Пароль',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye_outlined),
                      onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50)),
                  child: Text('Войти'),
                  onPressed: () {
                    _signIn();
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 30, 0, 60),
                padding: EdgeInsets.only(
                  bottom: 5,
                ),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.grey,
                  width: 1.0, // Underline thickness
                ))),
                child: Text(
                  'Забыли пароль?',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                child: Text('Регистрация',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.green[500],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
