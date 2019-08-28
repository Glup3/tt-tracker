import 'package:flutter/material.dart';
import 'package:tt_tracker/theme/custom_theme.dart';
import 'package:tt_tracker/util/formating_util.dart';
import 'package:tt_tracker/widgets/default_app_bar.dart';
import 'package:tt_tracker/model/match.dart';

class MatchHistoryScreen extends StatelessWidget {
  final List<Match> matches = <Match>[
    Match(
      player1: 'Thomas',
      player2: 'Simon',
      points1: 12,
      points2: 14,
      winner: 'Simon',
    ),
    Match(
      player1: 'Johanna',
      player2: 'Stefan',
      points1: 11,
      points2: 9,
      winner: 'Johanna',
    ),
    Match(
      player1: 'Niq',
      player2: 'Alex',
      points1: 13,
      points2: 15,
      winner: 'Alex',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: 'Match History Season 7'),
      body: Container(
        color: CustomTheme.of(context).backgroundColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: ListView.separated(
              separatorBuilder: (context, index) =>
                  Divider(color: CustomTheme.of(context).onBackgroundColor),
              itemCount: matches.length,
              itemBuilder: (context, index) {
                Match match = matches[index];
                TextStyle style = TextStyle(
                    fontSize: 24,
                    color: CustomTheme.of(context).onBackgroundColor);
                String p1 = match.points1 < 10
                    ? formatIntegerWithLeadingZeros(match.points1, zeros: 1)
                    : match.points1.toString();
                String p2 = match.points2 < 10
                    ? formatIntegerWithLeadingZeros(match.points2, zeros: 1)
                    : match.points2.toString();

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      // Text(match.points1.toString(), style: style),
                      Text(
                        '$p1 ${match.player1}',
                        style: style.copyWith(
                            color: match.player1 == match.winner
                                ? CustomTheme.of(context).primaryColor1
                                : CustomTheme.of(context).onBackgroundColor),
                        textAlign: TextAlign.left,
                      ),
                      Text('VS', style: style, textAlign: TextAlign.center),
                      Text('${match.player2} $p2',
                          style: style.copyWith(
                              color: match.player2 == match.winner
                                  ? CustomTheme.of(context).primaryColor1
                                  : CustomTheme.of(context).onBackgroundColor),
                          textAlign: TextAlign.right),
                      // Text(match.points2.toString(), style: style),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
