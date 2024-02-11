import '/components/type_icon_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'elevated_right_model.dart';
export 'elevated_right_model.dart';

class ElevatedRightWidget extends StatefulWidget {
  const ElevatedRightWidget({
    super.key,
    this.icon,
    this.labelText,
  });

  final Widget? icon;
  final String? labelText;

  @override
  State<ElevatedRightWidget> createState() => _ElevatedRightWidgetState();
}

class _ElevatedRightWidgetState extends State<ElevatedRightWidget> {
  late ElevatedRightModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ElevatedRightModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: const AlignmentDirectional(-1.0, 0.0),
          child: Container(
            height: 20.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).elevation02,
              borderRadius: BorderRadius.circular(4.0),
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
                    style: FlutterFlowTheme.of(context).labelSmall,
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
