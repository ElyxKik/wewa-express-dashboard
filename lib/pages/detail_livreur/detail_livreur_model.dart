import '/components/sidebar5/sidebar5_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detail_livreur_widget.dart' show DetailLivreurWidget;
import 'package:flutter/material.dart';

class DetailLivreurModel extends FlutterFlowModel<DetailLivreurWidget> {
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
