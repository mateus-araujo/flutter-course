import 'package:flutter/material.dart';
import 'package:flutter_course/app_widgets/custom_switch.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: <Widget>[
          CustomSwitch(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: $counter'),
            SizedBox(height: 10),
            CustomSwitch(),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.deepOrange,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blueAccent,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.deepOrange,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blueAccent,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.deepOrange,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
