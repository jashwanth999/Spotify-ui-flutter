import 'package:flutter/material.dart';
import '../../screens/Library.dart';

class createplayliState extends StatefulWidget {
  @override
  __createplayliStateState createState() => __createplayliStateState();
}

class __createplayliStateState extends State<createplayliState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment(0.5, 0.5),
                colors: <Color>[
                  Color.fromRGBO(242, 94, 94, 2),
                  Color.fromRGBO(6, 0, 0, 2)
                ],
              ),
            ),
            child: Stack(
            children: [
              Positioned(
                left: 10,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 30,
                  ),
                  backgroundColor: Colors.green,
                ),
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
                gethead(),
                Container(
                    height: 50,
                    padding: EdgeInsets.only(
                      top: 10,
                      left: 10,
                      bottom: 10,
                    ),
                    width: double.infinity,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none, hintText: 'create'),
                    )),
                createbutton(),
              ])
            ])));
  }

  Widget gethead() {
    return Container(
        margin: EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 20,
        ),
        child: Text("New Playlist .", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)));
  }

  Widget createbutton() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 50.0,
      child: RaisedButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff374ABE),
                  Color(0xff64B6FF)
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: 200.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              "Create",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
        ),
      ),
    );
  }
}
