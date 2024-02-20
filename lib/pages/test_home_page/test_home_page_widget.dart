import '/button/bezeled/bez_large/bez_large_widget.dart';
import '/button/bezeled/bez_medium/bez_medium_widget.dart';
import '/button/bezeled/bez_small/bez_small_widget.dart';
import '/button/bezeled/icon/bez_icon_large/bez_icon_large_widget.dart';
import '/button/bezeled/icon/bez_icon_medium/bez_icon_medium_widget.dart';
import '/button/bezeled/icon/bez_icon_small/bez_icon_small_widget.dart';
import '/button/default/def_large/def_large_widget.dart';
import '/button/default/def_medium/def_medium_widget.dart';
import '/button/default/def_small/def_small_widget.dart';
import '/button/default/icon/def_icon_large/def_icon_large_widget.dart';
import '/button/default/icon/def_icon_medium/def_icon_medium_widget.dart';
import '/button/default/icon/def_icon_small/def_icon_small_widget.dart';
import '/button/link/icon/lnk_icon_large/lnk_icon_large_widget.dart';
import '/button/link/icon/lnk_icon_medium/lnk_icon_medium_widget.dart';
import '/button/link/icon/lnk_icon_small/lnk_icon_small_widget.dart';
import '/button/link/lnk_large/lnk_large_widget.dart';
import '/button/link/lnk_medium/lnk_medium_widget.dart';
import '/button/link/lnk_small/lnk_small_widget.dart';
import '/button/primary/icon/prim_icon_large/prim_icon_large_widget.dart';
import '/button/primary/icon/prim_icon_medium/prim_icon_medium_widget.dart';
import '/button/primary/icon/prim_icon_small/prim_icon_small_widget.dart';
import '/button/primary/prim_large/prim_large_widget.dart';
import '/button/primary/prim_medium/prim_medium_widget.dart';
import '/button/primary/prim_small/prim_small_widget.dart';
import '/chips_labels/assistive/clickable/disabled/dsb_default/dsb_default_widget.dart';
import '/chips_labels/assistive/clickable/disabled/dsb_elevated/dsb_elevated_widget.dart';
import '/chips_labels/assistive/def/def_widget.dart';
import '/chips_labels/assistive/elevated/elevated_widget.dart';
import '/components/bank_card_large_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/navigation/bottom_nav/bottom_nav/bottom_nav_widget.dart';
import '/product_list/product_list/product_list_widget.dart';
import '/progress/horizontal/horizontal_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'test_home_page_model.dart';
export 'test_home_page_model.dart';

class TestHomePageWidget extends StatefulWidget {
  const TestHomePageWidget({super.key});

  @override
  State<TestHomePageWidget> createState() => _TestHomePageWidgetState();
}

