import 'package:flutter/material.dart';
import '../components/Home/recentlyplayed.dart';
import '../components/Home/yourplays.dart';
import '../components/Home/Tollywood.dart';
import '../components/Home/Hollywood.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.0, 0.0),
                colors: <Color>[
                  Color.fromRGBO(8, 114, 0, 2),
                  Color.fromRGBO(6, 0, 0, 2)
                ],
              ),
            ),
            child: SingleChildScrollView(
                child: Column(children: [
              yourplay(),
              tollywood(),
              hollywood(),
            ]))));
  }
}
