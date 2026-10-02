// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/services.dart';
import 'dart:html' as html;

Future<String> parseURLparameter() async {
  String currentURL = html.window.location.href;

  // Check if the URL contains "?"
  if (currentURL.contains('?')) {
    // Get the substring that comes after the "?" sign
    String parameterString = currentURL.split('?')[1];
    return parameterString;
  } else {
    throw new PlatformException(
      code: 'ERROR_MISSING_PARAMETER',
      details: 'URL does not contain a "?" sign.',
    );
  }
}
