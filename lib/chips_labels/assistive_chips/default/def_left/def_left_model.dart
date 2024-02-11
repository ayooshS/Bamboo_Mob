import '/components/type_icon_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'def_left_widget.dart' show DefLeftWidget;
import 'package:flutter/material.dart';

class DefLeftModel extends FlutterFlowModel<DefLeftWidget> {
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
