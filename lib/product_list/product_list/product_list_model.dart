import '/button/default/def_small/def_small_widget.dart';
import '/button/default/icon/def_icon_small/def_icon_small_widget.dart';
import '/button/primary/icon/prim_icon_small/prim_icon_small_widget.dart';
import '/button/primary/prim_small/prim_small_widget.dart';
import '/chips_labels/assistive/def/def_widget.dart';
import '/chips_labels/assistive/elevated/elevated_widget.dart';
import '/chips_labels/label_shot/label_shot_small/label_shot_small_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'product_list_widget.dart' show ProductListWidget;
import 'package:flutter/material.dart';

class ProductListModel extends FlutterFlowModel<ProductListWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Elevated component.
  late ElevatedModel elevatedModel1;
  // Model for Elevated component.
  late ElevatedModel elevatedModel2;
  // Model for Elevated component.
  late ElevatedModel elevatedModel3;
  // Model for Elevated3.
  late ElevatedModel elevated3Model;
  // Model for Def component.
  late DefModel defModel1;
  // Model for Def2.
  late DefModel def2Model;
  // Model for Def component.
  late DefModel defModel2;
  // Model for PrimIconSmall component.
  late PrimIconSmallModel primIconSmallModel;
  // Model for PrimSmall component.
  late PrimSmallModel primSmallModel;
  // Model for DefIconSmall component.
  late DefIconSmallModel defIconSmallModel;
  // Model for DefSmall component.
  late DefSmallModel defSmallModel;
  // Model for labelShotSmall component.
  late LabelShotSmallModel labelShotSmallModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    elevatedModel1 = createModel(context, () => ElevatedModel());
    elevatedModel2 = createModel(context, () => ElevatedModel());
    elevatedModel3 = createModel(context, () => ElevatedModel());
    elevated3Model = createModel(context, () => ElevatedModel());
    defModel1 = createModel(context, () => DefModel());
    def2Model = createModel(context, () => DefModel());
    defModel2 = createModel(context, () => DefModel());
    primIconSmallModel = createModel(context, () => PrimIconSmallModel());
    primSmallModel = createModel(context, () => PrimSmallModel());
    defIconSmallModel = createModel(context, () => DefIconSmallModel());
    defSmallModel = createModel(context, () => DefSmallModel());
    labelShotSmallModel = createModel(context, () => LabelShotSmallModel());
  }

  @override
  void dispose() {
    elevatedModel1.dispose();
    elevatedModel2.dispose();
    elevatedModel3.dispose();
    elevated3Model.dispose();
    defModel1.dispose();
    def2Model.dispose();
    defModel2.dispose();
    primIconSmallModel.dispose();
    primSmallModel.dispose();
    defIconSmallModel.dispose();
    defSmallModel.dispose();
    labelShotSmallModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
