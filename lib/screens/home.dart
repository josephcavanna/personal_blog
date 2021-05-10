import 'package:flutter/material.dart';
import 'intro_page.dart';
import 'about.dart';
import 'projects.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  List blogPages = [IntroPage(), Projects(), About()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  currentIndex = 0;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Home'),
              ),
            ),
            SizedBox(width: 30),
            TextButton(
              onPressed: () {
                setState(() {
                  currentIndex = 1;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Projects'),
              ),
            ),
            SizedBox(width: 30),
            TextButton(
              onPressed: () {
                setState(() {
                  currentIndex = 2;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('About'),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              blogPages[currentIndex],
            ],
          ),
        ),
      ),
    );
  }
}
