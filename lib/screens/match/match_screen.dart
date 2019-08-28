import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tt_tracker/screens/match/widgets/player_field.dart';
import 'package:tt_tracker/screens/winner/winner_screen.dart';
import 'package:tt_tracker/theme/custom_theme.dart';
import 'package:tt_tracker/widgets/default_app_bar.dart';

class MatchScreen extends StatefulWidget {
  final String player1;
  final String player2;

  const MatchScreen({
    Key key,
    @required this.player1,
    @required this.player2,
  }) : super(key: key);

  @override
  _MatchScreenState createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {
  int score1 = 0;
  int score2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: 'VS'),
      body: Container(
        color: CustomTheme.of(context).backgroundColor,
        child: Stack(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: PlayerField(
                    playerName: widget.player1,
                    score: score1.toString(),
                    onAccept: () {
                      setState(() {
                        score1++;
                      });
                      _checkWinner();
                    },
                  ),
                ),
                Container(
                  width: 2,
                  color: CustomTheme.of(context).onBackgroundColor,
                ),
                Expanded(
                  child: PlayerField(
                    playerName: widget.player2,
                    score: score2.toString(),
                    onAccept: () {
                      setState(() {
                        score2++;
                      });
                      _checkWinner();
                    },
                  ),
                ),
              ],
            ),
            Center(
              child: Draggable(
                child: Container(
                  color: CustomTheme.of(context).surfaceColor,
                  child: Icon(
                    FontAwesomeIcons.tableTennis,
                    color: CustomTheme.of(context).onSurfaceColor,
                    size: 50,
                  ),
                ),
                feedback: Container(
                  // color: CustomTheme.of(context).surfaceColor,
                  color: Colors.transparent,
                  child: Icon(
                    FontAwesomeIcons.tableTennis,
                    color: CustomTheme.of(context).onSurfaceColor,
                    size: 50,
                  ),
                ),
                childWhenDragging: Container(
                  padding: EdgeInsets.all(10),
                  color: CustomTheme.of(context).surfaceColor,
                  child: Icon(
                    FontAwesomeIcons.ban,
                    color: CustomTheme.of(context).errorColor,
                    size: 80,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _checkWinner() {
    if (score1 < 11 && score2 < 11) {
      return;
    }

    if (score1 >= score2 + 2) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => WinnerScreen(name: widget.player1)));
      return;
    }

    if (score2 >= score1 + 2) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => WinnerScreen(name: widget.player2)));
      return;
    }
  }
}
