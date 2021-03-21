import 'package:flutter/material.dart';
import '../../screens/musicscreen.dart';
import 'recentlyplayedlist.dart';
/*import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';*/

class recentplayed extends StatefulWidget {
  @override
  _recentplayedState createState() => _recentplayedState();
}

class _recentplayedState extends State<recentplayed> {
  //List songs;
  //final db = Firestore.instance;
  /*QuerySnapshot querySnapshot;
  void initState() {
    super.initState();
    getdata().then((results) {
      setState(() {
        querySnapshot = results;
      });
    });
  }

  getdata() async {
    try {
      return db.collection('songs').getDocuments();
    } catch (e) {
      print(e);
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 30, left: 10, right: 10),
        child: Column(children: [
          gethead(),
          getlist(),
        ]));
  }

  Widget getlist() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        height: 120.0,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => music()),
                    );
                  },
                  child: recentlist());
            }));
  }

  Widget gethead() {
    return Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          child: Text("Recently Played",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ))),
      Positioned(
        child: Container(
            child: Row(children: [
          Container(
            padding: EdgeInsets.only(
              right: 20,
            ),
            child: Icon(
              Icons.timelapse,
              color: Colors.white,
              size: 30,
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 5.0),
            child: Icon(
              Icons.settings,
              color: Colors.white,
              size: 30,
            ),
          )
        ])),
      )
    ]));
  }
}
