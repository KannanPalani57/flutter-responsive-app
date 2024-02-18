import 'package:flutter/material.dart';
import 'package:responsive_architecture_flutter/widgets/app_drawer/app_drawer.dart';

class HomeMobilePortrait extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: AppDrawer(),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          GestureDetector(
            onTap: () {
              print("Clicked");
              _key.currentState!.openDrawer();
            },
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(
                  Icons.menu,
                  size: 30,
                )),
          ),
          Text("Hello")
        ],
      ),
    );
  }
}

class HomeMobileLandscape extends StatelessWidget {
  const HomeMobileLandscape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[AppDrawer()],
      ),
    );
  }
}
