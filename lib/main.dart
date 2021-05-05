import 'package:beat_the_virus/widgets/DrawerItems.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'widgets/DrawerItems.dart';

void main() {
  runApp(BeatTheVirus()); //Appbar Created
}

class BeatTheVirus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(drawer: Drawer(child: DrawerItems(),),
           // backgroundColor: Colors.blue[300],
           // actionsIconTheme: IconThemeData(color: Colors.white),
            body:Center(
              child: SpinKitCircle(
                color: Colors.black,
                size: 50.0,
              ),
            ),
            appBar: AppBar(
                title: Text("Beat The Virus"),
                backgroundColor: Colors.blue[300],
                actionsIconTheme: IconThemeData(color: Colors.white),
                actions: <Widget>[
                  IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () => debugPrint("search pressed")),
                  IconButton(
                      icon: Icon(Icons.help),
                      onPressed: () => debugPrint("help pressed")),
                ],
                leading: Builder(builder: (context) {
                  return IconButton(
                    icon: Icon(Icons.fastfood),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                  );
                }))));
  }
}
