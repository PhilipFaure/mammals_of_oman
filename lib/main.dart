
import 'package:flutter/material.dart';
import './drawer.dart';
import './indexPageAlph.dart';
import './picsLeopard.dart';
import './tabsOryx.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import './app_localizations.dart';

// import 'package:buzzkill/generated/l10n.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  // This widget is the root of your application.

  AppLocalizationDelegate _localeOverrideDelegate =
  AppLocalizationDelegate(Locale('en', 'UK'));

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          _localeOverrideDelegate
        ],
        supportedLocales: [
          //supportedLocales parameter holds the list of languages that our app
          // will support. May need to add in a massive list here for all
          // countries??
          const Locale('en', ''), // English, no country code
          const Locale('ar', '') // Arabic, no country code
        ],
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
            AppLocalization.of(context).MmmlsOmn
          // 'Mammals of Oman'
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
      // body: Center(
      //   child: Image(
      //     image: NetworkImage(
      //       'https://productimages.artboxone.com/1000715759-PO-big.jpg'
      //       // 'https://media.sciencephoto.com/image/c0209838/800wm'
      //     )
      //   ),
      // ),
      backgroundColor: Colors.blueGrey[400],
    );
  }
}