

import 'package:mammals_of_oman/tabsOryx.dart';

class AnimalList {
  final String commonName;
  final String family;
  final String scientificName;
  final link;
  // final String genusName;
  AnimalList({
    this.commonName,
    this.family,
    this.scientificName,
    this.link,
    // this.genusName,
  });
}

    List<AnimalList> loadAnimalList() {
      var fi = <AnimalList>[
        AnimalList(
          commonName: 'Arabian Leopard',
          family: 'Felidae',
          scientificName: 'Panthera pardus',
          link: '',
        ),
        AnimalList(
          commonName: 'Arabian Oryx',
          family: 'Bovidae',
          scientificName: 'Oryx leucoryx',
          link: Oryx(),
        ),
        AnimalList(
          commonName: 'Arabian Wolf',
          family: 'Canidae',
          scientificName: 'Canis lupus',
          link: '',
        ),
        AnimalList(
          commonName: 'Blanfords Fox',
          family: 'Canidae',
          scientificName: 'Vulpes cana',
          link: '',
        ),
        AnimalList(
          commonName: 'Caracal',
          family: 'Felidae',
          scientificName: 'Caracal caracal',
          link: '',
        ),
        AnimalList(
          commonName: 'Common Genet',
          family: 'Viverridae',
          scientificName: 'Genetta genetta',
          link: '',
        ),
        AnimalList(
          commonName: 'North African Wildcat',
          family: 'Felidae',
          scientificName: 'Felis lybica',
          link: '',
        ),
        AnimalList(
          commonName: 'Red Fox',
          family: 'Canidae',
          scientificName: 'Vulpes vulpes',
          link: '',
        ),
        AnimalList(
          commonName: 'Striped Hyaena',
          family: 'Hyaenidae',
          scientificName: 'Hyaena hyaena',
          link: '',
        ),
        AnimalList(
          commonName: 'White Tailed Mongoose',
          family: 'Herpestidae',
          scientificName: 'Ichneumia albicauda',
          link: '',
        ),
        // AnimalList(
        //   commonName: '',
        //   family: '',
        //   genusName: '',
        //   speciesName: '',
        // ),
        // AnimalList(
        //   commonName: '',
        //   family: '',
        //   genusName: '',
        //   speciesName: '',
        // ),
        // AnimalList(
        //   commonName: '',
        //   family: '',
        //   genusName: '',
        //   speciesName: '',
        // ),
      ];
      return fi;
    }

    // getTranslated(context, 'ArbnLprd'),
    // getTranslated(context, 'ArbnOryx'),
    // getTranslated(context, 'ArbnWlf'),
    // getTranslated(context, 'BlnfrdsFx'),
    // getTranslated(context, 'Crcl'),
    // getTranslated(context, 'CmmnGnt'),
    // getTranslated(context, 'NAWldct'),
    // getTranslated(context, 'RdFx'),
    // getTranslated(context, 'StrpdHyn'),
    // getTranslated(context, 'WTMngs'),

