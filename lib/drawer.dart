

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './widgets.dart';
import './language.dart';
import './language_constants.dart';
import './main.dart';

class MainDrawer extends StatefulWidget{
  MyDrawer createState()=> MyDrawer();
}

class MyDrawer extends State<MainDrawer>{

  void _changeLanguage(Language language) async {
    Locale _locale = await setLocale(language.languageCode);
    MyApp.setLocale(context, _locale);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Colors.blueGrey[900],
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(
                        top: 30,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://productimages.artboxone.com/1000715759-PO-big.jpg'
                            ),
                            fit: BoxFit.fill
                        ),
                      ),
                    ),
                    Text(
                      getTranslated(context, 'Cntnts'),
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                  Icons.sort_by_alpha
              ),
              title: Text(
                getTranslated(context, 'AlphIndx'),
                style: TextStyle(
                    fontSize: 18
                ),
              ),
              onTap: () => Navigator.of(context).pushNamed('/a'),
            ),
            ListTile(
              leading: Icon(
                  FontAwesomeIcons.dog
              ),
              title: Text(
                getTranslated(context, 'FmlyIndx'),
                style: TextStyle(
                    fontSize: 18
                ),
              ),
              // onTap: () => Navigator.of(context).pushNamed('/a'),
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.cat,
              ),
              title: Text(
                getTranslated(context, 'SpcsIndx'),
                style: TextStyle(
                    fontSize: 18
                ),
              ),
              // onTap: () => Navigator.of(context).pushNamed('/a'),
            ),
            ListTile(
              leading: Icon(
                  Icons.pets
              ),
              title: Text(
                getTranslated(context, 'SpcsIndx'),
                style: TextStyle(
                    fontSize: 18
                ),
              ),
              // onTap: () => Navigator.of(context).pushNamed('/a'),
            ),

            ExpansionTile(
              leading: Icon(
                  FontAwesomeIcons.language
              ),
              title: Text(
                getTranslated(context, 'Lang'),
                style: TextStyle(
                    fontSize: 18
                ),
              ),
              children: <Widget>[
                Column(
                  children: <Widget>[
                    DropdownButton<Language>(
                      onChanged: (Language language) {
                        _changeLanguage(language);
                      },
                      items: Language.languageList()
                          .map<DropdownMenuItem<Language>>(
                            (e) => DropdownMenuItem<Language>(
                            value: e, child: Text(e.name)),
                      )
                          .toList(),
                    ),
                  ],
                ),
              ],
            ),
            ListTile(
                leading: Icon(
                    Icons.alternate_email
                ),
                title: Text(
                  getTranslated(context, 'CntctUs'),
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
                onTap: () {
                  launchMailto();
                }
            ),
            ListTile(
              leading: Icon(
                  FontAwesomeIcons.infoCircle
              ),
              title: Text(
                getTranslated(context, 'About'),
                  style: TextStyle(
                    fontSize: 18,
                  )
              ),
              onTap: () {
                showAboutDialog(
                  context: context,
                  applicationName: 'Mammals of Oman',
                  applicationVersion: 'Version 0.0.1',
                  applicationLegalese: 'Copyright© 2021 Publisher Name',
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text('Authors: Andrew Spalton, Hadi Al Hikmani, Gareth Wittington-Jones')
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text('Developer: Philip Faure')
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}