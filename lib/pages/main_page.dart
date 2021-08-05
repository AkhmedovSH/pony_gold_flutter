import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List imageList = [
    "text1",
    "text3",
    "text3",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Pony Gold',
          style: TextStyle(fontSize: 17),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              height: 70,
              color: Colors.blue[500],
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.close),
                  hintText: 'Поиск...',
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(8),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: Row(
                children: [
                  Text(
                    "Категории",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: Row(
                children: [
                  Expanded(
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 150.0,
                        viewportFraction: 0.33,
                        enableInfiniteScroll: true,
                        initialPage: 0,
                      ),
                      items: [1, 2, 3, 4, 5].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                ),
                                child: Text(
                                  'text $i',
                                  style: TextStyle(fontSize: 16.0),
                                ));
                          },
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'test',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'test2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'test2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'test2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'test2',
          ),
        ],
      ),
    );
  }
}
