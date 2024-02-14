import '/components/type_icon_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'def_disable_widget.dart' show DefDisableWidget;
import 'package:flutter/material.dart';

class DefDisableModel extends FlutterFlowModel<DefDisableWidget> {
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

  Future clickable(BuildContext context) async {}

  /// Additional helper methods are added here.
}
