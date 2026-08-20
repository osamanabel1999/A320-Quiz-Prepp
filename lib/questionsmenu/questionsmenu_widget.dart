import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'questionsmenu_model.dart';
export 'questionsmenu_model.dart';

class QuestionsmenuWidget extends StatefulWidget {
  const QuestionsmenuWidget({super.key});

  static String routeName = 'Questionsmenu';
  static String routePath = '/questionsmenu';

  @override
  State<QuestionsmenuWidget> createState() => _QuestionsmenuWidgetState();
}

class _QuestionsmenuWidgetState extends State<QuestionsmenuWidget> {
  late QuestionsmenuModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuestionsmenuModel());
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'MENU',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.interTight(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: custom_widgets.A320SubjectsMenu(
                    width: double.infinity,
                    height: double.infinity,
                    onA320ExamTap: () async {
                      FFAppState().Questions = 1.0;
                      safeSetState(() {});

                      context.pushNamed(QuestionsWidget.routeName);
                    },
                    onApuTap: () async {
                      FFAppState().Questions = 2.0;
                      safeSetState(() {});

                      context.pushNamed(QuestionsWidget.routeName);
                    },
                    onAutoFlightTap: () async {
                      FFAppState().Questions = 3.0;
                      safeSetState(() {});

                      context.pushNamed(QuestionsWidget.routeName);
                    },
                    onCommunicationsTap: () async {
                      FFAppState().Questions = 4.0;
                      safeSetState(() {});

                      context.pushNamed(QuestionsWidget.routeName);
                    },
                    onDoorsTap: () async {
                      FFAppState().Questions = 5.0;
                      safeSetState(() {});

                      context.pushNamed(QuestionsWidget.routeName);
                    },
                    onElectricalTap: () async {
                      FFAppState().Questions = 6.0;
                      safeSetState(() {});

                      context.pushNamed(QuestionsWidget.routeName);
                    },
                    onEnginesTap: () async {
                      FFAppState().Questions = 7.0;
                      safeSetState(() {});

                      context.pushNamed(QuestionsWidget.routeName);
                    },
                    onEquipmentTap: () async {
                      FFAppState().Questions = 8.0;
                      safeSetState(() {});

                      context.pushNamed(QuestionsWidget.routeName);
                    },
                    onFireProtectionTap: () async {
                      FFAppState().Questions = 9.0;
                      safeSetState(() {});

                      context.pushNamed(QuestionsWidget.routeName);
                    },
                    onFlightControlsTap: () async {
                      FFAppState().Questions = 10.0;
                      safeSetState(() {});

                      context.pushNamed(QuestionsWidget.routeName);
                    },
                    onFmgsNavigationTap: () async {
                      FFAppState().Questions = 11.0;
                      safeSetState(() {});

                      context.pushNamed(QuestionsWidget.routeName);
                    },
                    onFuelTap: () async {
                      FFAppState().Questions = 12.0;
                      safeSetState(() {});

                      context.pushNamed(QuestionsWidget.routeName);
                    },
                    onHydraulicsTap: () async {
                      FFAppState().Questions = 13.0;
                      safeSetState(() {});

                      context.pushNamed(QuestionsWidget.routeName);
                    },
                    onIceAndRainTap: () async {
                      FFAppState().Questions = 14.0;
                      safeSetState(() {});

                      context.pushNamed(QuestionsWidget.routeName);
                    },
                    onOxygenTap: () async {
                      FFAppState().Questions = 15.0;
                      safeSetState(() {});

                      context.pushNamed(QuestionsWidget.routeName);
                    },
                    onPneumaticsTap: () async {
                      FFAppState().Questions = 16.0;
                      safeSetState(() {});

                      context.pushNamed(QuestionsWidget.routeName);
                    },
                    onIndicatingAndRecordingTap: () async {
                      FFAppState().Questions = 17.0;
                      safeSetState(() {});

                      context.pushNamed(QuestionsWidget.routeName);
                    },
                  ),
                ),
              ),
              FlutterFlowAdBanner(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 50.0,
                showsTestAd: false,
                iOSAdUnitID: 'ca-app-pub-7880697829268273/3491877192',
                androidAdUnitID: 'ca-app-pub-7880697829268273/3083170315',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
