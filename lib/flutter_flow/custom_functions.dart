import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String? parseGoogleCode(String? url) {
  if (url != null && url.contains('code=')) {
    // Split the string by "&"
    List<String> parameters = url.split('&');
    // Traverse through the parameters
    for (String param in parameters) {
      // Check if the parameter contains "code="
      if (param.contains('code=')) {
        // Split the parameter by "="
        List<String> codeParam = param.split('=');
        // Return the second element which is the code
        return codeParam[1];
      }
    }
  }

  return null;
}

String? parseGooglestate(String? url) {
  if (url != null && url.contains('state=')) {
    // Split the string by "&"
    List<String> parameters = url.split('&');
    // Traverse through the parameters
    for (String param in parameters) {
      // Check if the parameter contains "state="
      if (param.contains('state=')) {
        // Split the parameter by "="
        List<String> stateParam = param.split('=');
        // Return the second element which is the state
        return stateParam[1];
      }
    }
  }

  return null;
}

String? xtractstate(
  String? arg1,
  String? arg2,
  String? arg3,
) {
  // dame el texto que esta despues de arg1 y antes de arg2 de arg3
  if (arg1 == null || arg2 == null || arg3 == null) {
    return null;
  }

  final startIndex = arg3.indexOf(arg1);
  if (startIndex == -1) {
    return null;
  }

  final endIndex = arg3.indexOf(arg2, startIndex + arg1.length);
  if (endIndex == -1) {
    return null;
  }

  return arg3.substring(startIndex + arg1.length, endIndex);
}

String? cleanName(String? arg1) {
  if (arg1 == null) return "";
  return arg1.replaceAll('%20', ' ');
}

int? stringtointeger(String? arg1) {
  // parse arg1 into a integer
  if (arg1 == null) return null; // Check if the input is null
  return int.tryParse(arg1); // Try to parse the string to an integer
}
