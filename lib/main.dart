

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './drawer.dart';
import './indexPageAlph.dart';
import './picsLeopard.dart';
import './tabsOryx.dart';
import './app_localizations.dart';
import './language_constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  const MyApp({Key key}) : super(key: key);
  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>();
    state.setLocale(newLocale);
  } // setLocale

    @override
    _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{

  Locale _locale;
  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) {
      setState(() {
        this._locale = locale;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: _locale,
        supportedLocales:[
          Locale('en', 'UK'),
          Locale('ar', 'OM'),
        ],
        localeResolutionCallback: (locale, supportedLocales) {
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode &&
                supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }
          return supportedLocales.first;
        },
        home: MyHomePage(),
        routes: <String, WidgetBuilder> {
          "/a": (BuildContext context) => new IndexAlphbtc("Alphabetic Index"),
          "/b": (BuildContext context) => new PicsLeopard("Arabian Leopard"),
          "/c": (BuildContext context) => new Oryx(),
        }
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          getTranslated(context, 'MmmlsOmn'),
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
      drawer: MainDrawer(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://productimages.artboxone.com/1000715759-PO-big.jpg'
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
      backgroundColor: Colors.blueGrey[400],
    );
  }
}