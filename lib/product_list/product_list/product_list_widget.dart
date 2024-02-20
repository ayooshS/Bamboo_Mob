import '/button/default/def_small/def_small_widget.dart';
import '/button/default/icon/def_icon_small/def_icon_small_widget.dart';
import '/button/primary/icon/prim_icon_small/prim_icon_small_widget.dart';
import '/button/primary/prim_small/prim_small_widget.dart';
import '/chips_labels/assistive/def/def_widget.dart';
import '/chips_labels/assistive/elevated/elevated_widget.dart';
import '/chips_labels/label_shot/label_shot_small/label_shot_small_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'product_list_model.dart';
export 'product_list_model.dart';

class ProductListWidget extends StatefulWidget {
  const ProductListWidget({
    super.key,
    this.iconLableOverline,
    String? headerText,
    this.textLabelOverline,
    Color? colorLabelOverline,
    this.headerIcon,
    this.subText,
    String? trailingMainText,
    String? buttonText,
    this.labelElevIcon1,
    this.labelElevIcon2,
    this.labelElevIcon3,
    this.labelDefIcon1,
    this.labelDefIcon2,
    this.labelDefIcon3,
    this.labelElevText1,
    this.labelElevText2,
    this.labelElevText3,
    this.labelDefText1,
    this.labelDefText2,
    this.labelDefText3,
    this.primButtonText,
    this.defButtonText,
    this.primButtonIcon,
    this.defButtonIcon,
    this.trailingMetaText,
    required this.labelShotText,
    Color? labelShotColor,
    this.footerIcon1,
    this.footerIcon2,
    this.footerIcon3,
    this.footerText1,
    this.footerText2,
    this.footerText3,
    this.semanticText,
    Color? semanticColor,
    Color? semanticIconColor,
    bool? isLabelHeader,
    bool? isSemantic,
    bool? isMore,
    bool? isHeaderIcon,
    bool? isHeaderText,
    bool? isSubText,
    bool? isTrailingText,
    bool? isPrimaryButton,
    bool? isPrimaryButtonIcon,
    bool? isDefaultButton,
    bool? isDefaultButtonIcon,
    bool? isTrailingMeta,
    bool? isLabelElev1,
    bool? isLabelElev2,
    bool? isLabelElev3,
    bool? isLabelDef1,
    bool? isLabelDef2,
    bool? isLabelDef3,
    bool? isLabelshot,
    bool? isFooter1,
    bool? isFooter2,
    bool? isFooter3,
  })  : headerText = headerText ?? 'Product name',
        colorLabelOverline = colorLabelOverline ?? const Color(0xFFEAEEF4),
        trailingMainText = trailingMainText ?? 'Quantity ',
        buttonText = buttonText ?? 'Apply',
        labelShotColor = labelShotColor ?? const Color(0xFF00C356),
        semanticColor = semanticColor ?? const Color(0xFF00C356),
        semanticIconColor = semanticIconColor ?? const Color(0xFF00C356),
        isLabelHeader = isLabelHeader ?? true,
        isSemantic = isSemantic ?? true,
        isMore = isMore ?? true,
        isHeaderIcon = isHeaderIcon ?? true,
        isHeaderText = isHeaderText ?? true,
        isSubText = isSubText ?? true,
        isTrailingText = isTrailingText ?? true,
        isPrimaryButton = isPrimaryButton ?? true,
        isPrimaryButtonIcon = isPrimaryButtonIcon ?? true,
        isDefaultButton = isDefaultButton ?? true,
        isDefaultButtonIcon = isDefaultButtonIcon ?? true,
        isTrailingMeta = isTrailingMeta ?? true,
        isLabelElev1 = isLabelElev1 ?? true,
        isLabelElev2 = isLabelElev2 ?? true,
        isLabelElev3 = isLabelElev3 ?? true,
        isLabelDef1 = isLabelDef1 ?? true,
        isLabelDef2 = isLabelDef2 ?? true,
        isLabelDef3 = isLabelDef3 ?? true,
        isLabelshot = isLabelshot ?? true,
        isFooter1 = isFooter1 ?? true,
        isFooter2 = isFooter2 ?? true,
        isFooter3 = isFooter3 ?? true;

