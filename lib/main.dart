

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './drawer.dart';
import './indexPageAlph.dart';
import './picsLeopard.dart';
import './tabsOryx.dart';
import './app_localizations.dart';
import './language_constants.dart';
import './list_data.dart';

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
          // '/lstObs': (BuildContext context) => new SpcsLstFrm(),
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
            onPressed: () {
              showSearch(
                  context: context,
                  delegate: AnimalListSearch(),
              );
            },
            icon: Icon(Icons.search),
          )
        ],
      ),
      drawer: MainDrawer(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/leopard_bubblegum.JPG',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
      backgroundColor: Colors.blueGrey[400],
    );
  }
}

class AnimalListSearch extends SearchDelegate<AnimalList> {

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          return query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Need to find a way to close the search bar...
    // close(context, null);
    return new Oryx();
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    final myList = query.isEmpty? loadAnimalList()
        : loadAnimalList().where((p) => p.commonName.toLowerCase().contains(query.toLowerCase())).toList();
    return myList.isEmpty? Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
            'No Results Found...',
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey
          ),
        ),
      ),
    ): ListView.builder(
        itemCount: myList.length,
        itemBuilder: (context, index){
          final AnimalList listItem = myList[index];
          return ListTile(
            onTap: () {
              showResults(context);
            },
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  listItem.commonName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(listItem.family),
                Text(
                  listItem.scientificName,
                  style: TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                // Text(listItem.speciesName),
                Divider(),
              ],
            ),
          );
        });
  }
}