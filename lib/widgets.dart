

import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

//----------------------------------------------------------------------------//
// Widget to send emails to publisher/developer
//----------------------------------------------------------------------------//
launchMailto() async {
  final mailtoLink = Mailto(
    to: ['philip.faure13@gmail.com'],
    cc: ['philip.faure@yahoo.com'],
    subject: 'Mammals of Oman In-App Support',
  );
  // Convert the Mailto instance into a string.
  // Use either Dart's string interpolation
  // or the toString() method.
  await launch('$mailtoLink');
}

//----------------------------------------------------------------------------//
// Widget to .....
//----------------------------------------------------------------------------//


// ---------------------------------------------------------------------------//
// Widget to .....
//----------------------------------------------------------------------------//


//----------------------------------------------------------------------------//
