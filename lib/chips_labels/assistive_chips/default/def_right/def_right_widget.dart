import '/components/type_icon_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'def_right_model.dart';
export 'def_right_model.dart';

class DefRightWidget extends StatefulWidget {
  const DefRightWidget({
    super.key,
    this.icon,
    this.labelText,
  });

  final Widget? icon;
  final String? labelText;

  @override
  State<DefRightWidget> createState() => _DefRightWidgetState();
}

class _DefRightWidgetState extends State<DefRightWidget> {
  late DefRightModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DefRightModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: const AlignmentDirectional(-1.0, 0.0),
          child: Container(
            height: 20.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).transparent,
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).inputBorder,
              ),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 2.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget.labelText,
                      'Label',
                    ),
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Nunito',
                          color: FlutterFlowTheme.of(context).typeHigh,
                        ),
                  ),
                  wrapWithModel(
                    model: _model.typeIconModel,
                    updateCallback: () => setState(() {}),
                    child: TypeIconWidget(
                      icon: widget.icon!,
                    ),
                  ),
                ].divide(const SizedBox(width: 8.0)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
