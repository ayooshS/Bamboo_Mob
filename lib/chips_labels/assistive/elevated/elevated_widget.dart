import '/chips_labels/icon_type/type_icon/type_icon_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'elevated_model.dart';
export 'elevated_model.dart';

class ElevatedWidget extends StatefulWidget {
  const ElevatedWidget({
    super.key,
    this.icon,
    this.labelText,
    Color? color,
  }) : color = color ?? const Color(0xFFEAEEF4);

  final Widget? icon;
  final String? labelText;
  final Color color;

  @override
  State<ElevatedWidget> createState() => _ElevatedWidgetState();
}

class _ElevatedWidgetState extends State<ElevatedWidget> {
  late ElevatedModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ElevatedModel());
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
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: const AlignmentDirectional(-1.0, 0.0),
          child: Container(
            height: 20.0,
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 2.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: wrapWithModel(
                      model: _model.typeIconModel,
                      updateCallback: () => setState(() {}),
                      child: TypeIconWidget(
                        icon: widget.icon!,
                      ),
                    ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget.labelText,
                      'Label',
                    ),
                    style: FlutterFlowTheme.of(context).labelSmall,
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
