import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.0, 0.0),
            colors: <Color>[
              Color.fromRGBO(145, 112, 157, 2),
              Color.fromRGBO(6, 0, 8, 2)
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(children: [
            gethead(),
            getfollowers(),
            getpublicplay(),
            getlist(),
            getlist(),
            getlist(),
          ]),
        ));
  }

  Widget getlist() {
    return Container(
        margin: EdgeInsets.only(
          top: 20,
        ),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              margin: EdgeInsets.only(
                left: 10,
              ),
              height: 50,
              width: 50,
              child: Image(
                fit: BoxFit.contain,
                image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              )),
          Container(
              margin: EdgeInsets.only(
                left: 20,
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("Bj",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                Text("0 followers",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ])),
        ]));
  }

  Widget getpublicplay() {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      alignment: Alignment.center,
      child: Text(
        "Public playlist",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget getfollowers() {
    return Container(
        margin: EdgeInsets.only(top: 30, left: 20, right: 20),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text("3",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
            Text("Playlist",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
          ])),
          Container(
              child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text("0",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
            Text("Followers",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
          ])),
          Container(
              child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text("3",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
            Text("Following",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
          ]))
        ]));
  }

  Widget gethead() {
    return Container(
        margin: EdgeInsets.only(
          top: 70,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
              alignment: Alignment.center,
              height: 120,
              width: 120,
              child: Text(
                "R",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(120),
              )),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              "raavan ",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.only(left: 20, right: 20, top: 3, bottom: 3),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(17), border: Border.all(color: Colors.white)),
            child: Text(
              "EDIT PROFILE",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          )
        ]));
  }
}
