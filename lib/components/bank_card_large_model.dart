import '/chips_labels/label_shot/label_shot_large/label_shot_large_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/progress/horizontal/horizontal_widget.dart';
import 'bank_card_large_widget.dart' show BankCardLargeWidget;
import 'package:flutter/material.dart';

class BankCardLargeModel extends FlutterFlowModel<BankCardLargeWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Horizontal component.
  late HorizontalModel horizontalModel;
  // Model for labelShotLarge component.
  late LabelShotLargeModel labelShotLargeModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    horizontalModel = createModel(context, () => HorizontalModel());
    labelShotLargeModel = createModel(context, () => LabelShotLargeModel());
  }

  @override
  void dispose() {
    horizontalModel.dispose();
    labelShotLargeModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
