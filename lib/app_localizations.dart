import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './l10n/messages_all.dart';


class AppLocalization {

  static Future<AppLocalization> load(Locale locale) {
    final String name = locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return AppLocalization();
    });
  }

  static AppLocalization of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }

  // list of locales
  String get heyWorld {
    return Intl.message(
      'Hey World',
      name: 'heyWorld',
      desc: 'Simpel word for greeting ',
    );
  }
  String get MmmlsOmn {
    return Intl.message(
      'Mammals of Oman',
      name: 'MmmlsOmn',
      desc: 'Name of the app',
    );
  }
  String get AlphIndx {
    return Intl.message(
      'Alphabetic Index',
      name: 'AlphIndx',
      desc: 'Drawer Index',
    );
  }
  String get Lang {
    return Intl.message(
      'Language',
      name: 'Lang',
      desc: 'Drawer Index',
    );
  }
  String get TrcksDrppngs {
    return Intl.message(
      'Tracks and Droppings',
      name: 'TrcksDrppngs',
      desc: 'Drawer Index',
    );
  }
  String get SpcsIndx {
    return Intl.message(
      'Species Index',
      name: 'SpcsIndx',
      desc: 'Drawer Index',
    );
  }
  String get FmlyIndx {
    return Intl.message(
      'Family Index',
      name: 'FmlyIndx',
      desc: 'Drawer Index',
    );
  }
  String get Cntnts {
    return Intl.message(
      'Contents',
      name: 'Cntnts',
      desc: 'Drawer Index',
    );
  }
  String get CntctUs {
    return Intl.message(
      'Contact Us',
      name: 'CntctUs',
      desc: 'Drawer Index',
    );
  }
  String get About {
    return Intl.message(
      'About',
      name: 'About',
      desc: 'Drawer Index',
    );
  }
  String get ArbnLprd {
    return Intl.message(
      'Arabian Leopard',
      name: 'ArbnLprd',
      desc: 'ArbnLprd',
    );
  }
  String get ArbnOryx {
    return Intl.message(
      'Arabian Oryx',
      name: 'ArbnOryx',
      desc: 'ArbnOryx',
    );
  }
  String get ArbnWlf {
    return Intl.message(
      'Arabian Wolf',
      name: 'ArbnWlf',
      desc: 'ArbnWlf',
    );
  }
  String get BlnfrdsFx {
    return Intl.message(
      'Blanfords Fox',
      name: 'BlnfrdsFx',
      desc: 'BlnfrdsFx',
    );
  }
  String get Crcl {
    return Intl.message(
      'Caracal',
      name: 'Crcl',
      desc: 'Crcl',
    );
  }
  String get CmmnGnt {
    return Intl.message(
      'Common Genet',
      name: 'CmmnGnt',
      desc: 'CmmnGnt',
    );
  }
  String get NAWldct {
    return Intl.message(
      'North African Wildcat',
      name: 'NAWldct',
      desc: 'NAWldct',
    );
  }
  String get RdFx {
    return Intl.message(
      'Red Fox',
      name: 'RdFx',
      desc: 'RdFx',
    );
  }
  String get StrpdHyn {
    return Intl.message(
      'Striped Hyaena',
      name: 'StrpdHyn',
      desc: 'StrpdHyn',
    );
  }
  String get WTMngs {
    return Intl.message(
      'White Tailed Mongoose',
      name: 'WTMngs',
      desc: 'WTMngs',
    );
  }
  String get Pctrs {
    return Intl.message(
      'Pictures',
      name: 'Pctrs',
      desc: 'Pctrs',
    );
  }
  String get Dscrptn {
    return Intl.message(
      'Description',
      name: 'Dscrptn',
      desc: 'Dscrptn',
    );
  }
  String get Dstrbtn {
    return Intl.message(
      'Distribution',
      name: 'Dstrbtn',
      desc: 'Dstrbtn',
    );
  }
  String get OrxDscrptn {
    return Intl.message(
      'A striking medium-sized antelope with very ling horns. Overall is white in colour with dark brown or black legs, white socks above black hooves, a dark flank stripe and white tail, tipped black. The muzzle tip is white and the dark brown facial markings include a vertical bar that runs through the eye and a patch on the bridge of the nose. In summer the flank stripe and other dark markings of the body are lighter or absent altogether. Both males and females carry almost straight, ringed horns that may reach 70 cm in length. Females usually have thinner and longer horns than males. Sexes are difficult to tell apart except that adult males are heavier set.',
      name: 'OrxDscrptn',
      desc: 'OrxDscrptn',
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization>{
  final Locale overriddenLocale;

  const AppLocalizationDelegate(this.overriddenLocale);

  @override
  bool isSupported(Locale locale) => ['en', 'ar'].contains(locale.languageCode);

  @override
  Future<AppLocalization> load(Locale locale) => AppLocalization.load(locale);

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalization> old) => false;
}

// class AppLocalizations {
//   final Locale locale;
//
//   AppLocalizations(this.locale);
//
//   // Helper method to keep the code in the widgets concise
//   // Localizations are accessed using an InheritedWidget "of" syntax
//   static AppLocalizations of(BuildContext context) {
//     return Localizations.of<AppLocalizations>(context, AppLocalizations);
//   }
//
//   static const LocalizationsDelegate<AppLocalizations> delegate =
//   _AppLocalizationsDelegate();
//
//   Map<String, String> _localizedStrings;
//
//   Future<bool> load() async {
//     // Load the language JSON file from the "lang" folder
//     String jsonString =
//     await rootBundle.loadString('lang/${locale.languageCode}.json');
//     Map<String, dynamic> jsonMap = json.decode(jsonString);
//
//     _localizedStrings = jsonMap.map((key, value) {
//       return MapEntry(key, value.toString());
//     });
//
//     return true;
//   }
//
//   // This method will be called from every widget which needs a localized text
//   String translate(String key) {
//     return _localizedStrings[key];
//   }
// }
//
// // LocalizationsDelegate is a factory for a set of localized resources
// // In this case, the localized strings will be gotten in an AppLocalizations object
// class _AppLocalizationsDelegate
//     extends LocalizationsDelegate<AppLocalizations> {
//   // This delegate instance will never change (it doesn't even have fields!)
//   // It can provide a constant constructor.
//   const _AppLocalizationsDelegate();
//
//   @override
//   bool isSupported(Locale locale) {
//     // Include all of your supported language codes here
//     return ['en', 'sk'].contains(locale.languageCode);
//   }
//
//   @override
//   Future<AppLocalizations> load(Locale locale) async {
//     // AppLocalizations class is where the JSON loading actually runs
//     AppLocalizations localizations = new AppLocalizations(locale);
//     await localizations.load();
//     return localizations;
//   }
//
//   @override
//   bool shouldReload(_AppLocalizationsDelegate old) => false;
// }

