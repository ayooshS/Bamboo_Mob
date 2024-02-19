import '/chips_labels/icon_type/type_icon/type_icon_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'dsb_default_model.dart';
export 'dsb_default_model.dart';

class DsbDefaultWidget extends StatefulWidget {
  const DsbDefaultWidget({
    super.key,
    this.icon,
    this.labelText,
  });

  final Widget? icon;
  final String? labelText;

  @override
  State<DsbDefaultWidget> createState() => _DsbDefaultWidgetState();
}

class _DsbDefaultWidgetState extends State<DsbDefaultWidget> {
  late DsbDefaultModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DsbDefaultModel());
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
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Nunito',
                          color: FlutterFlowTheme.of(context).typeLow,
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
