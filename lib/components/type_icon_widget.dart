import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'type_icon_model.dart';
export 'type_icon_model.dart';

class TypeIconWidget extends StatefulWidget {
  const TypeIconWidget({
    super.key,
    required this.icon,
  });

  final Widget? icon;

  @override
  State<TypeIconWidget> createState() => _TypeIconWidgetState();
}

class _TypeIconWidgetState extends State<TypeIconWidget> {
  late TypeIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TypeIconModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: widget.icon!,
    );
  }
}