  final Widget? iconLableOverline;
  final String headerText;
  final String? textLabelOverline;
  final Color colorLabelOverline;
  final Widget? headerIcon;
  final String? subText;
  final String trailingMainText;
  final String buttonText;
  final Widget? labelElevIcon1;
  final Widget? labelElevIcon2;
  final Widget? labelElevIcon3;
  final Widget? labelDefIcon1;
  final Widget? labelDefIcon2;
  final Widget? labelDefIcon3;
  final String? labelElevText1;
  final String? labelElevText2;
  final String? labelElevText3;
  final String? labelDefText1;
  final String? labelDefText2;
  final String? labelDefText3;
  final String? primButtonText;
  final String? defButtonText;
  final Widget? primButtonIcon;
  final Widget? defButtonIcon;
  final String? trailingMetaText;
  final String? labelShotText;
  final Color labelShotColor;
  final Widget? footerIcon1;
  final Widget? footerIcon2;
  final Widget? footerIcon3;
  final String? footerText1;
  final String? footerText2;
  final String? footerText3;
  final String? semanticText;
  final Color semanticColor;
  final Color semanticIconColor;
  final bool isLabelHeader;
  final bool isSemantic;
  final bool isMore;
  final bool isHeaderIcon;
  final bool isHeaderText;
  final bool isSubText;
  final bool isTrailingText;
  final bool isPrimaryButton;
  final bool isPrimaryButtonIcon;
  final bool isDefaultButton;
  final bool isDefaultButtonIcon;
  final bool isTrailingMeta;
  final bool isLabelElev1;
  final bool isLabelElev2;
  final bool isLabelElev3;
  final bool isLabelDef1;
  final bool isLabelDef2;
  final bool isLabelDef3;
  final bool isLabelshot;
  final bool isFooter1;
  final bool isFooter2;
  final bool isFooter3;

  @override
  State<ProductListWidget> createState() => _ProductListWidgetState();
}

