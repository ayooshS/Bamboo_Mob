import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'label_shot_large_model.dart';
export 'label_shot_large_model.dart';

class LabelShotLargeWidget extends StatefulWidget {
  const LabelShotLargeWidget({
    super.key,
    this.icon,
    this.labelText,
    Color? color,
  }) : color = color ?? const Color(0xFFEAEEF4);

  final Widget? icon;
  final String? labelText;
  final Color color;

  @override
  State<LabelShotLargeWidget> createState() => _LabelShotLargeWidgetState();
}

class _LabelShotLargeWidgetState extends State<LabelShotLargeWidget> {
  late LabelShotLargeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LabelShotLargeModel());
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
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).transparent,
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 12.0,
                  height: 12.0,
                  decoration: BoxDecoration(
                    color: widget.color,
                    borderRadius: BorderRadius.circular(100.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).buttonColor,
                      width: 1.0,
                    ),
                  ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget.labelText,
                    'Label',
                  ),
                  style: FlutterFlowTheme.of(context).bodySmall,
                ),
              ].divide(const SizedBox(width: 8.0)),
            ),
          ),
        ),
      ],
    );
  }
}
