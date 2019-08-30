import 'package:flare_splash_screen/flare_splash_screen.dart' as flare;
import 'package:flutter/material.dart';

import 'package:tt_tracker/screens/home/home_screen.dart';
import 'package:tt_tracker/theme/custom_theme.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: CustomTheme.of(context).backgroundColor,
        child: Center(
          child: flare.SplashScreen.navigate(
            name: 'assets/Splash.flr',
            next: HomeScreen(),
            until: () => Future.delayed(Duration(seconds: 4)),
            startAnimation: 'Untitled',
          ),
        ),
      ),
    );
  }
}
