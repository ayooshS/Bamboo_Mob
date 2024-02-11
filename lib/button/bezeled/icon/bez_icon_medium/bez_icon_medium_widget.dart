import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'bez_icon_medium_model.dart';
export 'bez_icon_medium_model.dart';

class BezIconMediumWidget extends StatefulWidget {
  const BezIconMediumWidget({
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
  State<BezIconMediumWidget> createState() => _BezIconMediumWidgetState();
}

class _BezIconMediumWidgetState extends State<BezIconMediumWidget> {
  late BezIconMediumModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BezIconMediumModel());
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
        height: 40.0,
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
        color: FlutterFlowTheme.of(context).infoPrimary,
        textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Nunito',
              color: FlutterFlowTheme.of(context).primary,
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
