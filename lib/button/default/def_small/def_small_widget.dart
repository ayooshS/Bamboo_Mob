import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'def_small_model.dart';
export 'def_small_model.dart';

class DefSmallWidget extends StatefulWidget {
  const DefSmallWidget({
    super.key,
    String? buttonText,
    bool? isDisabled,
  })  : buttonText = buttonText ?? 'Apply',
        isDisabled = isDisabled ?? true;

  final String buttonText;
  final bool isDisabled;

  @override
  State<DefSmallWidget> createState() => _DefSmallWidgetState();
}

class _DefSmallWidgetState extends State<DefSmallWidget> {
  late DefSmallModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DefSmallModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: widget.isDisabled
          ? null
          : () {
              print('Button pressed ...');
            },
      text: widget.buttonText,
      options: FFButtonOptions(
        height: 28.0,
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 3.0, 0.0),
        color: FlutterFlowTheme.of(context).buttonGrey,
        textStyle: FlutterFlowTheme.of(context).labelMedium.override(
              fontFamily: 'Nunito',
              color: FlutterFlowTheme.of(context).typeHigh,
            ),
        elevation: 0.0,
        borderSide: const BorderSide(
          color: Colors.transparent,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(40.0),
        disabledColor: FlutterFlowTheme.of(context).transparent,
        disabledTextColor: FlutterFlowTheme.of(context).typeLow,
      ),
    );
  }
}
