import 'package:flutter/material.dart';
import '../../screens/musicscreen.dart';

class hollywood extends StatefulWidget {
  @override
  _hollywoodState createState() => _hollywoodState();
}

class _hollywoodState extends State<hollywood> {
  List s = [
    {
      "songpic": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_WhcCpYehBs0tO6fl1fmYM4gxqc356M13Cg&usqp=CAU",
      "songname": "war",
    },
    {
      "songpic": "data:image/jpeg;base64,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",
      "songname": "tom cruise",
    },
    {
      "songpic": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqxmzKyHdmdcSUPHlIhE4Ch9AzuC48Cog5SA&usqp=CAU",
      "songname": "tom cruise",
    },
    {
      "songpic": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeEtFpsK1qEEZ_2ADVQV79LzgAoZC9h5plGQ&usqp=CAU",
      "songname": "heath ledger",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            itemCount: s.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => music(
                                songurl: s[index]["songpic"],
                              )),
                    );
                  },
                  child: Container(
                      width: 120,
                      margin: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(5.0)),
                      child: Image(
                        fit: BoxFit.cover,
                        image: NetworkImage(s[index]["songpic"]),
                      )));
            }));
  }

  Widget gethead() {
    return Container(
      child: Text("Hollywood",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          )),
    );
  }
}