class _TestHomePageWidgetState extends State<TestHomePageWidget> {
  late TestHomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestHomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Stack(
              alignment: const AlignmentDirectional(0.0, 0.0),
              children: [
                const Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [],
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 64.0, 16.0, 32.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Text(
                              'Button',
                              style: FlutterFlowTheme.of(context).displayLarge,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'Primary',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: FlutterFlowTheme.of(context)
                                            .typeMedium,
                                      ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  wrapWithModel(
                                    model: _model.primIconSmallModel,
                                    updateCallback: () => setState(() {}),
                                    child: PrimIconSmallWidget(
                                      buttonText: 'Small',
                                      icon: Icon(
                                        FFIcons.kicFluentFlow32Regular,
                                        color: FlutterFlowTheme.of(context)
                                            .btnColor,
                                        size: 12.0,
                                      ),
                                      isDisabled: false,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.primIconMediumModel,
                                    updateCallback: () => setState(() {}),
                                    child: PrimIconMediumWidget(
                                      buttonText: 'Medium',
                                      icon: Icon(
                                        FFIcons.kicFluentFlow32Regular,
                                        color: FlutterFlowTheme.of(context)
                                            .buttonColor,
                                        size: 16.0,
                                      ),
                                      isDisabled: false,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.primIconLargeModel,
                                    updateCallback: () => setState(() {}),
                                    child: PrimIconLargeWidget(
                                      buttonText: 'Large',
                                      icon: Icon(
                                        FFIcons.kicFluentFlow32Regular,
                                        color: FlutterFlowTheme.of(context)
                                            .buttonColor,
                                        size: 20.0,
                                      ),
                                      isDisabled: false,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  wrapWithModel(
                                    model: _model.primSmallModel,
                                    updateCallback: () => setState(() {}),
                                    child: const PrimSmallWidget(
                                      buttonText: 'Small',
                                      isDisabled: true,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.primMediumModel,
                                    updateCallback: () => setState(() {}),
                                    child: const PrimMediumWidget(
                                      buttonText: 'Medium',
                                      isDisabled: true,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.primLargeModel,
                                    updateCallback: () => setState(() {}),
                                    child: const PrimLargeWidget(
                                      buttonText: 'Large',
                                      isDisabled: true,
                                    ),
                                  ),
                                ],
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'Default',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: FlutterFlowTheme.of(context)
                                            .typeMedium,
                                      ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  wrapWithModel(
                                    model: _model.defIconSmallModel,
                                    updateCallback: () => setState(() {}),
                                    child: DefIconSmallWidget(
                                      buttonText: 'Small',
                                      icon: Icon(
                                        FFIcons.kicFluentFlow32Regular,
                                        color: FlutterFlowTheme.of(context)
                                            .typeHigh,
                                        size: 12.0,
                                      ),
                                      isDisabled: false,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.defIconMediumModel,
                                    updateCallback: () => setState(() {}),
                                    child: DefIconMediumWidget(
                                      buttonText: 'Medium',
                                      icon: Icon(
                                        FFIcons.kicFluentFlow32Regular,
                                        color: FlutterFlowTheme.of(context)
                                            .typeHigh,
                                        size: 16.0,
                                      ),
                                      isDisabled: false,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.defIconLargeModel,
                                    updateCallback: () => setState(() {}),
                                    child: DefIconLargeWidget(
                                      buttonText: 'Large',
                                      icon: Icon(
                                        FFIcons.kicFluentFlow32Regular,
                                        color: FlutterFlowTheme.of(context)
                                            .typeHigh,
                                        size: 20.0,
                                      ),
                                      isDisabled: false,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  wrapWithModel(
                                    model: _model.defSmallModel,
                                    updateCallback: () => setState(() {}),
                                    child: const DefSmallWidget(
                                      buttonText: 'Small',
                                      isDisabled: true,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.defMediumModel,
                                    updateCallback: () => setState(() {}),
                                    child: const DefMediumWidget(
                                      buttonText: 'Medium',
                                      isDisabled: true,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.defLargeModel,
                                    updateCallback: () => setState(() {}),
                                    child: const DefLargeWidget(
                                      buttonText: 'Large',
                                      isDisabled: true,
                                    ),
                                  ),
                                ],
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'Link',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: FlutterFlowTheme.of(context)
                                            .typeMedium,
                                      ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  wrapWithModel(
                                    model: _model.lnkIconSmallModel,
                                    updateCallback: () => setState(() {}),
                                    child: LnkIconSmallWidget(
                                      buttonText: 'Small',
                                      icon: Icon(
                                        FFIcons.kicFluentFlow32Regular,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 12.0,
                                      ),
                                      isDisabled: true,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.lnkIconMediumModel,
                                    updateCallback: () => setState(() {}),
                                    child: LnkIconMediumWidget(
                                      buttonText: 'Medium',
                                      icon: Icon(
                                        FFIcons.kicFluentFlow32Regular,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 16.0,
                                      ),
                                      isDisabled: true,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.lnkIconLargeModel,
                                    updateCallback: () => setState(() {}),
                                    child: LnkIconLargeWidget(
                                      buttonText: 'Large',
                                      icon: Icon(
                                        FFIcons.kicFluentFlow32Regular,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 20.0,
                                      ),
                                      isDisabled: true,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  wrapWithModel(
                                    model: _model.lnkSmallModel,
                                    updateCallback: () => setState(() {}),
                                    child: const LnkSmallWidget(
                                      buttonText: 'Small',
                                      isDisabled: true,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.lnkMediumModel,
                                    updateCallback: () => setState(() {}),
                                    child: const LnkMediumWidget(
                                      buttonText: 'Medium',
                                      isDisabled: true,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.lnkLargeModel,
                                    updateCallback: () => setState(() {}),
                                    child: const LnkLargeWidget(
                                      buttonText: 'Large',
                                      isDisabled: true,
                                    ),
                                  ),
                                ],
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'Bezelled',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: FlutterFlowTheme.of(context)
                                            .typeMedium,
                                      ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  wrapWithModel(
                                    model: _model.bezIconSmallModel,
                                    updateCallback: () => setState(() {}),
                                    child: BezIconSmallWidget(
                                      buttonText: 'Small',
                                      icon: Icon(
                                        FFIcons.kicFluentFlow32Regular,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 12.0,
                                      ),
                                      isDisabled: true,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.bezIconMediumModel,
                                    updateCallback: () => setState(() {}),
                                    child: BezIconMediumWidget(
                                      buttonText: 'Medium',
                                      icon: Icon(
                                        FFIcons.kicFluentFlow32Regular,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 16.0,
                                      ),
                                      isDisabled: true,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.bezIconLargeModel,
                                    updateCallback: () => setState(() {}),
                                    child: BezIconLargeWidget(
                                      buttonText: 'Large',
                                      icon: Icon(
                                        FFIcons.kicFluentFlow32Regular,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 20.0,
                                      ),
                                      isDisabled: true,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  wrapWithModel(
                                    model: _model.bezSmallModel,
                                    updateCallback: () => setState(() {}),
                                    child: const BezSmallWidget(
                                      buttonText: 'Small',
                                      isDisabled: true,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.bezMediumModel,
                                    updateCallback: () => setState(() {}),
                                    child: const BezMediumWidget(
                                      buttonText: 'Medium',
                                      isDisabled: true,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.bezLargeModel,
                                    updateCallback: () => setState(() {}),
                                    child: const BezLargeWidget(
                                      buttonText: 'Large',
                                      isDisabled: true,
                                    ),
                                  ),
                                ],
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Text(
                              'ChipsAndLabel',
                              style: FlutterFlowTheme.of(context).displayLarge,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'Assistive Chips',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: FlutterFlowTheme.of(context)
                                            .typeMedium,
                                      ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  wrapWithModel(
                                    model: _model.elevatedModel,
                                    updateCallback: () => setState(() {}),
                                    child: ElevatedWidget(
                                      icon: Icon(
                                        FFIcons.kicFluentFlow32Regular,
                                        color: FlutterFlowTheme.of(context)
                                            .typeHigh,
                                        size: 16.0,
                                      ),
                                      labelText: 'asssitive chip\n',
                                      color: FlutterFlowTheme.of(context)
                                          .elevation02,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.defModel,
                                    updateCallback: () => setState(() {}),
                                    child: DefWidget(
                                      icon: Icon(
                                        FFIcons.kicFluentFlow32Regular,
                                        color: FlutterFlowTheme.of(context)
                                            .typeHigh,
                                        size: 16.0,
                                      ),
                                      labelText: 'assitive chip',
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: wrapWithModel(
                                      model: _model.dsbElevatedModel,
                                      updateCallback: () => setState(() {}),
                                      child: DsbElevatedWidget(
                                        icon: Icon(
                                          FFIcons.kicFluentFlow32Regular,
                                          color: FlutterFlowTheme.of(context)
                                              .typeLow,
                                          size: 16.0,
                                        ),
                                        labelText: 'ass Disabled',
                                      ),
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.dsbDefaultModel,
                                    updateCallback: () => setState(() {}),
                                    child: DsbDefaultWidget(
                                      icon: Icon(
                                        FFIcons.kicFluentFlow32Regular,
                                        color: FlutterFlowTheme.of(context)
                                            .typeLow,
                                        size: 16.0,
                                      ),
                                      labelText: 'ass Disabled',
                                    ),
                                  ),
                                ],
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Text(
                              'Progress',
                              style: FlutterFlowTheme.of(context).displayLarge,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'Horizontal',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: FlutterFlowTheme.of(context)
                                            .typeMedium,
                                      ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: wrapWithModel(
                                      model: _model.horizontalModel,
                                      updateCallback: () => setState(() {}),
                                      child: HorizontalWidget(
                                        rightText: 'Iconing ',
                                        leftTextPrimary: 'Total',
                                        leftTextSecondary: '/ Something',
                                        isLeftRow: false,
                                        isRightRow: true,
                                        icon: Icon(
                                          FFIcons.kicFluentFlow32Regular,
                                          color: FlutterFlowTheme.of(context)
                                              .typeHigh,
                                          size: 16.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Text(
                              'Product List',
                              style: FlutterFlowTheme.of(context).displayLarge,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'list card',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: FlutterFlowTheme.of(context)
                                            .typeMedium,
                                      ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: wrapWithModel(
                                      model: _model.productListModel,
                                      updateCallback: () => setState(() {}),
                                      child: ProductListWidget(
                                        iconLableOverline: Icon(
                                          Icons.onetwothree_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .typeHigh,
                                          size: 16.0,
                                        ),
                                        headerText: 'Product Name',
                                        textLabelOverline: 'Label',
                                        colorLabelOverline:
                                            FlutterFlowTheme.of(context)
                                                .infoPrimary,
                                        headerIcon: Icon(
                                          FFIcons.kicFluentFlow32Regular,
                                          color: FlutterFlowTheme.of(context)
                                              .typeHigh,
                                          size: 20.0,
                                        ),
                                        subText: 'Description',
                                        trailingMainText: 'Quantity',
                                        buttonText: 'dssds',
                                        labelElevIcon1: Icon(
                                          FFIcons.kicFluentFlow20Regular,
                                          color: FlutterFlowTheme.of(context)
                                              .typeHigh,
                                          size: 16.0,
                                        ),
                                        labelElevIcon2: Icon(
                                          FFIcons.kicFluentFlow20Regular,
                                          color: FlutterFlowTheme.of(context)
                                              .typeHigh,
                                          size: 16.0,
                                        ),
                                        labelElevIcon3: Icon(
                                          FFIcons.kicFluentFlow20Regular,
                                          color: FlutterFlowTheme.of(context)
                                              .typeHigh,
                                          size: 16.0,
                                        ),
                                        labelDefIcon1: Icon(
                                          FFIcons.kicFluentFlow20Regular,
                                          color: FlutterFlowTheme.of(context)
                                              .typeHigh,
                                          size: 16.0,
                                        ),
                                        labelDefIcon2: Icon(
                                          FFIcons.kicFluentFlow20Regular,
                                          color: FlutterFlowTheme.of(context)
                                              .typeHigh,
                                          size: 16.0,
                                        ),
                                        labelDefIcon3: Icon(
                                          FFIcons.kicFluentFlow20Regular,
                                          color: FlutterFlowTheme.of(context)
                                              .typeHigh,
                                          size: 16.0,
                                        ),
                                        labelElevText1: 'Label',
                                        labelElevText2: 'Label',
                                        labelElevText3: 'Label',
                                        labelDefText1: 'Label',
                                        labelDefText2: 'Label',
                                        labelDefText3: 'Label',
                                        primButtonText: 'Apply',
                                        defButtonText: 'Apply',
                                        primButtonIcon: Icon(
                                          FFIcons.kicFluentFlow20Regular,
                                          color: FlutterFlowTheme.of(context)
                                              .buttonColor,
                                          size: 16.0,
                                        ),
                                        defButtonIcon: Icon(
                                          FFIcons.kicFluentFlow20Regular,
                                          color: FlutterFlowTheme.of(context)
                                              .typeHigh,
                                          size: 16.0,
                                        ),
                                        trailingMetaText: '₹ 5600.03',
                                        labelShotText: 'Status',
                                        labelShotColor:
                                            FlutterFlowTheme.of(context)
                                                .tertiary,
                                        footerIcon1: Icon(
                                          FFIcons.kicFluentFlow20Regular,
                                          color: FlutterFlowTheme.of(context)
                                              .typeLow,
                                          size: 16.0,
                                        ),
                                        footerIcon2: Icon(
                                          FFIcons.kicFluentFlow20Regular,
                                          color: FlutterFlowTheme.of(context)
                                              .typeLow,
                                          size: 16.0,
                                        ),
                                        footerIcon3: Icon(
                                          FFIcons.kicFluentFlow20Regular,
                                          color: FlutterFlowTheme.of(context)
                                              .typeLow,
                                          size: 16.0,
                                        ),
                                        footerText1: 'Label',
                                        footerText2: 'Label',
                                        footerText3: 'Label',
                                        semanticText: 'Semantic',
                                        semanticColor:
                                            FlutterFlowTheme.of(context)
                                                .nextSuccess,
                                        semanticIconColor:
                                            FlutterFlowTheme.of(context)
                                                .nextSuccess,
                                        isLabelHeader: true,
                                        isSemantic: false,
                                        isMore: false,
                                        isHeaderIcon: true,
                                        isHeaderText: true,
                                        isSubText: false,
                                        isTrailingText: false,
                                        isPrimaryButton: false,
                                        isPrimaryButtonIcon: true,
                                        isDefaultButton: false,
                                        isDefaultButtonIcon: false,
                                        isTrailingMeta: true,
                                        isLabelElev1: true,
                                        isLabelElev2: false,
                                        isLabelElev3: false,
                                        isLabelDef1: true,
                                        isLabelDef2: true,
                                        isLabelDef3: false,
                                        isLabelshot: true,
                                        isFooter1: true,
                                        isFooter2: true,
                                        isFooter3: false,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Text(
                              'Bank Card',
                              style: FlutterFlowTheme.of(context).displayLarge,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'BankCardLarge',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: FlutterFlowTheme.of(context)
                                            .typeMedium,
                                      ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: wrapWithModel(
                                      model: _model.bankCardLargeModel,
                                      updateCallback: () => setState(() {}),
                                      child: BankCardLargeWidget(
                                        icon: Icon(
                                          FFIcons.kicFluentHome16Regular,
                                          color: FlutterFlowTheme.of(context)
                                              .buttonColor,
                                          size: 16.0,
                                        ),
                                        isLeftRow: false,
                                        isRightRow: false,
                                        isProgressBar: false,
                                        rightText: 'dsdsd',
                                        leftPrimText: 'dsds',
                                        leftSecText: 'dssd',
                                        labelText: 'Status',
                                        textMeta: 'dsds',
                                        imgePath: 'sdsds',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          ),
                        ].divide(const SizedBox(height: 32.0)),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: wrapWithModel(
                    model: _model.bottomNavModel,
                    updateCallback: () => setState(() {}),
                    child: const BottomNavWidget(
                      selectedPageIndex: 1,
                      hiddenNav: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
