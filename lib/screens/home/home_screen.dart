import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tt_tracker/screens/match_history/match_history_screen.dart';
import 'package:tt_tracker/screens/play_menu/play_menu_screen.dart';
import 'package:tt_tracker/screens/tournament/tournament_screen.dart';
import 'package:tt_tracker/theme/custom_theme.dart';
import 'package:tt_tracker/widgets/default_app_bar.dart';
import 'package:tt_tracker/widgets/triangle_button.dart';

class HomeScreen extends StatelessWidget {
  final double triangleSize = 150;

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
              size: triangleSize,
              turns: 2,
              child: Icon(FontAwesomeIcons.play),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PlayMenuScreen())),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TriangleButton(
                  size: triangleSize,
                  turns: 2,
                  child: Icon(FontAwesomeIcons.chalkboard),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TournamentScreen())),
                ),
                // TriangleButton(),
                TriangleButton(
                  size: triangleSize,
                  turns: 2,
                  child: Icon(FontAwesomeIcons.trophy),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MatchHistoryScreen())),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
