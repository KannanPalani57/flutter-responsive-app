import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_architecture_flutter/ui/home_view.dart';

void main() => runApp(
      DevicePreview(
        builder: (context) => MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      home: HomeView(),
    );
  }
}
