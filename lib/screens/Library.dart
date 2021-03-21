import 'package:flutter/material.dart';
import '../components/yourlibrary/createplaylist.dart';

class Yourlib extends StatefulWidget {
  @override
  _YourlibState createState() => _YourlibState();
}

class _YourlibState extends State<Yourlib> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          gethead(),
          gettap(),
          getplaylist()
        ]));
  }

  Widget gethead() {
    return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20,
        ),
        child: Text("Music player", style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold)));
  }

  Widget gettap() {
    return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
        ),
        child: Text("Playlist ", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)));
  }

  Widget getplaylist() {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      child: Row(children: [
        GestureDetector(
            onTap: () {
              /*db.collection("songs").add({
                "songname": "king",
              });*/
            },
            child: Container(
              height: 60,
              width: 60,
              child: Container(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
            )),
        GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => createplayliState()),
              );
            },
            child: Container(
                margin: EdgeInsets.only(
                  left: 20,
                ),
                child: Text("Create playlist ", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)))),
      ]),
    );
  }
}
