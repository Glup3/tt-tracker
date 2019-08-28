import 'package:flutter/material.dart';
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
      appBar: DefaultAppBar(title: 'Warrior Selection'),
      body: Container(
        color: CustomTheme.of(context).backgroundColor,
        child: Stack(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: DragTarget(
                      builder: (context, data, rejectedData) {
                        return Container(
                          color: Colors.red,
                          child: Center(
                            child: Text(score1.toString()),
                          ),
                        );
                      },
                      onAccept: (data) {
                        setState(() {
                          score1++;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: DragTarget(
                      builder: (context, data, rejectedData) {
                        return Container(
                          color: Colors.blue,
                          child: Center(
                            child: Text(score2.toString()),
                          ),
                        );
                      },
                      onAccept: (data) {
                        setState(() {
                          score2++;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Draggable(
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.purple,
                ),
                feedback: Container(
                  height: 50,
                  width: 50,
                  color: Colors.blue[200],
                ),
                childWhenDragging: Container(
                  height: 50,
                  width: 50,
                  color: Colors.white,
                  child: Icon(Icons.cancel, color: Colors.red),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
