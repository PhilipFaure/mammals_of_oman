

import 'package:flutter/material.dart';

class PicsOryx extends StatelessWidget {

  final String title;
  PicsOryx(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea (
        child: SingleChildScrollView (
            child: Column(
              children: <Widget>[
                Image(
                    image: NetworkImage(
                        'https://www.arabnews.com/sites/default/files/main-image/2019/01/11/1426421-162007494.jpg'
                    )
                ),
                Image(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/4/43/Arabian_oryx_%28oryx_leucoryx%29.jpg'
                    )
                ),
                Image(
                    image: NetworkImage(
                        'https://alchetron.com/cdn/arabian-oryx-283a0181-08a2-46ca-8d32-79723c792e9-resize-750.jpg'
                    )
                ),
                Image(
                    image: NetworkImage(
                        'https://c8.alamy.com/comp/AHM3N4/oryx-tracks-AHM3N4.jpg'
                    )
                ),
                Image(
                    image: NetworkImage(
                        'https://images.auscape.com.au/p/632/bio24976-15426997.jpg.webp'
                    )
                ),
                Image(
                    image: NetworkImage(
                        'https://www.mindenpictures.com/cache/pcache2/80128267.jpg'
                    )
                ),
              ],
            )
        ),
      ),
    );
  }
}
