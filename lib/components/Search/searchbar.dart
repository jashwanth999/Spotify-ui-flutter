import 'package:flutter/material.dart';

class searchbar extends StatefulWidget {
  @override
  _searchbarState createState() => _searchbarState();
}

class _searchbarState extends State<searchbar> {
  @override
  List s = [
    {
      "name": "top",
      "color": Colors.red,
    },
    {
      "name": "Bollywood",
      "color": Colors.blue,
    },
    {
      "name": "Folk",
      "color": Colors.green,
    },
    {
      "name": "Hip Hop",
      "color": Colors.yellow,
    },
  ];
  List browse = [
    {
      "name": "top",
      "color": Colors.red,
    },
    {
      "name": "Bollywood",
      "color": Colors.blue,
    },
    {
      "name": "Folk",
      "color": Colors.green,
    },
    {
      "name": "Hip Hop",
      "color": Colors.yellow,
    },
    {
      "name": "top",
      "color": Colors.red,
    },
    {
      "name": "Bollywood",
      "color": Colors.blue,
    },
    {
      "name": "Folk",
      "color": Colors.green,
    },
    {
      "name": "Hip Hop",
      "color": Colors.yellow,
    },
  ];
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          gethead(),
          getsearchbar(),
          gettopgeneresname(),
          gettopgeneres(),
          getbrowseall(),
          getbrowseallcard()
        ])));
  }

  Widget gethead() {
    return Container(
      margin: EdgeInsets.all(12.0),
      child: Column(children: [
        Text("Search",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            )),
      ]),
    );
  }

  Widget gettopgeneresname() {
    return Container(
      margin: EdgeInsets.all(12.0),
      child: Column(children: [
        Text("Top generes",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            )),
      ]),
    );
  }

  Widget getbrowseall() {
    return Container(
      margin: EdgeInsets.all(12.0),
      child: Column(children: [
        Text("Browse all",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            )),
      ]),
    );
  }

  Widget getsearchbar() {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(8.0),
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5.0)),
      child: TextField(
        decoration: InputDecoration(border: InputBorder.none, hintText: 'Search'),
      ),
    );
  }

  Widget gettopgeneres() {
    return Container(
        margin: EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: (120.0 / 70.0),
            ),
            shrinkWrap: true,
            itemCount: s.length,
            controller: ScrollController(keepScrollOffset: false),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: s[index]["color"],
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Text(
                    s[index]["name"],
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ));
            }));
  }

  Widget getbrowseallcard() {
    return Container(
        margin: EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: (120.0 / 70.0),
            ),
            shrinkWrap: true,
            itemCount: browse.length,
            controller: ScrollController(keepScrollOffset: false),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: browse[index]["color"],
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Text(
                    browse[index]["name"],
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ));
            }));
  }
}