class _ProductListWidgetState extends State<ProductListWidget> {
  late ProductListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductListModel());
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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).elevation01,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (widget.isLabelHeader)
                  wrapWithModel(
                    model: _model.elevatedModel1,
                    updateCallback: () => setState(() {}),
                    child: ElevatedWidget(
                      icon: widget.iconLableOverline,
                      labelText: widget.textLabelOverline,
                      color: widget.colorLabelOverline,
                    ),
                  ),
                if (widget.isSemantic)
                  Flexible(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            widget.semanticText,
                            'some2',
                          ),
                          style:
                              FlutterFlowTheme.of(context).labelSmall.override(
                                    fontFamily: 'Nunito',
                                    color: widget.semanticColor,
                                  ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor:
                                FlutterFlowTheme.of(context).transparent,
                            borderRadius: 0.0,
                            borderWidth: 0.0,
                            buttonSize: 36.0,
                            fillColor: FlutterFlowTheme.of(context).transparent,
                            icon: Icon(
                              Icons.arrow_forward_rounded,
                              color: widget.semanticIconColor,
                              size: 16.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                if (widget.isMore)
                  FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).transparent,
                    borderRadius: 0.0,
                    borderWidth: 0.0,
                    buttonSize: 36.0,
                    fillColor: FlutterFlowTheme.of(context).transparent,
                    icon: Icon(
                      Icons.keyboard_control,
                      color: FlutterFlowTheme.of(context).typeHigh,
                      size: 20.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
              ].divide(const SizedBox(width: 8.0)),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (widget.isHeaderIcon) widget.headerIcon!,
                                  ],
                                ),
                                Flexible(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Flexible(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            if (widget.isHeaderText)
                                              Text(
                                                widget.headerText,
                                                maxLines: 1,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                if (widget.isSubText)
                                                  Text(
                                                    valueOrDefault<String>(
                                                      widget.subText,
                                                      'Supporting Text',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .typeMedium,
                                                        ),
                                                  ),
                                                Wrap(
                                                  spacing: 4.0,
                                                  runSpacing: 4.0,
                                                  alignment:
                                                      WrapAlignment.start,
                                                  crossAxisAlignment:
                                                      WrapCrossAlignment.start,
                                                  direction: Axis.horizontal,
                                                  runAlignment:
                                                      WrapAlignment.start,
                                                  verticalDirection:
                                                      VerticalDirection.down,
                                                  clipBehavior: Clip.antiAlias,
                                                  children: [
                                                    Container(
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: Visibility(
                                                        visible:
                                                            widget.isLabelElev1,
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .elevatedModel2,
                                                          updateCallback: () =>
                                                              setState(() {}),
                                                          child: ElevatedWidget(
                                                            icon: widget
                                                                .labelElevIcon1,
                                                            labelText: widget
                                                                .labelElevText1,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .elevation02,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: Visibility(
                                                        visible:
                                                            widget.isLabelElev2,
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .elevatedModel3,
                                                          updateCallback: () =>
                                                              setState(() {}),
                                                          child: ElevatedWidget(
                                                            icon: widget
                                                                .labelElevIcon2,
                                                            labelText: widget
                                                                .labelElevText2,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .elevation02,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: Visibility(
                                                        visible:
                                                            widget.isLabelElev3,
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .elevated3Model,
                                                          updateCallback: () =>
                                                              setState(() {}),
                                                          child: ElevatedWidget(
                                                            icon: widget
                                                                .labelElevIcon3,
                                                            labelText: widget
                                                                .labelElevText3,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .elevation02,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: Visibility(
                                                        visible:
                                                            widget.isLabelDef1,
                                                        child: wrapWithModel(
                                                          model:
                                                              _model.defModel1,
                                                          updateCallback: () =>
                                                              setState(() {}),
                                                          child: DefWidget(
                                                            icon: widget
                                                                .labelDefIcon1,
                                                            labelText: widget
                                                                .labelDefText1,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: Visibility(
                                                        visible:
                                                            widget.isLabelDef2,
                                                        child: wrapWithModel(
                                                          model:
                                                              _model.def2Model,
                                                          updateCallback: () =>
                                                              setState(() {}),
                                                          child: DefWidget(
                                                            icon: widget
                                                                .labelDefIcon2,
                                                            labelText: widget
                                                                .labelDefText2,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: Visibility(
                                                        visible:
                                                            widget.isLabelDef3,
                                                        child: wrapWithModel(
                                                          model:
                                                              _model.defModel2,
                                                          updateCallback: () =>
                                                              setState(() {}),
                                                          child: DefWidget(
                                                            icon: widget
                                                                .labelDefIcon3,
                                                            labelText: widget
                                                                .labelDefText3,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ].divide(const SizedBox(height: 4.0)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ].divide(const SizedBox(width: 4.0)),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          if (widget.isTrailingText)
                            Text(
                              widget.trailingMainText,
                              style: FlutterFlowTheme.of(context).bodySmall,
                            ),
                          if (widget.isPrimaryButtonIcon)
                            wrapWithModel(
                              model: _model.primIconSmallModel,
                              updateCallback: () => setState(() {}),
                              child: PrimIconSmallWidget(
                                buttonText: widget.primButtonText,
                                icon: widget.primButtonIcon,
                                isDisabled: false,
                              ),
                            ),
                          if (widget.isPrimaryButton)
                            wrapWithModel(
                              model: _model.primSmallModel,
                              updateCallback: () => setState(() {}),
                              child: PrimSmallWidget(
                                buttonText: widget.primButtonText,
                                isDisabled: false,
                              ),
                            ),
                          if (widget.isDefaultButtonIcon)
                            wrapWithModel(
                              model: _model.defIconSmallModel,
                              updateCallback: () => setState(() {}),
                              child: DefIconSmallWidget(
                                buttonText: widget.defButtonText,
                                icon: widget.defButtonIcon,
                                isDisabled: false,
                              ),
                            ),
                          if (widget.isDefaultButton)
                            wrapWithModel(
                              model: _model.defSmallModel,
                              updateCallback: () => setState(() {}),
                              child: DefSmallWidget(
                                buttonText: widget.defButtonText,
                                isDisabled: false,
                              ),
                            ),
                          Text(
                            valueOrDefault<String>(
                              widget.trailingMetaText,
                              '₹ 340.00',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  fontFamily: 'Nunito',
                                  color:
                                      FlutterFlowTheme.of(context).typeMedium,
                                ),
                          ),
                        ].divide(const SizedBox(height: 2.0)),
                      ),
                    ].divide(const SizedBox(width: 8.0)),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (widget.isLabelshot)
                  wrapWithModel(
                    model: _model.labelShotSmallModel,
                    updateCallback: () => setState(() {}),
                    child: LabelShotSmallWidget(
                      labelText: widget.labelShotText,
                      colorLabel: widget.labelShotColor,
                      colorText: FlutterFlowTheme.of(context).typeLow,
                    ),
                  ),
                if (widget.isFooter1)
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      widget.footerIcon1!,
                      Text(
                        valueOrDefault<String>(
                          widget.footerText1,
                          'some1',
                        ),
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              fontFamily: 'Nunito',
                              color: FlutterFlowTheme.of(context).typeLow,
                            ),
                      ),
                    ].divide(const SizedBox(width: 4.0)),
                  ),
                if (widget.isFooter2)
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      widget.footerIcon2!,
                      Text(
                        valueOrDefault<String>(
                          widget.footerText2,
                          'some2',
                        ),
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              fontFamily: 'Nunito',
                              color: FlutterFlowTheme.of(context).typeLow,
                            ),
                      ),
                    ].divide(const SizedBox(width: 4.0)),
                  ),
                if (widget.isFooter3)
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      widget.footerIcon3!,
                      Text(
                        valueOrDefault<String>(
                          widget.footerText3,
                          'some3',
                        ),
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              fontFamily: 'Nunito',
                              color: FlutterFlowTheme.of(context).typeLow,
                            ),
                      ),
                    ].divide(const SizedBox(width: 4.0)),
                  ),
              ].divide(const SizedBox(width: 4.0)),
            ),
          ].divide(const SizedBox(height: 8.0)),
        ),
      ),
    );
  }
}
