
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './widgets.dart';
import './app_localizations.dart';

class MainDrawer extends StatefulWidget{
  MyDrawer createState()=> MyDrawer();
}

class MyDrawer extends State<MainDrawer>{

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
                      AppLocalization.of(context).Cntnts,
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
                AppLocalization.of(context).AlphIndx,
                // 'Alphabetic Index',
                style: TextStyle(
                    fontSize: 18
                ),
              ),
              onTap: () => Navigator.of(context).pushNamed('/a'),
              // trailing: Icon(Icons.person),
            ),
            ListTile(
              leading: Icon(
                  FontAwesomeIcons.dog
              ),
              title: Text(
                  AppLocalization.of(context).FmlyIndx,
                // 'Family Index',
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
                  AppLocalization.of(context).SpcsIndx,
                // 'Species Index',
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
                AppLocalization.of(context).SpcsIndx,
                // 'Tracks and Droppings',
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
                AppLocalization.of(context).Lang,
                // 'Language',
                style: TextStyle(
                    fontSize: 18
                ),
              ),
              children: <Widget>[
                ListTile(
                  title: Center(
                    child: Text(
                      'English',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      AppLocalization.load(Locale('en', 'UK'));
                    });
                  },
                ),
                ListTile(
                  title: Center(
                    child: Text(
                        'عربى',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                  ),
                  onTap: () {
                    setState(() {
                      AppLocalization.load(Locale('ar', 'OM'));
                    });
                  },
                ),
            //     DropdownButton <Language>(
            //   iconSize: 30,
            //   hint: Text(
            //     'Choose language'
            //       // getTranslated(context, 'change_language')
            //   ),
            //   onChanged: (Language language) {
            //     // ignore: unnecessary_statements
            //     null;
            //   },
            //   items: Language.languageList()
            //       .map<DropdownMenuItem<Language>>(
            //         (e) => DropdownMenuItem<Language>(
            //         value: e, child: Text(e.language)),
            //   )
            //       .toList(),
            // ),
                // Switch(
                //   value: value,
                //   onChanged: (bool newValue) {
                //     onChanged(newValue);
                //   },
                // ),
              ],
            ),
            ListTile(
                leading: Icon(
                    Icons.alternate_email
                ),
                title: Text(
                  AppLocalization.of(context).CntctUs,
                  // 'Contact Us',
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
                  AppLocalization.of(context).About,
                  // 'About',
                  style: TextStyle(
                    fontSize: 18,
                  )
              ),
              onTap: () {
                showAboutDialog(
                  context: context,
                  // applicationIcon: FlutterLogo(),
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