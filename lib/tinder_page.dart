import 'package:flutter/material.dart';

class TinderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xfffe6e71),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 100),
                width: double.infinity,
                height: 300,
                child: Image.asset(
                  'assets/images/tinder-logo.png',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Location changer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Plugin app for Tinder',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 35),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Login with Facebook',
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Color(0xfffe6e71),
                  padding:
                      EdgeInsets.only(left: 25, right: 25, top: 12, bottom: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
