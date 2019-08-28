import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tt_tracker/screens/home/home_screen.dart';
import 'package:tt_tracker/theme/custom_theme.dart';

void main() async {
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeRight]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomTheme(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: HomeScreen(),
      ),
    );
  }
}
