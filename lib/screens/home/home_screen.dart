import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tt_tracker/screens/tournament/tournament_screen.dart';
import 'package:tt_tracker/theme/custom_theme.dart';
import 'package:tt_tracker/widgets/default_app_bar.dart';
import 'package:tt_tracker/widgets/triangle_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: 'TT Tracker'),
      body: Container(
        color: CustomTheme.of(context).backgroundColor,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TriangleButton(
              turns: 2,
              child: Icon(FontAwesomeIcons.play),
              onTap: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TriangleButton(
                  turns: 2,
                  child: Icon(FontAwesomeIcons.chalkboard),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TournamentScreen())),
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
