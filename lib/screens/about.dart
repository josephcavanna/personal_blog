import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                'About',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Container(
              width: 300,
              child: Text(
                'Joseph is a Spanish/Australian flutter developer living in the Netherlands. His journey with Flutter & Dart started in October 2020, learning to code in his spare time. This led him to building his first app with Flutter, BabyGrowth.',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 300,
              child: Text(
                'He is currently pursuing a career in Flutter development, as he continues to learn and build things with Flutter. He enjoys sharing the things he learns with others on his youtube channel.',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
