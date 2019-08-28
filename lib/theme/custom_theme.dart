import 'package:flutter/material.dart';

//tutorial: https://flutterbyexample.com/inherited-widget-custom-theme-class/

class CustomTheme extends StatefulWidget {
  final Widget child;

  CustomTheme({Key key, this.child}) : super(key: key);

  @override
  _CustomThemeState createState() => _CustomThemeState();

  static _CustomThemeState of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(_InheritedStateContainer)
            as _InheritedStateContainer)
        .data;
  }
}

class _CustomThemeState extends State<CustomTheme> {
  // Add all your theme properties and logic here:

  /// #FFFFFF
  Color get spectralColor1 => Colors.white;

  /// #000000
  Color get spectralColor2 => Colors.black;

  /// #BB86FC
  Color get primaryColor1 => Color(0xFFBB86FC);

  /// #3700B3
  Color get primaryColor1Variant => Color(0xFF3700B3);

  /// #03DAC6
  Color get secondaryColor1 => Color(0xFF03DAC6);

  /// #121212
  Color get backgroundColor => Color(0xFF121212);

  /// #121212
  Color get surfaceColor => Color(0xFF121212);

  /// #CF6679
  Color get errorColor => Color(0xFFCF6679);

  /// #000000
  Color get onPrimaryColor => Color(0xFF000000);

  /// #000000
  Color get onSecondaryColor => Color(0xFF000000);

  /// #FFFFFF
  Color get onBackgroundColor => Color(0xFFFFFFFF);

  /// #FFFFFF
  Color get onSurfaceColor => Color(0xFFFFFFFF);

  /// #000000
  Color get onErrorColor => Color(0xFF000000);

  /// #C2C2C2
  Color get hintColor => Color(0xFFC2C2C2);

  @override
  Widget build(BuildContext context) {
    return new _InheritedStateContainer(
      data: this,
      child: widget.child,
    );
  }
}

class _InheritedStateContainer extends InheritedWidget {
  final _CustomThemeState data;

  _InheritedStateContainer({
    Key key,
    @required this.data,
    @required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_InheritedStateContainer old) => true;
}
