import 'package:flutter/material.dart';
import 'package:tt_tracker/theme/custom_theme.dart';

class PlayerField extends StatelessWidget {
  final String playerName;
  final String score;
  final Function onAccept;

  const PlayerField({
    Key key,
    @required this.playerName,
    @required this.score,
    @required this.onAccept,
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
          child: Container(
            child: DragTarget(
              builder: (context, data, rejectedData) {
                return Container(
                  color: CustomTheme.of(context).surfaceColor,
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
              onAccept: (data) => onAccept(),
            ),
          ),
        ),
      ],
    );
  }
}
