import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tt_tracker/screens/select_player/select_player_screen.dart';
import 'package:tt_tracker/theme/custom_theme.dart';
import 'package:tt_tracker/widgets/default_app_bar.dart';
import 'package:tt_tracker/widgets/dialogs/confirmation_dialog.dart';
import 'package:tt_tracker/widgets/triangle_button.dart';

class PlayMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: 'Let\'s play!'),
      body: Container(
        color: CustomTheme.of(context).backgroundColor,
        width: double.infinity,
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TriangleButton(
              size: 100,
              bgColor: CustomTheme.of(context).primaryColor1,
              child: Container(),
              onTap: () {},
            ),
            TriangleButton(
              size: 180,
              turns: 2,
              child: Icon(FontAwesomeIcons.peopleCarry, size: 50),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SelectPlayerScreen())),
            ),
            TriangleButton(
              size: 140,
              bgColor: CustomTheme.of(context).secondaryColor1,
              child: Container(),
              onTap: () {},
            ),
            TriangleButton(
              size: 180,
              turns: 2,
              child: Icon(FontAwesomeIcons.undo, size: 50),
              onTap: () {
                showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return ConfirmationDialog(
                      title: 'Are you sure?',
                      text: 'Start a new season (ends current one)',
                      okayFunction: () {},
                    );
                  },
                );
              },
            ),
            TriangleButton(
              size: 160,
              bgColor: CustomTheme.of(context).primaryColor1,
              child: Container(),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
