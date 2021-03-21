import 'package:flutter/material.dart';
//import 'package:slider/slider.dart';

class music extends StatefulWidget {
  @override
  String songurl;
  music({Key key, @required this.songurl}) : super(key: key);
  _musicState createState() => _musicState();
}

class _musicState extends State<music> {
  double _currentSliderValue = 20;
  var songpic = "data:image/jpeg;base64,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";
  var p = true;
  void s() {
    setState(() {
      p = !p;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment(0.6, 0.8),
                colors: <Color>[
                  Color.fromRGBO(145, 112, 157, 9),
                  Color.fromRGBO(6, 0, 8, 1)
                ],
              ),
            ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              gethead(),
              getcard(),
              getcardname(),
              getslider(),
              playicons()
            ])));
  }

  Widget gethead() {
    return Container(
        margin: EdgeInsets.only(top: 30, left: 10, right: 10),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 30,
                ),
              )),
          Text("king",
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
          Container(
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 30,
            ),
          )
        ]));
  }

  Widget getcard() {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 20, right: 20),
      width: double.infinity,
      height: 300,
      child: Image(
        fit: BoxFit.cover,
        image: NetworkImage(widget.songurl),
      ),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 5.0,
        ),
      ]),
    );
  }

  Widget getcardname() {
    return Container(
        margin: EdgeInsets.only(top: 30, left: 20, right: 20),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Hero",
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
          Container(
            child: Icon(
              Icons.settings,
              color: Colors.white,
              size: 30,
            ),
          )
        ]));
  }

  Widget playicons() {
    return Container(
        margin: EdgeInsets.only(top: 15, left: 20, right: 20),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            child: Icon(
              Icons.shuffle,
              color: Colors.white,
              size: 35,
            ),
          ),
          Container(
            child: Icon(
              Icons.chevron_left,
              color: Colors.white,
              size: 35,
            ),
          ),
          GestureDetector(
            onTap: () {
              s();
            },
            child: Container(
              child: Icon(
                !p ? Icons.pause_circle_filled : Icons.play_circle_filled,
                color: Colors.white,
                size: 60,
              ),
            ),
          ),
          Container(
            child: Icon(
              Icons.chevron_right,
              color: Colors.white,
              size: 35,
            ),
          ),
          Container(
            child: Icon(
              Icons.loop,
              color: Colors.white,
              size: 35,
            ),
          ),
        ]));
  }

  Widget getslider() {
    return Slider(
      value: _currentSliderValue,
      min: 0,
      max: 100,
      divisions: 100,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    );
  }
}
