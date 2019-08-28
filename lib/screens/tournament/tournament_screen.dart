import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tt_tracker/theme/custom_theme.dart';
import 'package:tt_tracker/widgets/default_app_bar.dart';

class TournamentScreen extends StatelessWidget {
  final List<dynamic> data = [
    {'name': 'Simon', 'points': 2},
    {'name': 'Stefan', 'points': 1},
    {'name': 'Thomas', 'points': 0},
    {'name': 'Sean', 'points': 3},
    {'name': 'Alex', 'points': 3},
    {'name': 'Carina', 'points': 2},
    {'name': 'Niq', 'points': 0},
    {'name': 'Phuuu', 'points': 3},
    {'name': 'Johanna', 'points': 0},
  ];

  @override
  Widget build(BuildContext context) {
    const double fontSize = 22;

    return Scaffold(
      appBar: DefaultAppBar(title: 'Scoreboard'),
      body: Container(
        padding: EdgeInsets.all(8),
        color: CustomTheme.of(context).backgroundColor,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (context, index) {
            var entry = data[index];

            return Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: () {
                  print(entry['name']);
                  // TODO open dialog --> add point confirmation
                },
                child: Column(
                  children: <Widget>[
                    Text(
                      entry['name'],
                      style: TextStyle(
                        color: CustomTheme.of(context).onBackgroundColor,
                        fontSize: fontSize,
                      ),
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: List.generate(entry['points'], (index) {
                        return Container(
                          height: 20,
                          width: 5,
                          color: CustomTheme.of(context).onBackgroundColor,
                        );
                      }).toList(),
                    ),
                    SizedBox(height: 10),
                    Text(
                      entry['points'].toString(),
                      style: TextStyle(
                        color: CustomTheme.of(context).onBackgroundColor,
                        fontSize: fontSize,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO add textfield name
          print('add user');
        },
        child: Icon(FontAwesomeIcons.plus),
        backgroundColor: CustomTheme.of(context).primaryColor1,
        foregroundColor: CustomTheme.of(context).onPrimaryColor,
      ),
    );
  }
}
