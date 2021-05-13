

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
                    image: AssetImage(
                        'assets/oryx_pic_1.JPG'
                    )
                ),
                Image(
                    image: AssetImage(
                        'assets/oryx_pic_2.JPG'
                    )
                ),
                Image(
                    image: AssetImage(
                        'assets/oryx_pic_3.JPG'
                    )
                ),
                Image(
                    image: AssetImage(
                        'assets/oryx_pic_4.JPG'
                    )
                ),
                Image(
                    image: AssetImage(
                        'assets/oryx_pic_5.JPG'
                    )
                ),
                Image(
                    image: AssetImage(
                        'assets/oryx_pic_6.JPG'
                    )
                ),
              ],
            )
        ),
      ),
    );
  }
}
