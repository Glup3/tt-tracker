import 'package:flutter/material.dart';
import 'package:tt_tracker/theme/custom_theme.dart';

class ConfirmationDialog extends StatelessWidget {
  final String title;
  final String text;
  final Function okayFunction;

  const ConfirmationDialog({
    Key key,
    @required this.title,
    @required this.text,
    @required this.okayFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: CustomTheme.of(context).surfaceColor,
      title: Text(
        title,
        style: TextStyle(
          color: CustomTheme.of(context).onSurfaceColor,
        ),
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(
              text,
              style: TextStyle(
                color: CustomTheme.of(context).onSurfaceColor,
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        FlatButton(
          child: Text(
            'Nevermind',
            style: TextStyle(
              color: CustomTheme.of(context).onSurfaceColor,
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text(
            'もちろん',
            style: TextStyle(
              color: CustomTheme.of(context).secondaryColor1,
            ),
          ),
          onPressed: () {
            okayFunction();
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
