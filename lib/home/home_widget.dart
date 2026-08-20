import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'package:flutter/material.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  static String routeName = 'Home';
  static String routePath = '/home';

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());
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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: custom_widgets.HomeDashboardScreen(
                    width: double.infinity,
                    height: double.infinity,
                    imagePath:
                        'https://github.com/osamanabel1999/App-assets/blob/main/andres-dallimonti-Sc95JJoYaxs-unsplash.jpg?raw=true',
                    onCardTap: () async {
                      context.pushNamed(QuestionsmenuWidget.routeName);
                    },
                    onTermsTap: () async {
                      await launchURL(
                          'https://doc-hosting.flycricket.io/a320-quiz-prep-terms-of-use/1b9fa958-498b-4f3a-bad2-7c1d20f9aa9a/terms');
                    },
                    onPrivacyTap: () async {
                      await launchURL(
                          'https://doc-hosting.flycricket.io/a320-quiz-prep-privacy-policy/224b7238-70a6-4edc-8f31-9a1d4e0dbe75/privacy');
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
