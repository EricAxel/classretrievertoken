import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'request_permission_model.dart';
export 'request_permission_model.dart';

class RequestPermissionWidget extends StatefulWidget {
  const RequestPermissionWidget({
    super.key,
    required this.data,
  });

  final String? data;

  static String routeName = 'requestPermission';
  static String routePath = '/requestPermission';

  @override
  State<RequestPermissionWidget> createState() =>
      _RequestPermissionWidgetState();
}

class _RequestPermissionWidgetState extends State<RequestPermissionWidget> {
  late RequestPermissionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RequestPermissionModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.buildshipcounter = await PreviousConnectionCall.call(
        email: functions.xtractstate('AX2', 'AX3', widget!.data),
      );

      if (functions
              .stringtointeger((_model.buildshipcounter?.bodyText ?? ''))! >=
          1) {
        _model.apiResulto19 = await AddUidToListCall.call(
          uid: functions.xtractstate('AX0', 'AX1', widget!.data),
          studentemail: functions.xtractstate('AX2', 'AX3', widget!.data),
        );

        context.pushNamed(NewconexionWidget.routeName);
      } else {
        await launchURL(
            'https://accounts.google.com/o/oauth2/v2/auth?scope=https://www.googleapis.com/auth/classroom.courses.readonly%20https://www.googleapis.com/auth/classroom.course-work.readonly%20https://www.googleapis.com/auth/classroom.student-submissions.me.readonly%20&response_type=code&client_id=633677209986-ts4b909gjsck167qvvhcfvd94kockufa.apps.googleusercontent.com&redirect_uri=https://classretrivertoken.flutterflow.app&state=A01X${functions.xtractstate('AX0', 'AX1', widget!.data)}A02X${functions.xtractstate('AX1', 'AX2', widget!.data)}A03X${functions.xtractstate('AX2', 'AX3', widget!.data)}A04X&access_type=offline');
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      ),
    );
  }
}
