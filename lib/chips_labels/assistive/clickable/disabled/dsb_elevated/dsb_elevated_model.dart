import '/chips_labels/icon_type/type_icon/type_icon_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dsb_elevated_widget.dart' show DsbElevatedWidget;
import 'package:flutter/material.dart';

class DsbElevatedModel extends FlutterFlowModel<DsbElevatedWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for TypeIcon component.
  late TypeIconModel typeIconModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    typeIconModel = createModel(context, () => TypeIconModel());
  }

  @override
  void dispose() {
    typeIconModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
