

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mammals_of_oman/language_constants.dart';

class IndexAlphbtc extends StatelessWidget {

  final String title;
  IndexAlphbtc(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(
            title
        ),
        backgroundColor: Colors.blueGrey[900],
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              //
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(
                  FontAwesomeIcons.cat
              ),
              title: Text(
                getTranslated(context, 'ArbnLprd'),
                style: TextStyle(
                    fontSize: 18
                ),
              ),
              onTap: () => Navigator.of(context).pushNamed('/b'),
            ),
            ListTile(
              leading: Icon(
                  FontAwesomeIcons.bug
              ),
              title: Text(
                getTranslated(context, 'ArbnOryx'),
                style: TextStyle(
                    fontSize: 18
                ),
              ),
              onTap: () => Navigator.of(context).pushNamed('/c'),
            ),
            ListTile(
              leading: Icon(
                  FontAwesomeIcons.dog
              ),
              title: Text(
                getTranslated(context, 'ArbnWlf'),
                style: TextStyle(
                    fontSize: 18
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                  FontAwesomeIcons.dog
              ),
              title: Text(
                getTranslated(context, 'BlnfrdsFx'),
                style: TextStyle(
                    fontSize: 18
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                  FontAwesomeIcons.cat
              ),
              title: Text(
                getTranslated(context, 'Crcl'),
                style: TextStyle(
                    fontSize: 18
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                  FontAwesomeIcons.otter
              ),
              title: Text(
                getTranslated(context, 'CmmnGnt'),
                style: TextStyle(
                    fontSize: 18
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                  FontAwesomeIcons.cat
              ),
              title: Text(
                getTranslated(context, 'NAWldct'),
                style: TextStyle(
                    fontSize: 18
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                  FontAwesomeIcons.dog
              ),
              title: Text(
                getTranslated(context, 'RdFx'),
                style: TextStyle(
                    fontSize: 18
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                  FontAwesomeIcons.dog
              ),
              title: Text(
                  getTranslated(context, 'StrpdHyn'),
                style: TextStyle(
                    fontSize: 18
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                  FontAwesomeIcons.otter
              ),
              title: Text(
                getTranslated(context, 'WTMngs'),
                style: TextStyle(
                    fontSize: 18
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}