import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'horizontal_model.dart';
export 'horizontal_model.dart';

class HorizontalWidget extends StatefulWidget {
  const HorizontalWidget({
    super.key,
    this.rightText,
    this.leftTextPrimary,
    this.leftTextSecondary,
    bool? isLeftRow,
    bool? isRightRow,
    this.icon,
    this.rightTextColor,
    this.leftTextPrimColor,
    this.leftTextSecColor,
  })  : isLeftRow = isLeftRow ?? true,
        isRightRow = isRightRow ?? true;

  final String? rightText;
  final String? leftTextPrimary;
  final String? leftTextSecondary;
  final bool isLeftRow;
  final bool isRightRow;
  final Widget? icon;
  final Color? rightTextColor;
  final Color? leftTextPrimColor;
  final Color? leftTextSecColor;

  @override
  State<HorizontalWidget> createState() => _HorizontalWidgetState();
}

class _HorizontalWidgetState extends State<HorizontalWidget> {
  late HorizontalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HorizontalModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            if (widget.isLeftRow)
              Flexible(
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget.leftTextPrimary,
                          '75',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Nunito',
                              color: widget.leftTextPrimColor,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.leftTextSecondary,
                          '/ 50 L',
                        ),
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              fontFamily: 'Nunito',
                              color: widget.leftTextSecColor,
                            ),
                      ),
                    ].divide(const SizedBox(width: 4.0)),
                  ),
                ),
              ),
            if (widget.isRightRow)
              Flexible(
                child: Align(
                  alignment: const AlignmentDirectional(1.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget.rightText,
                          'Extend',
                        ),
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              fontFamily: 'Nunito',
                              color: widget.rightTextColor,
                            ),
                      ),
                      widget.icon!,
                    ].divide(const SizedBox(width: 8.0)),
                  ),
                ),
              ),
          ],
        ),
        Flexible(
          child: LinearPercentIndicator(
            percent: 0.5,
            lineHeight: 4.0,
            animation: true,
            animateFromLastPercent: true,
            progressColor: FlutterFlowTheme.of(context).primary,
            backgroundColor: FlutterFlowTheme.of(context).elevation01,
            barRadius: const Radius.circular(2.0),
            padding: EdgeInsets.zero,
          ),
        ),
      ].divide(const SizedBox(height: 8.0)),
    );
  }
}
