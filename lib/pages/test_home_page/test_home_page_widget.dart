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
import '/chips_labels/assistive_chips/default/def_left/def_left_widget.dart';
import '/chips_labels/assistive_chips/default/def_left_disable/def_left_disable_widget.dart';
import '/chips_labels/assistive_chips/default/def_right/def_right_widget.dart';
import '/chips_labels/assistive_chips/default/def_right_disable/def_right_disable_widget.dart';
import '/chips_labels/assistive_chips/elevated/elevated_left_disable/elevated_left_disable_widget.dart';
import '/chips_labels/assistive_chips/elevated/elevated_light/elevated_light_widget.dart';
import '/chips_labels/assistive_chips/elevated/elevated_right/elevated_right_widget.dart';
import '/chips_labels/assistive_chips/elevated/elevated_right_disable/elevated_right_disable_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
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
                  alignment: const AlignmentDirectional(0.0, -1.0),
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
                                      isDisabled: true,
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
                                      isDisabled: true,
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
                                      isDisabled: true,
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
                                      isDisabled: true,
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
                                    model: _model.defLeftModel,
                                    updateCallback: () => setState(() {}),
                                    child: DefLeftWidget(
                                      icon: Icon(
                                        FFIcons.kicFluentFlow32Regular,
                                        color: FlutterFlowTheme.of(context)
                                            .typeHigh,
                                        size: 16.0,
                                      ),
                                      labelText: 'DefLeft',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.defRightModel,
                                    updateCallback: () => setState(() {}),
                                    child: DefRightWidget(
                                      icon: Icon(
                                        FFIcons.kicFluentFlow32Regular,
                                        color: FlutterFlowTheme.of(context)
                                            .typeHigh,
                                        size: 16.0,
                                      ),
                                      labelText: 'DefRight',
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
                                    model: _model.defLeftDisableModel,
                                    updateCallback: () => setState(() {}),
                                    child: DefLeftDisableWidget(
                                      icon: Icon(
                                        FFIcons.kicFluentFlow32Regular,
                                        color: FlutterFlowTheme.of(context)
                                            .typeLow,
                                        size: 16.0,
                                      ),
                                      labelText: 'DefLeftDisable',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.defRightDisableModel,
                                    updateCallback: () => setState(() {}),
                                    child: DefRightDisableWidget(
                                      icon: Icon(
                                        FFIcons.kicFluentFlow32Regular,
                                        color: FlutterFlowTheme.of(context)
                                            .typeLow,
                                        size: 16.0,
                                      ),
                                      labelText: 'DefRightDisable',
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
                                    model: _model.elevatedRightModel,
                                    updateCallback: () => setState(() {}),
                                    child: ElevatedRightWidget(
                                      icon: Icon(
                                        FFIcons.kicFluentFlow32Regular,
                                        color: FlutterFlowTheme.of(context)
                                            .typeHigh,
                                        size: 16.0,
                                      ),
                                      labelText: 'ElevatedRight',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.elevatedLightModel,
                                    updateCallback: () => setState(() {}),
                                    child: ElevatedLightWidget(
                                      icon: Icon(
                                        FFIcons.kicFluentFlow32Regular,
                                        color: FlutterFlowTheme.of(context)
                                            .typeHigh,
                                        size: 16.0,
                                      ),
                                      labelText: 'ElevatedLeft',
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
                                    model: _model.elevatedLeftDisableModel,
                                    updateCallback: () => setState(() {}),
                                    child: ElevatedLeftDisableWidget(
                                      icon: Icon(
                                        FFIcons.kicFluentFlow32Regular,
                                        color: FlutterFlowTheme.of(context)
                                            .typeLow,
                                        size: 16.0,
                                      ),
                                      labelText: 'ElevatedLeftDisable',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.elevatedRightDisableModel,
                                    updateCallback: () => setState(() {}),
                                    child: ElevatedRightDisableWidget(
                                      icon: Icon(
                                        FFIcons.kicFluentFlow32Regular,
                                        color: FlutterFlowTheme.of(context)
                                            .typeLow,
                                        size: 16.0,
                                      ),
                                      labelText: 'ElevatedRightDisable',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
