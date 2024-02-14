import '/components/type_icon_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'elevated_disable_widget.dart' show ElevatedDisableWidget;
import 'package:flutter/material.dart';

class ElevatedDisableModel extends FlutterFlowModel<ElevatedDisableWidget> {
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
