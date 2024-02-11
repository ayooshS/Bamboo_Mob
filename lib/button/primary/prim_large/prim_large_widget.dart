import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'prim_large_model.dart';
export 'prim_large_model.dart';

class PrimLargeWidget extends StatefulWidget {
  const PrimLargeWidget({
    super.key,
    String? buttonText,
    bool? isDisabled,
  })  : buttonText = buttonText ?? 'Apply',
        isDisabled = isDisabled ?? true;

  final String buttonText;
  final bool isDisabled;

  @override
  State<PrimLargeWidget> createState() => _PrimLargeWidgetState();
}

class _PrimLargeWidgetState extends State<PrimLargeWidget> {
  late PrimLargeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrimLargeModel());
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
        height: 48.0,
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 3.0, 0.0),
        color: FlutterFlowTheme.of(context).primary,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Readex Pro',
              color: FlutterFlowTheme.of(context).buttonColor,
            ),
        elevation: 0.0,
        borderSide: const BorderSide(
          color: Colors.transparent,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
        disabledColor: FlutterFlowTheme.of(context).buttonGrey,
        disabledTextColor: FlutterFlowTheme.of(context).typeLow,
      ),
    );
  }
}
