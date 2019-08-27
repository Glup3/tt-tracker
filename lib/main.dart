import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeRight]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int score1 = 0;
  int score2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TT Tracker'),
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    // padding: EdgeInsets.all(50),
                    child: DragTarget(
                      builder: (context, data, rejectedData) {
                        return Container(
                          color: Colors.red,
                          child: Center(
                            child: Text(score1.toString()),
                          ),
                        );
                      },
                      onAccept: (data) {
                        setState(() {
                          score1++;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    // padding: EdgeInsets.all(50),
                    child: DragTarget(
                      builder: (context, data, rejectedData) {
                        return Container(
                          color: Colors.blue,
                          child: Center(
                            child: Text(score2.toString()),
                          ),
                        );
                      },
                      onAccept: (data) {
                        setState(() {
                          score2++;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Draggable(
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.purple,
                ),
                feedback: Container(
                  height: 50,
                  width: 50,
                  color: Colors.blue[200],
                ),
                childWhenDragging: Container(
                  height: 100,
                  width: 100,
                  color: Colors.white,
                  child: Icon(Icons.cancel, color: Colors.red),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
