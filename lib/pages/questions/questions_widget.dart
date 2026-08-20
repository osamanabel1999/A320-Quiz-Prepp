import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'questions_model.dart';
export 'questions_model.dart';

class QuestionsWidget extends StatefulWidget {
  const QuestionsWidget({super.key});

  static String routeName = 'QUESTIONS';
  static String routePath = '/questions';

  @override
  State<QuestionsWidget> createState() => _QuestionsWidgetState();
}

class _QuestionsWidgetState extends State<QuestionsWidget> {
  late QuestionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuestionsModel());
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
            'A320 Questions',
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
              if (FFAppState().Questions == 1.0)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.A320ExamWidget(
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
              if (FFAppState().Questions == 2.0)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.A320ApuExamWidget(
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
              if (FFAppState().Questions == 3.0)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.A320AutoFlightExamWidget(
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
              if (FFAppState().Questions == 4.0)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.A320CommunicationsExamWidget(
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
              if (FFAppState().Questions == 5.0)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.A320DoorsExamWidget(
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
              if (FFAppState().Questions == 6.0)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.A320ElectricalExamWidget(
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
              if (FFAppState().Questions == 7.0)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.A320EnginesExamWidget(
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
              if (FFAppState().Questions == 8.0)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.A320EquipmentExamWidget(
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
              if (FFAppState().Questions == 9.0)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.A320FireProtectionExamWidget(
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
              if (FFAppState().Questions == 10.0)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.A320FlightControlsExamWidget(
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
              if (FFAppState().Questions == 11.0)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.FmgsNavigationQuizWidget(
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
              if (FFAppState().Questions == 12.0)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.A320FuelQuizWidget(
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
              if (FFAppState().Questions == 13.0)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.A320HydraulicsQuizWidget(
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
              if (FFAppState().Questions == 14.0)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.A320IceAndRainQuizWidget(
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
              if (FFAppState().Questions == 15.0)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.A320OxygenQuizWidget(
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
              if (FFAppState().Questions == 16.0)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.A320PneumaticsQuizWidget(
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
              if (FFAppState().Questions == 17.0)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.IndicatingAndRecordingQuizWidget(
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
              FlutterFlowAdBanner(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 50.0,
                showsTestAd: true,
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
