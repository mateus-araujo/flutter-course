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
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: ClipOval(
                  child: Image.network(
                    'https://instagram.ffor13-1.fna.fbcdn.net/v/t51.2885-19/s150x150/132034458_142517714103365_7869639195355497690_n.jpg?tp=1&_nc_ht=instagram.ffor13-1.fna.fbcdn.net&_nc_ohc=7n2URtYIiBQAX_yLg36&edm=AP_V10EAAAAA&ccb=7-4&oh=17faa14eea71fc50c7e22212aa036743&oe=608B97CD&_nc_sid=4f375e',
                  ),
                ),
                accountName: Text('Mateus Araujo'),
                accountEmail: Text('mateus@email.com'),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Início'),
                subtitle: Text('Tela de início'),
                onTap: () {
                  print('home');
                },
              ),
              ListTile(
                leading: Container(
                  width: 25,
                  child: Image.asset('assets/images/tinder-logo.png'),
                ),
                title: Text('TinderPage'),
                subtitle: Text('Tinder Page'),
                onTap: () {
                  Navigator.of(context).pushNamed('/tinder');
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                subtitle: Text('Finalizar sessão'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('Home Page'),
        actions: <Widget>[
          CustomSwitch(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
