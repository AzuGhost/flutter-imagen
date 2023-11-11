import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('PADORU'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/padoru.gif"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Image.asset(
              'images/OIP.jpg',
              width: 300,
              height: 300,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.add,
                    color: Color.fromARGB(255, 236, 67, 81),
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Color.fromARGB(255, 240, 181, 181),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 112, 189, 234),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Calendar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.watch_later),
              label: 'Abouth me',
            ),
          ],
        ),
      ),
    );
  }
}
