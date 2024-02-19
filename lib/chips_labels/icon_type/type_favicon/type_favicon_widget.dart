import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'type_favicon_model.dart';
export 'type_favicon_model.dart';

class TypeFaviconWidget extends StatefulWidget {
  const TypeFaviconWidget({super.key});

  @override
  State<TypeFaviconWidget> createState() => _TypeFaviconWidgetState();
}

class _TypeFaviconWidgetState extends State<TypeFaviconWidget> {
  late TypeFaviconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TypeFaviconModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(0.0),
      child: Image.network(
        'https://images.unsplash.com/photo-1611162617474-5b21e879e113?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxuZXRmbGl4JTIwbG9nb3xlbnwwfHx8fDE3MDc2ODI2MDl8MA&ixlib=rb-4.0.3&q=80&w=1080',
        width: 16.0,
        height: 16.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
