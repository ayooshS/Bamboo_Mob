import '/components/bank_card_large_widget.dart';
import '/components/product_overview_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/navigation/bottom_nav/bottom_nav/bottom_nav_widget.dart';
import '/product_list/product_list/product_list_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'source_model.dart';
export 'source_model.dart';

class SourceWidget extends StatefulWidget {
  const SourceWidget({super.key});

  @override
  State<SourceWidget> createState() => _SourceWidgetState();
}

class _SourceWidgetState extends State<SourceWidget> {
  late SourceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SourceModel());
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
        backgroundColor: FlutterFlowTheme.of(context).btnColor,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          width: 182.0,
                          height: 90.0,
                          child: CarouselSlider(
                            items: [
                              wrapWithModel(
                                model: _model.productOverviewModel1,
                                updateCallback: () => setState(() {}),
                                child: const ProductOverviewWidget(),
                              ),
                              wrapWithModel(
                                model: _model.productOverviewModel2,
                                updateCallback: () => setState(() {}),
                                child: const ProductOverviewWidget(),
                              ),
                              wrapWithModel(
                                model: _model.productOverviewModel3,
                                updateCallback: () => setState(() {}),
                                child: const ProductOverviewWidget(),
                              ),
                            ],
                            carouselController: _model.carouselController ??=
                                CarouselController(),
                            options: CarouselOptions(
                              initialPage: 1,
                              viewportFraction: 0.6,
                              disableCenter: false,
                              enlargeCenterPage: true,
                              enlargeFactor: 0.4,
                              enableInfiniteScroll: false,
                              scrollDirection: Axis.horizontal,
                              autoPlay: false,
                              onPageChanged: (index, _) =>
                                  _model.carouselCurrentIndex = index,
                            ),
                          ),
                        ),
                        wrapWithModel(
                          model: _model.bankCardLargeModel,
                          updateCallback: () => setState(() {}),
                          child: BankCardLargeWidget(
                            icon: Icon(
                              FFIcons.kicFluentHome16Regular,
                              color: FlutterFlowTheme.of(context).buttonColor,
                              size: 16.0,
                            ),
                            isLeftRow: false,
                            isRightRow: false,
                            isProgressBar: false,
                            rightText: 'dsdsd',
                            leftPrimText: 'dsds',
                            leftSecText: 'dssd',
                            labelText: 'Status',
                            textMeta: 'sdsd',
                            imgePath: 'sdsd',
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.productListModel1,
                              updateCallback: () => setState(() {}),
                              child: ProductListWidget(
                                iconLableOverline: Icon(
                                  Icons.onetwothree_sharp,
                                  color: FlutterFlowTheme.of(context).typeHigh,
                                  size: 16.0,
                                ),
                                headerText: 'Product Name',
                                textLabelOverline: 'Label',
                                colorLabelOverline:
                                    FlutterFlowTheme.of(context).infoPrimary,
                                headerIcon: Icon(
                                  FFIcons.kicFluentFlow32Regular,
                                  color: FlutterFlowTheme.of(context).typeHigh,
                                  size: 20.0,
                                ),
                                subText: 'Description',
                                trailingMainText: 'Quantity',
                                buttonText: 'dssds',
                                labelElevIcon1: Icon(
                                  FFIcons.kicFluentFlow20Regular,
                                  color: FlutterFlowTheme.of(context).typeHigh,
                                  size: 16.0,
                                ),
                                labelElevIcon2: Icon(
                                  FFIcons.kicFluentFlow20Regular,
                                  color: FlutterFlowTheme.of(context).typeHigh,
                                  size: 16.0,
                                ),
                                labelElevIcon3: Icon(
                                  FFIcons.kicFluentFlow20Regular,
                                  color: FlutterFlowTheme.of(context).typeHigh,
                                  size: 16.0,
                                ),
                                labelDefIcon1: Icon(
                                  FFIcons.kicFluentFlow20Regular,
                                  color: FlutterFlowTheme.of(context).typeHigh,
                                  size: 16.0,
                                ),
                                labelDefIcon2: Icon(
                                  FFIcons.kicFluentFlow20Regular,
                                  color: FlutterFlowTheme.of(context).typeHigh,
                                  size: 16.0,
                                ),
                                labelDefIcon3: Icon(
                                  FFIcons.kicFluentFlow20Regular,
                                  color: FlutterFlowTheme.of(context).typeHigh,
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
                                  color:
                                      FlutterFlowTheme.of(context).buttonColor,
                                  size: 16.0,
                                ),
                                defButtonIcon: Icon(
                                  FFIcons.kicFluentFlow20Regular,
                                  color: FlutterFlowTheme.of(context).typeHigh,
                                  size: 16.0,
                                ),
                                trailingMetaText: '₹ 5600.03',
                                labelShotText: 'Status',
                                labelShotColor:
                                    FlutterFlowTheme.of(context).tertiary,
                                footerIcon1: Icon(
                                  FFIcons.kicFluentFlow20Regular,
                                  color: FlutterFlowTheme.of(context).typeLow,
                                  size: 16.0,
                                ),
                                footerIcon2: Icon(
                                  FFIcons.kicFluentFlow20Regular,
                                  color: FlutterFlowTheme.of(context).typeLow,
                                  size: 16.0,
                                ),
                                footerIcon3: Icon(
                                  FFIcons.kicFluentFlow20Regular,
                                  color: FlutterFlowTheme.of(context).typeLow,
                                  size: 16.0,
                                ),
                                footerText1: 'Label',
                                footerText2: 'Label',
                                footerText3: 'Label',
                                semanticText: 'Semantic',
                                semanticColor:
                                    FlutterFlowTheme.of(context).nextSuccess,
                                semanticIconColor:
                                    FlutterFlowTheme.of(context).nextSuccess,
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
                            wrapWithModel(
                              model: _model.productListModel2,
                              updateCallback: () => setState(() {}),
                              child: ProductListWidget(
                                iconLableOverline: Icon(
                                  Icons.onetwothree_sharp,
                                  color: FlutterFlowTheme.of(context).typeHigh,
                                  size: 16.0,
                                ),
                                headerText: 'Product Name',
                                textLabelOverline: 'Label',
                                colorLabelOverline:
                                    FlutterFlowTheme.of(context).infoPrimary,
                                headerIcon: Icon(
                                  FFIcons.kicFluentFlow32Regular,
                                  color: FlutterFlowTheme.of(context).typeHigh,
                                  size: 20.0,
                                ),
                                subText: 'Description',
                                trailingMainText: 'Quantity',
                                buttonText: 'dssds',
                                labelElevIcon1: Icon(
                                  FFIcons.kicFluentFlow20Regular,
                                  color: FlutterFlowTheme.of(context).typeHigh,
                                  size: 16.0,
                                ),
                                labelElevIcon2: Icon(
                                  FFIcons.kicFluentFlow20Regular,
                                  color: FlutterFlowTheme.of(context).typeHigh,
                                  size: 16.0,
                                ),
                                labelElevIcon3: Icon(
                                  FFIcons.kicFluentFlow20Regular,
                                  color: FlutterFlowTheme.of(context).typeHigh,
                                  size: 16.0,
                                ),
                                labelDefIcon1: Icon(
                                  FFIcons.kicFluentFlow20Regular,
                                  color: FlutterFlowTheme.of(context).typeHigh,
                                  size: 16.0,
                                ),
                                labelDefIcon2: Icon(
                                  FFIcons.kicFluentFlow20Regular,
                                  color: FlutterFlowTheme.of(context).typeHigh,
                                  size: 16.0,
                                ),
                                labelDefIcon3: Icon(
                                  FFIcons.kicFluentFlow20Regular,
                                  color: FlutterFlowTheme.of(context).typeHigh,
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
                                  color:
                                      FlutterFlowTheme.of(context).buttonColor,
                                  size: 16.0,
                                ),
                                defButtonIcon: Icon(
                                  FFIcons.kicFluentFlow20Regular,
                                  color: FlutterFlowTheme.of(context).typeHigh,
                                  size: 16.0,
                                ),
                                trailingMetaText: '₹ 5600.03',
                                labelShotText: 'Status',
                                labelShotColor:
                                    FlutterFlowTheme.of(context).tertiary,
                                footerIcon1: Icon(
                                  FFIcons.kicFluentFlow20Regular,
                                  color: FlutterFlowTheme.of(context).typeLow,
                                  size: 16.0,
                                ),
                                footerIcon2: Icon(
                                  FFIcons.kicFluentFlow20Regular,
                                  color: FlutterFlowTheme.of(context).typeLow,
                                  size: 16.0,
                                ),
                                footerIcon3: Icon(
                                  FFIcons.kicFluentFlow20Regular,
                                  color: FlutterFlowTheme.of(context).typeLow,
                                  size: 16.0,
                                ),
                                footerText1: 'Label',
                                footerText2: 'Label',
                                footerText3: 'Label',
                                semanticText: 'Semantic',
                                semanticColor:
                                    FlutterFlowTheme.of(context).nextSuccess,
                                semanticIconColor:
                                    FlutterFlowTheme.of(context).nextSuccess,
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
                          ],
                        ),
                      ].divide(const SizedBox(height: 16.0)),
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
                    selectedPageIndex: 3,
                    hiddenNav: false,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
