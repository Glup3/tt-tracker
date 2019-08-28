import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tt_tracker/theme/custom_theme.dart';
import 'package:tt_tracker/widgets/triangle_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TT Tracker',
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: CustomTheme.of(context).backgroundColor,
      ),
      body: Container(
        color: CustomTheme.of(context).backgroundColor,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TriangleButton(
              turns: 2,
              onTap: () {},
              child: Icon(FontAwesomeIcons.play),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TriangleButton(
                  turns: 2,
                  onTap: () {},
                  child: Icon(FontAwesomeIcons.chalkboard),
                ),
                // TriangleButton(),
                TriangleButton(
                  turns: 2,
                  onTap: () {},
                  child: Icon(FontAwesomeIcons.trophy),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
