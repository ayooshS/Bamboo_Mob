import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'bez_icon_small_model.dart';
export 'bez_icon_small_model.dart';

class BezIconSmallWidget extends StatefulWidget {
  const BezIconSmallWidget({
    super.key,
    String? buttonText,
    this.icon,
    bool? isDisabled,
  })  : buttonText = buttonText ?? 'Apply',
        isDisabled = isDisabled ?? true;

  final String buttonText;
  final Widget? icon;
  final bool isDisabled;

  @override
  State<BezIconSmallWidget> createState() => _BezIconSmallWidgetState();
}

class _BezIconSmallWidgetState extends State<BezIconSmallWidget> {
  late BezIconSmallModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BezIconSmallModel());
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
      icon: widget.icon,
      options: FFButtonOptions(
        height: 28.0,
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 3.0, 0.0),
        color: FlutterFlowTheme.of(context).infoPrimary,
        textStyle: FlutterFlowTheme.of(context).labelMedium.override(
              fontFamily: 'Nunito',
              color: FlutterFlowTheme.of(context).primary,
            ),
        elevation: 0.0,
        borderSide: const BorderSide(
          color: Colors.transparent,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(40.0),
        disabledColor: FlutterFlowTheme.of(context).buttonGrey,
        disabledTextColor: FlutterFlowTheme.of(context).typeLow,
      ),
    );
  }
}
