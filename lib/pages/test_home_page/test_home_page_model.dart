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
import '/flutter_flow/flutter_flow_util.dart';
import '/navigation/bottom_nav/bottom_nav/bottom_nav_widget.dart';
import '/product_list/product_list/product_list_widget.dart';
import '/progress/horizontal/horizontal_widget.dart';
import 'test_home_page_widget.dart' show TestHomePageWidget;
import 'package:flutter/material.dart';

class TestHomePageModel extends FlutterFlowModel<TestHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PrimIconSmall component.
  late PrimIconSmallModel primIconSmallModel;
  // Model for PrimIconMedium component.
  late PrimIconMediumModel primIconMediumModel;
  // Model for PrimIconLarge component.
  late PrimIconLargeModel primIconLargeModel;
  // Model for PrimSmall component.
  late PrimSmallModel primSmallModel;
  // Model for PrimMedium component.
  late PrimMediumModel primMediumModel;
  // Model for PrimLarge component.
  late PrimLargeModel primLargeModel;
  // Model for DefIconSmall component.
  late DefIconSmallModel defIconSmallModel;
  // Model for DefIconMedium component.
  late DefIconMediumModel defIconMediumModel;
  // Model for DefIconLarge component.
  late DefIconLargeModel defIconLargeModel;
  // Model for DefSmall component.
  late DefSmallModel defSmallModel;
  // Model for DefMedium component.
  late DefMediumModel defMediumModel;
  // Model for DefLarge component.
  late DefLargeModel defLargeModel;
  // Model for LnkIconSmall component.
  late LnkIconSmallModel lnkIconSmallModel;
  // Model for LnkIconMedium component.
  late LnkIconMediumModel lnkIconMediumModel;
  // Model for LnkIconLarge component.
  late LnkIconLargeModel lnkIconLargeModel;
  // Model for LnkSmall component.
  late LnkSmallModel lnkSmallModel;
  // Model for LnkMedium component.
  late LnkMediumModel lnkMediumModel;
  // Model for LnkLarge component.
  late LnkLargeModel lnkLargeModel;
  // Model for BezIconSmall component.
  late BezIconSmallModel bezIconSmallModel;
  // Model for BezIconMedium component.
  late BezIconMediumModel bezIconMediumModel;
  // Model for BezIconLarge component.
  late BezIconLargeModel bezIconLargeModel;
  // Model for BezSmall component.
  late BezSmallModel bezSmallModel;
  // Model for BezMedium component.
  late BezMediumModel bezMediumModel;
  // Model for BezLarge component.
  late BezLargeModel bezLargeModel;
  // Model for Elevated component.
  late ElevatedModel elevatedModel;
  // Model for Def component.
  late DefModel defModel;
  // Model for DsbElevated component.
  late DsbElevatedModel dsbElevatedModel;
  // Model for DsbDefault component.
  late DsbDefaultModel dsbDefaultModel;
  // Model for Horizontal component.
  late HorizontalModel horizontalModel;
  // Model for ProductList component.
  late ProductListModel productListModel;
  // Model for BankCardLarge component.
  late BankCardLargeModel bankCardLargeModel;
  // Model for BottomNav component.
  late BottomNavModel bottomNavModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    primIconSmallModel = createModel(context, () => PrimIconSmallModel());
    primIconMediumModel = createModel(context, () => PrimIconMediumModel());
    primIconLargeModel = createModel(context, () => PrimIconLargeModel());
    primSmallModel = createModel(context, () => PrimSmallModel());
    primMediumModel = createModel(context, () => PrimMediumModel());
    primLargeModel = createModel(context, () => PrimLargeModel());
    defIconSmallModel = createModel(context, () => DefIconSmallModel());
    defIconMediumModel = createModel(context, () => DefIconMediumModel());
    defIconLargeModel = createModel(context, () => DefIconLargeModel());
    defSmallModel = createModel(context, () => DefSmallModel());
    defMediumModel = createModel(context, () => DefMediumModel());
    defLargeModel = createModel(context, () => DefLargeModel());
    lnkIconSmallModel = createModel(context, () => LnkIconSmallModel());
    lnkIconMediumModel = createModel(context, () => LnkIconMediumModel());
    lnkIconLargeModel = createModel(context, () => LnkIconLargeModel());
    lnkSmallModel = createModel(context, () => LnkSmallModel());
    lnkMediumModel = createModel(context, () => LnkMediumModel());
    lnkLargeModel = createModel(context, () => LnkLargeModel());
    bezIconSmallModel = createModel(context, () => BezIconSmallModel());
    bezIconMediumModel = createModel(context, () => BezIconMediumModel());
    bezIconLargeModel = createModel(context, () => BezIconLargeModel());
    bezSmallModel = createModel(context, () => BezSmallModel());
    bezMediumModel = createModel(context, () => BezMediumModel());
    bezLargeModel = createModel(context, () => BezLargeModel());
    elevatedModel = createModel(context, () => ElevatedModel());
    defModel = createModel(context, () => DefModel());
    dsbElevatedModel = createModel(context, () => DsbElevatedModel());
    dsbDefaultModel = createModel(context, () => DsbDefaultModel());
    horizontalModel = createModel(context, () => HorizontalModel());
    productListModel = createModel(context, () => ProductListModel());
    bankCardLargeModel = createModel(context, () => BankCardLargeModel());
    bottomNavModel = createModel(context, () => BottomNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    primIconSmallModel.dispose();
    primIconMediumModel.dispose();
    primIconLargeModel.dispose();
    primSmallModel.dispose();
    primMediumModel.dispose();
    primLargeModel.dispose();
    defIconSmallModel.dispose();
    defIconMediumModel.dispose();
    defIconLargeModel.dispose();
    defSmallModel.dispose();
    defMediumModel.dispose();
    defLargeModel.dispose();
    lnkIconSmallModel.dispose();
    lnkIconMediumModel.dispose();
    lnkIconLargeModel.dispose();
    lnkSmallModel.dispose();
    lnkMediumModel.dispose();
    lnkLargeModel.dispose();
    bezIconSmallModel.dispose();
    bezIconMediumModel.dispose();
    bezIconLargeModel.dispose();
    bezSmallModel.dispose();
    bezMediumModel.dispose();
    bezLargeModel.dispose();
    elevatedModel.dispose();
    defModel.dispose();
    dsbElevatedModel.dispose();
    dsbDefaultModel.dispose();
    horizontalModel.dispose();
    productListModel.dispose();
    bankCardLargeModel.dispose();
    bottomNavModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
