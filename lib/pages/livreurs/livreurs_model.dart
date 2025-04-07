import '/components/sidebar5/sidebar5_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'livreurs_widget.dart' show LivreursWidget;
import 'package:flutter/material.dart';

class LivreursModel extends FlutterFlowModel<LivreursWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar5 component.
  late Sidebar5Model sidebar5Model;

  @override
  void initState(BuildContext context) {
    sidebar5Model = createModel(context, () => Sidebar5Model());
  }

  @override
  void dispose() {
    sidebar5Model.dispose();
  }
}
