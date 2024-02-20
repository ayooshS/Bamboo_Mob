import '/components/bank_card_large_widget.dart';
import '/components/product_overview_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/navigation/bottom_nav/bottom_nav/bottom_nav_widget.dart';
import '/product_list/product_list/product_list_widget.dart';
import 'source_widget.dart' show SourceWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SourceModel extends FlutterFlowModel<SourceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  // Model for product_overview component.
  late ProductOverviewModel productOverviewModel1;
  // Model for product_overview component.
  late ProductOverviewModel productOverviewModel2;
  // Model for product_overview component.
  late ProductOverviewModel productOverviewModel3;
  // Model for BankCardLarge component.
  late BankCardLargeModel bankCardLargeModel;
  // Model for ProductList component.
  late ProductListModel productListModel1;
  // Model for ProductList component.
  late ProductListModel productListModel2;
  // Model for BottomNav component.
  late BottomNavModel bottomNavModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    productOverviewModel1 = createModel(context, () => ProductOverviewModel());
    productOverviewModel2 = createModel(context, () => ProductOverviewModel());
    productOverviewModel3 = createModel(context, () => ProductOverviewModel());
    bankCardLargeModel = createModel(context, () => BankCardLargeModel());
    productListModel1 = createModel(context, () => ProductListModel());
    productListModel2 = createModel(context, () => ProductListModel());
    bottomNavModel = createModel(context, () => BottomNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    productOverviewModel1.dispose();
    productOverviewModel2.dispose();
    productOverviewModel3.dispose();
    bankCardLargeModel.dispose();
    productListModel1.dispose();
    productListModel2.dispose();
    bottomNavModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
