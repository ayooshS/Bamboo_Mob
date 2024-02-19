import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'label_shot_small_model.dart';
export 'label_shot_small_model.dart';

class LabelShotSmallWidget extends StatefulWidget {
  const LabelShotSmallWidget({
    super.key,
    this.labelText,
    Color? color,
  }) : color = color ?? const Color(0xFFEAEEF4);

  final String? labelText;
  final Color color;

  @override
  State<LabelShotSmallWidget> createState() => _LabelShotSmallWidgetState();
}

class _LabelShotSmallWidgetState extends State<LabelShotSmallWidget> {
  late LabelShotSmallModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LabelShotSmallModel());
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
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 8.0,
                  height: 8.0,
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
                  style: FlutterFlowTheme.of(context).labelSmall,
                ),
              ].divide(const SizedBox(width: 2.0)),
            ),
          ),
        ),
      ],
    );
  }
}
