

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mammals_of_oman/v_language_constants.dart';
import './picsOryx.dart';
import './descOryx.dart';


class Oryx extends StatefulWidget {

  @override
  _OryxState createState() => _OryxState();
}

class _OryxState extends State<Oryx> {

  int _currentIndex = 0;

  final tabs = [
    PicsOryx('Arabian Oryx'),
    DescOryx(),
    Image(
        image: AssetImage(
          './assets/oryx_distr.JPG',
        )
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          getTranslated(context, 'ArbnOryx'),
          // AppLocalization.of(context).ArbnOryx,
        ),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.blueGrey[500],
        selectedItemColor: Colors.black,
        selectedFontSize: 15,
        unselectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            title: Text(
              getTranslated(context, 'Pctrs'),
                // AppLocalization.of(context).Pctrs,
            ),
            icon: Icon(Icons.photo),
          ),
          BottomNavigationBarItem(
            title: Text(
              getTranslated(context, 'Dscrptn'),
                // AppLocalization.of(context).Dscrptn,
            ),
            icon: Icon(Icons.library_books),
          ),
          BottomNavigationBarItem(
            title: Text(
              getTranslated(context, 'Dstrbtn'),
                // AppLocalization.of(context).Dstrbtn,
            ),
            icon: Icon(FontAwesomeIcons.globeAfrica),
          ),
          // BottomNavigationBarItem(
          //   title: Text('Sound'),
          //   icon: Icon(Icons.music_note),
          // ),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}