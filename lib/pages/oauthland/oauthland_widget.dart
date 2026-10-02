import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'oauthland_model.dart';
export 'oauthland_model.dart';

class OauthlandWidget extends StatefulWidget {
  const OauthlandWidget({
    super.key,
    String? user,
  }) : this.user = user ?? 'defaultoken';

  final String user;

  static String routeName = 'oauthland';
  static String routePath = '/oauthland';

  @override
  State<OauthlandWidget> createState() => _OauthlandWidgetState();
}

class _OauthlandWidgetState extends State<OauthlandWidget> {
  late OauthlandModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OauthlandModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.urlParameters = await actions.parseURLparameter();
      FFAppState().code = functions.parseGoogleCode(_model.urlParameters)!;
      FFAppState().update(() {});
      _model.exchangeToken =
          await ExchangeAuthorizationCodeForRefreshAndAccessTokensCall.call(
        code: functions.parseGoogleCode(_model.urlParameters),
        clientId:
            '633677209986-ts4b909gjsck167qvvhcfvd94kockufa.apps.googleusercontent.com',
        clientSecret: '',
        redirectUri: 'https://classretrivertoken.flutterflow.app',
        grantType: 'authorization_code',
      );

      if ((_model.exchangeToken?.succeeded ?? true)) {
        _model.apiResultli0 = await ExchangeTokenBuildShipCall.call(
          user: functions.xtractstate(
              'A01X', 'A02X', functions.parseGooglestate(_model.urlParameters)),
          token: getJsonField(
            (_model.exchangeToken?.jsonBody ?? ''),
            r'''$.access_token''',
          ).toString(),
          name: functions.cleanName(functions.xtractstate('A02X', 'A03X',
              functions.parseGooglestate(_model.urlParameters))),
          refreshtoken: getJsonField(
            (_model.exchangeToken?.jsonBody ?? ''),
            r'''$.refresh_token''',
          ).toString(),
          email: functions.xtractstate(
              'A03X', 'A04X', functions.parseGooglestate(_model.urlParameters)),
        );
      } else {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text((_model.exchangeToken?.succeeded ?? true).toString()),
              content: Text((_model.exchangeToken?.bodyText ?? '')),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
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
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      decoration: BoxDecoration(),
                      child:
                          // To do:
                          // Hay probelmas pasando el client reference ID como variable de estado. Lo paso como parametro? trato con el correo electronico?
                          //
                          // Hay que hacer enrollment  y reenviar a pagina del creador.
                          //
                          // Hay que ajustar boton de subscribir para que refleje el estado de la subscripcion.
                          //
                          //
                          // Que pasa si la respuesta es negativa?
                          //
                          Padding(
                        padding: EdgeInsets.all(24.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Lottie.asset(
                                      'assets/jsons/Animation_-_1743830796824.json',
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.289,
                                      fit: BoxFit.cover,
                                      animate: true,
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/dog_with_party_hat.png',
                                        width: 200.0,
                                        height: 200.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SelectionArea(
                                  child: Text(
                                'Hooray! \nYour connection is now active!\nWelcome aboard!',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                      lineHeight: 1.5,
                                    ),
                              )),
                            ].divide(SizedBox(height: 50.0)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
