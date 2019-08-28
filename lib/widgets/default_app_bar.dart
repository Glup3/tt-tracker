import 'package:flutter/material.dart';
import 'package:tt_tracker/theme/custom_theme.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const DefaultAppBar({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(fontSize: 30),
      ),
      centerTitle: true,
      backgroundColor: CustomTheme.of(context).backgroundColor,
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 50);
}
