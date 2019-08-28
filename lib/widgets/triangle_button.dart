import 'package:flutter/material.dart';
import 'package:tt_tracker/theme/custom_theme.dart';

import 'clippers/triangle_clipper.dart';

class TriangleButton extends StatelessWidget {
  final Color bgColor;
  final Color splashColor;
  final int turns;
  final double size;
  final Function onTap;
  final Widget child;

  const TriangleButton({
    Key key,
    this.bgColor,
    this.splashColor,
    this.turns = 0,
    this.size = 100,
    @required this.onTap,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: turns,
      child: ClipPath(
        child: Material(
          color: bgColor ?? CustomTheme.of(context).onBackgroundColor,
          child: InkWell(
            splashColor:
                splashColor ?? CustomTheme.of(context).primaryColor1Variant,
            onTap: onTap,
            child: Container(
              height: size,
              width: size,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RotatedBox(
                  quarterTurns: turns * -1,
                  child: Container(
                    margin: EdgeInsets.only(top: size / 4),
                    child: child,
                  ),
                ),
              ),
            ),
          ),
        ),
        clipper: TriangleClipper(),
      ),
    );
  }
}
