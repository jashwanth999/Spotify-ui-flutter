import 'package:flutter/material.dart';
import '../screens/Home.dart';
import '../screens/Search.dart';
import '../screens/Profile.dart';
import '../screens/Library.dart';

class MyHomePage extends StatefulWidget {
  final List<Page> _pages = [
    Page('Home', Icons.home),
    Page('search', Icons.search),
    Page('library', Icons.book),
    Page('profile', Icons.person_outline),
  ];

  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentPageIndex = 0;

  void _openPage(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  List routes = [
    Home(),
    Search(),
    Yourlib(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: routes[_currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentPageIndex,
        items: widget._pages
            .map((Page page) => BottomNavigationBarItem(
                  icon: Icon(page.iconData),
                  title: Text(page.title),
                ))
            .toList(),
        onTap: _openPage,
      ),
    );
  }
}

class Page {
  final String title;
  final IconData iconData;
  Page(this.title, this.iconData);
}
