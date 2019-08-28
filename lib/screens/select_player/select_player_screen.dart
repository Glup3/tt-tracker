import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tt_tracker/theme/custom_theme.dart';
import 'package:tt_tracker/widgets/default_app_bar.dart';
import 'package:tt_tracker/widgets/styled_dropdown_button.dart';

class SelectPlayerScreen extends StatefulWidget {
  @override
  _SelectPlayerScreenState createState() => _SelectPlayerScreenState();
}

class _SelectPlayerScreenState extends State<SelectPlayerScreen> {
  String player1;
  String player2;

  final List<String> playerNames = [
    'Simon',
    'Stefan',
    'Thomas',
    'Sean',
    'Alex',
    'Carina',
    'Niq',
    'Phuuu',
    'Johanna',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: 'Warrior Selection'),
      body: Container(
        color: CustomTheme.of(context).backgroundColor,
        width: double.infinity,
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            StyledDropdownButton(
              onChanged: (String player) {
                setState(() {
                  player1 = player;
                });
              },
              value: player1,
              values: playerNames,
            ),
            Builder(
              builder: (context) => IconButton(
                tooltip: 'FIGHT',
                icon: Icon(FontAwesomeIcons.fistRaised, size: 50),
                color: CustomTheme.of(context).onBackgroundColor,
                onPressed: () => _onFight(context),
              ),
            ),
            StyledDropdownButton(
              onChanged: (String player) {
                setState(() {
                  player2 = player;
                });
              },
              value: player2,
              values: playerNames,
            ),
          ],
        ),
      ),
    );
  }

  void _onFight(BuildContext ctx) {
    if (player1 == null || player2 == null) {
      Scaffold.of(ctx).showSnackBar(SnackBar(
        content: Text('Select your Warriors!'),
        backgroundColor: CustomTheme.of(context).surfaceColor.withAlpha(1),
      ));
      return;
    }

    // TODO next screen
  }
}
