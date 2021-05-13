

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PicsLeopard extends StatelessWidget {

  final String title;
  PicsLeopard(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(
            title
        ),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: SafeArea (
        child: SingleChildScrollView (
            child: Column(
              children: <Widget>[
                Image(
                    image: AssetImage(
                        'assets/leopard_pic_1.JPG'
                    )
                ),
                Image(
                    image: AssetImage(
                        'assets/leopard_pic_2.JPG'
                    )
                ),
                Image(
                    image: AssetImage(
                        'assets/leopard_pic_3.JPG'
                    )
                ),
                Image(
                    image: AssetImage(
                        'assets/leopard_pic_4.JPG'
                    )
                ),
                Image(
                    image: AssetImage(
                        'assets/leopard_pic_5.JPG'
                    )
                ),
              ],
            )
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.blueGrey[500],
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            title: Text('Pictures'),
            icon: Icon(Icons.photo),
          ),
          BottomNavigationBarItem(
            title: Text('Description'),
            icon: Icon(Icons.library_books),
          ),
          BottomNavigationBarItem(
            title: Text('Distribution'),
            icon: Icon(FontAwesomeIcons.globeAfrica),
          ),
          BottomNavigationBarItem(
            title: Text('Sound'),
            icon: Icon(Icons.music_note),
          ),
        ],
      ),
    );
  }
}
