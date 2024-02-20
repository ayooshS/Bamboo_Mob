import '/chips_labels/label_shot/label_shot_large/label_shot_large_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/progress/horizontal/horizontal_widget.dart';
import 'package:flutter/material.dart';
import 'bank_card_large_model.dart';
export 'bank_card_large_model.dart';

class BankCardLargeWidget extends StatefulWidget {
  const BankCardLargeWidget({
    super.key,
    this.icon,
    bool? isLeftRow,
    bool? isRightRow,
    bool? isProgressBar,
    this.rightText,
    this.leftPrimText,
    this.leftSecText,
    required this.labelText,
    this.textMeta,
    required this.imgePath,
  })  : isLeftRow = isLeftRow ?? true,
        isRightRow = isRightRow ?? true,
        isProgressBar = isProgressBar ?? true;

  final Widget? icon;
  final bool isLeftRow;
  final bool isRightRow;
  final bool isProgressBar;
  final String? rightText;
  final String? leftPrimText;
  final String? leftSecText;
  final String? labelText;
  final String? textMeta;
  final String? imgePath;

  @override
  State<BankCardLargeWidget> createState() => _BankCardLargeWidgetState();
}

class _BankCardLargeWidgetState extends State<BankCardLargeWidget> {
  late BankCardLargeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BankCardLargeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345.0,
      height: 215.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).nextWarning,
        boxShadow: const [
          BoxShadow(
            blurRadius: 35.0,
            color: Color(0x19000000),
            offset: Offset(0.0, 15.0),
          )
        ],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(18.0, 12.0, 18.0, 12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 36.0,
                  height: 36.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).buttonColor,
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.network(
                        widget.imgePath!,
                        width: 24.0,
                        height: 24.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Axis Small Finance ',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Nunito',
                            color: FlutterFlowTheme.of(context).buttonColor,
                          ),
                    ),
                    Text(
                      'Supply Chain Finance',
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            fontFamily: 'Nunito',
                            color: FlutterFlowTheme.of(context).buttonColor,
                          ),
                    ),
                  ].divide(const SizedBox(height: 0.0)),
                ),
              ].divide(const SizedBox(width: 8.0)),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            valueOrDefault<String>(
                              widget.textMeta,
                              'some1',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  fontFamily: 'Nunito',
                                  color:
                                      FlutterFlowTheme.of(context).buttonColor,
                                ),
                          ),
                          if (widget.isProgressBar)
                            wrapWithModel(
                              model: _model.horizontalModel,
                              updateCallback: () => setState(() {}),
                              child: HorizontalWidget(
                                isLeftRow: widget.isLeftRow,
                                isRightRow: widget.isRightRow,
                                icon: widget.icon,
                                rightTextColor:
                                    FlutterFlowTheme.of(context).buttonColor,
                                leftTextPrimColor:
                                    FlutterFlowTheme.of(context).buttonColor,
                                leftTextSecColor:
                                    FlutterFlowTheme.of(context).buttonColor,
                              ),
                            ),
                        ],
                      ),
                      Container(
                        decoration: const BoxDecoration(),
                        child: wrapWithModel(
                          model: _model.labelShotLargeModel,
                          updateCallback: () => setState(() {}),
                          child: LabelShotLargeWidget(
                            icon: widget.icon,
                            labelText: widget.labelText,
                            color: FlutterFlowTheme.of(context).nextAccent,
                            colorText: FlutterFlowTheme.of(context).buttonColor,
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(height: 8.0)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
