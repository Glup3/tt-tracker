import 'package:flutter/material.dart';
import 'package:tt_tracker/theme/custom_theme.dart';

class AddUserDialog extends StatefulWidget {
  @override
  _AddUserDialogState createState() => _AddUserDialogState();
}

class _AddUserDialogState extends State<AddUserDialog> {
  String playerName;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: CustomTheme.of(context).surfaceColor,
      content: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              cursorColor: CustomTheme.of(context).primaryColor1,
              style: TextStyle(
                color: CustomTheme.of(context).onSurfaceColor,
              ),
              decoration: InputDecoration(
                hintText: 'Player name',
                hintStyle: TextStyle(color: CustomTheme.of(context).hintColor),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: CustomTheme.of(context).onSurfaceColor,
                    width: 2,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: CustomTheme.of(context).primaryColor1,
                    width: 2,
                  ),
                ),
              ),
              onChanged: (name) => playerName = name,
              onSubmitted: (name) => _addPlayer(name),
            ),
          ),
          FlatButton(
            child: Text(
              'Add',
              style: TextStyle(
                color: CustomTheme.of(context).primaryColor1,
              ),
            ),
            onPressed: () => _addPlayer(playerName),
          ),
        ],
      ),
    );
  }

  void _addPlayer(String name) {
    if (name != null) {
      print(name);
      // TODO add GraphQL Mutation
      Navigator.pop(context);
    }
  }
}
