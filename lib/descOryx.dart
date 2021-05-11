

import 'package:flutter/material.dart';
import 'package:mammals_of_oman/v_language_constants.dart';
import './app_localizations.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class DescOryx extends StatefulWidget{
  _DescOryx createState()=> _DescOryx();
}

class _DescOryx extends State<DescOryx>{

  // final String title;
  // _DescOryx(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Need to wrap these text boxes into separate functions to be able
                  // to use them in all the species pages and thereby save on written
                  // code and ensure everything is standardised across the app.
                  Text(
                    getTranslated(context, 'ArbnOryx'),
                    // AppLocalization.of(context).ArbnOryx,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[900],
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    'Oryx leucoryx',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.blueGrey[900],
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      'Arabic: Al Maha',
                      style: TextStyle(
                        color: Colors.blueGrey[900],
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget> [
                            Text(
                                'DESCRIPTION',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                )
                            ),
                            Text(
                              getTranslated(context, 'OrxDscrptn'),
                              // AppLocalization.of(context).OrxDscrptn,
                              // locale: ...,
                            ),
                          ]
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget> [
                            Text(
                                'DISTRIBUTION & HABITAT',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                )
                            ),
                            Text(
                                'Once widespread across the Middle East, the last wild Oryx was killed by hunters in 1972. It was the reintroduced across the region; the first reintroduction being in 1982 to the Jiddat Al Harasis in the Central Gravel Desert of Oman. The population grew to about 450 by 1995 but after heavy poaching surviving animals were returned to captivity in the early 2000s. Since that time further releases have successfully restored a free-ranging population within the partially fenced Al Wusta Wildlife Reserve. Preferred habitat is the open gravel desert where scattered trees provide essential shade. In former times it ranged into the sand deserts of the Empty Quarter and Sharqiyyah Sands during the cooler winter months, but the lack of shade meant it could not remain during the hot summer.'
                            ),
                          ]
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget> [
                            Text(
                                'HABITATS',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                )
                            ),
                            Text(
                                'Gregarious and most animals live in small herds usually numbering less than 15; herd size may increase when grazing is good. Herds include a single dominant \'alpha\' male with a matriarchal female leading the herd. Young adult males are often solitary. Highly nomadic and, especially following distant rainfall, females will lead herds up to 100 kilometres in search of fresh grazing. Males establish territories that they mark, and territorial conflicts may be fatal. Active all times of the day but during the hottest times will seek the shade of trees, particularly the unbrella shaped Acacia spp. trees of the gravel plains. In summer it may rest most of the day and feed mainly at night. In winter it grazes by day, often basking in  the open to absorb heat, and at night seeks shelter from cold winter winds.'
                            ),
                          ]
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget> [
                            Text(
                                'DIET',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                )
                            ),
                            Text(
                                'A grazer that prefers the ephemeral grasses and herbs that follow rainfall but will browse the new growth of perennial trees, particularly during drought. If it smells new rainfall it will walk great distances to find the resultant grazing. Not dependent on free-standing water, it meets its water needs from plants and other surfaces. Drinks water when available.'
                            ),
                          ]
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget> [
                            Text(
                                'BREEDING',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                )
                            ),
                            Text(
                                'In good conditions, after a gestation period of about 264 days, females may give birth to a single calf and very rarely to twins. For the first month of its life the calf is left \'lying-out\' away from the herd in a place known only to its mother. To further help protect it against predators the calf is a sandy-brown colour. Later calves may join a nursery creche with calves of a similar age. Most calves are born in March to April but births occur throughout the year. A female can reach breeding maturity at 20 months, and can conceive again 10 days after giving birth, allowing it to take advantage of good conditions following unseasonal rainfall. In drought it is less likely to conceive or may abandon its newborn calf. Lifespan on the wild is likely to be 13-18 years, significantly less than in captivity.'
                            ),
                          ]
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget> [
                            Text(
                                'SIGNS',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                )
                            ),
                            Text(
                                'Leaves behind few signs although the large cloven hoofs form an unmistakable almost heart-shaped print. Droppings are cylindrical, one end is tapered and they measure approximately 16-18 mm long by 8-10 mm wide; usually scattered over the ground. Small dung heaps are characteristic of territorial males. Largely silent except for little grunting noises made by females with calves and the bellow of hungry calves.'
                            ),
                          ]
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget> [
                            Text(
                                'WHERE TO LOOK',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                )
                            ),
                            Text(
                                'Only occurs in Al Wusta Wildlife Reserve.'
                            ),
                          ]
                      ),
                    ),
                  ),
                ]
            )
        ),
      ),
    );
  }

}