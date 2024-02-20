import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/navigation/bottom_nav/bottom_nav/bottom_nav_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'alert_model.dart';
export 'alert_model.dart';

class AlertWidget extends StatefulWidget {
  const AlertWidget({super.key});

  @override
  State<AlertWidget> createState() => _AlertWidgetState();
}

class _AlertWidgetState extends State<AlertWidget> {
  late AlertModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AlertModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).btnColor,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.bottomNavModel,
                  updateCallback: () => setState(() {}),
                  child: const BottomNavWidget(
                    selectedPageIndex: 5,
                    hiddenNav: false,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
