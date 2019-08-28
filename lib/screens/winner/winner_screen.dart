import 'package:flutter/material.dart';
import 'package:tt_tracker/screens/home/home_screen.dart';
import 'package:tt_tracker/theme/custom_theme.dart';
import 'package:tt_tracker/widgets/default_app_bar.dart';
import 'package:tt_tracker/widgets/triangle_button.dart';

class WinnerScreen extends StatelessWidget {
  final String name;

  const WinnerScreen({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: '👑    Winner    👑',
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: CustomTheme.of(context).backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TriangleButton(
              turns: 1,
              size: 100,
              bgColor: CustomTheme.of(context).primaryColor1,
              child: Container(),
              onTap: () {},
            ),
            TriangleButton(
              size: 200,
              bgColor: CustomTheme.of(context).secondaryColor1,
              child: Container(),
              onTap: () {},
            ),
            Text(
              name,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: CustomTheme.of(context).onBackgroundColor,
                fontSize: 40,
              ),
            ),
            TriangleButton(
              turns: 2,
              size: 200,
              bgColor: CustomTheme.of(context).primaryColor1,
              child: Container(),
              onTap: () {},
            ),
            TriangleButton(
              turns: 3,
              bgColor: CustomTheme.of(context).secondaryColor1,
              size: 100,
              child: Container(),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                    (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
