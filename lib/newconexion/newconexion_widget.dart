import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'newconexion_model.dart';
export 'newconexion_model.dart';

class NewconexionWidget extends StatefulWidget {
  const NewconexionWidget({super.key});

  static String routeName = 'newconexion';
  static String routePath = '/newconexion';

  @override
  State<NewconexionWidget> createState() => _NewconexionWidgetState();
}

class _NewconexionWidgetState extends State<NewconexionWidget> {
  late NewconexionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewconexionModel());

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
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              constraints: BoxConstraints(
                maxWidth: 800.0,
              ),
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
                  Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
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
                              child: Lottie.network(
                                'https://lottie.host/c45ebbb7-aad0-4c0e-b717-a1d76b395ce3/koWWiliIWb.json',
                                width: 150.0,
                                height: 130.0,
                                fit: BoxFit.cover,
                                repeat: false,
                                animate: true,
                              ),
                            ),
                          ],
                        ),
                        SelectionArea(
                            child: Text(
                          '🚀 Hooray! \nYour connection is now active!\nWelcome aboard! 🎊',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                    lineHeight: 1.5,
                                  ),
                        )),
                      ].divide(SizedBox(height: 24.0)),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
