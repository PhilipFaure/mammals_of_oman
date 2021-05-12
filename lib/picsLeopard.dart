

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
                    image: NetworkImage(
                        'https://lp-cms-production.imgix.net/image_browser/leopard-africa-safari.jpg'
                    )
                ),
                Image(
                    image: NetworkImage(
                        'https://cloudfront.safaribookings.com/blog/2017/06/Leopard-BW_1200px.jpg'
                    )
                ),
                Image(
                    image: NetworkImage(
                        'https://i.insider.com/5f1af6902618b9264e7754c7?width=1200&format=jpeg'
                    )
                ),
                Image(
                    image: NetworkImage(
                        'https://i.pinimg.com/originals/9e/f0/b9/9ef0b9132d4e377b6eae79343f48ea01.jpg'
                    )
                ),
                Image(
                    image: NetworkImage(
                        'https://www.seekpng.com/png/detail/387-3870853_leopard-tracks-size-of-leopard-tracks.png'
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
