import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_blog/models/launch_url.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _iconSize = 20;
    return Container(
      child: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.grey,
                      offset: Offset(0, 6),
                    )
                  ]),
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 125,
                backgroundImage: AssetImage('images/joseph.webp'),
              ),
            ),
            SizedBox(height: 50),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Joseph Cavanna',
              style: TextStyle(
                fontSize: 32,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(FontAwesomeIcons.twitter),
                  iconSize: _iconSize,
                  onPressed: () =>
                      launchURL('https://twitter.com/josephcavanna'),
                ),
                SizedBox(width: 30),
                IconButton(
                  icon: Icon(FontAwesomeIcons.github),
                  iconSize: _iconSize,
                  onPressed: () =>
                      launchURL('https://github.com/josephcavanna'),
                ),
                SizedBox(width: 30),
                IconButton(
                    icon: Icon(
                      FontAwesomeIcons.youtube,
                    ),
                    iconSize: _iconSize,
                    onPressed: () => launchURL(
                        'https://www.youtube.com/channel/UCqTsvkGTcNZWgkX_NsLPEBQ'))
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Built with Flutter',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
