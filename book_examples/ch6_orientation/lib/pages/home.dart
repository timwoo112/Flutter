import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  const OrientationLayoutIconsWidget(),
                  Divider(),
                  const OrientationLayoutWidget(),
                  Divider(),
                  const GridViewWidget(),
                  Divider(),
                  const OrientationViewWidget(),
                ],
              ),
            ),
          ),
        ));
  }
}

class OrientationLayoutIconsWidget extends StatelessWidget {
  const OrientationLayoutIconsWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation _orientation = MediaQuery.of(context).orientation;

    return _orientation == Orientation.portrait
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.school,
                size: 48.0,
              ),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.school,
                size: 48.0,
              ),
              Icon(
                Icons.brush,
                size: 48.0,
              ),
            ],
          );
  }
}

class OrientationLayoutWidget extends StatelessWidget {
  const OrientationLayoutWidget({
    Key key,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation _orientation = MediaQuery.of(context).orientation;
    return _orientation == Orientation.portrait
    ? Container(
      alignment: Alignment.center,
      color: Colors.yellow,
      height: 100.0,
      width: 100.0,
      child: Text('Portrait'),
    )
        : Container(
      alignment: Alignment.center,
      color: Colors.lightGreen,
      height: 100.0,
      width: 200.0,
      child: Text('landscape'),
    );
  }
}
 class GridViewWidget extends StatelessWidget {
  const GridViewWidget({
    Key key,
 }) : super(key: key);

   @override
   Widget build(BuildContext context) {
     Orientation _orientation = MediaQuery.of(context).orientation;
     return GridView.count(
       shrinkWrap: true,
       physics: NeverScrollableScrollPhysics(),
       crossAxisCount: _orientation == Orientation.portrait ? 2 : 4,
       childAspectRatio: 5.0,
       children: List.generate(8, (int index) {
         return Text("Grid $index", textAlign: TextAlign.center);
       }),
     );
   }
 }

 class OrientationViewWidget extends StatelessWidget {
  const OrientationViewWidget({
    Key key,
 }) : super(key: key);
  @override
   Widget build(BuildContext context) {
     return OrientationBuilder(
       builder: (BuildContext context, Orientation orientation) {
         return orientation == Orientation.portrait
             ? Container(
           alignment: Alignment.center,
           color: Colors.yellow,
           height: 100.0,
           width: 100.0,
           child: Text('Portrait'),
         )
             : Container(
           alignment: Alignment.center,
           color: Colors.lightGreen,
           height: 100.0,
           width: 200.0,
           child: Text('landscape'),
         );
       }
     );
   }
 }
