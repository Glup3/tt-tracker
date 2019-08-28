import 'package:flutter/material.dart';
import 'package:tt_tracker/theme/custom_theme.dart';

class PlayerField extends StatelessWidget {
  final String playerName;
  final String score;
  final Function changeScore;

  const PlayerField({
    Key key,
    @required this.playerName,
    @required this.score,
    @required this.changeScore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 2,
          color: CustomTheme.of(context).onBackgroundColor,
        ),
        Text(
          playerName,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: CustomTheme.of(context).onBackgroundColor,
            fontSize: 32,
          ),
        ),
        Container(
          height: 2,
          color: CustomTheme.of(context).onBackgroundColor,
        ),
        Expanded(
          child: Material(
            color: CustomTheme.of(context).surfaceColor,
            child: InkWell(
              // splashColor: CustomTheme.of(context).errorColor,
              highlightColor: CustomTheme.of(context).errorColor,
              onLongPress: () {
                int newScore = int.parse(score) - 1;
                changeScore(newScore >= 0 ? newScore : 0);
              },
              child: Container(
                child: DragTarget(
                  builder: (context, data, rejectedData) {
                    return Container(
                      child: Center(
                        child: Text(
                          score,
                          style: TextStyle(
                              color: CustomTheme.of(context).onSurfaceColor,
                              fontSize: 50),
                        ),
                      ),
                    );
                  },
                  onAccept: (data) => changeScore(int.parse(score) + 1),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
