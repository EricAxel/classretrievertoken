import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'oauthland_widget.dart' show OauthlandWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class OauthlandModel extends FlutterFlowModel<OauthlandWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - parseURLparameter] action in oauthland widget.
  String? urlParameters;
  // Stores action output result for [Backend Call - API (Exchange authorization code for refresh and access tokens)] action in oauthland widget.
  ApiCallResponse? exchangeToken;
  // Stores action output result for [Backend Call - API (exchange token build ship)] action in oauthland widget.
  ApiCallResponse? apiResultli0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
