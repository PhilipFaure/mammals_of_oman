
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './app_localizations.dart';

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
                AppLocalization.of(context).ArbnLprd,
                // 'Arabian Leopard',
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
                AppLocalization.of(context).ArbnOryx,
                // 'Arabian Oryx',
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
                AppLocalization.of(context).ArbnWlf,
                // 'Arabian Wolf',
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
                AppLocalization.of(context).BlnfrdsFx,
                // 'Blanfords Fox',
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
                AppLocalization.of(context).Crcl,
                // 'Caracal',
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
                AppLocalization.of(context).CmmnGnt,
                // 'Common Genet',
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
                AppLocalization.of(context).NAWldct,
                // 'North African Wildcat',
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
                AppLocalization.of(context).RdFx,
                // 'Red Fox',
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
                AppLocalization.of(context).StrpdHyn,
                // 'Striped Hyaena',
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
                AppLocalization.of(context).WTMngs,
                // 'White Tailed Mongoose',
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