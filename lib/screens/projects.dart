import 'package:flutter/material.dart';
import 'package:personal_blog/models/launch_url.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5.0, bottom: 40),
              child: Text(
                'Projects',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 80.0, vertical: 10),
              child: Column(
                children: [
                  Text('First published app', style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Image(image: AssetImage('images/applogo.png'), width: 75, height: 75,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MaterialButton(child: Text('iOS'), onPressed: () => launchURL('https://apps.apple.com/us/app/babygrowth-create-baby-charts/id1564903293'),),
                      SizedBox(width: 10,),
                      MaterialButton(child: Text('Android'), onPressed: () => launchURL('https://play.google.com/store/apps/details?id=com.jacavanna.babygrowth_app'),),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 25),
              child: Column(
                children: [
                  Text('This website', style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Container(width: 300, child: Text('After the release of stable web with Flutter 2.0, curiosity got the better of me and decided to build my personal blog with Flutter.', textAlign: TextAlign.center,)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
