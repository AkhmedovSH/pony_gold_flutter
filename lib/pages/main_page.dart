import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text('Pony Gold'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          height: 7120,
          color: Colors.blue[500],
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.close),
              hintText: 'Поиск...',
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.all(8),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'test',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: 'test2',
          ),
        ],
      ),
    );
  }
}
