import '/components/sidebar3/sidebar3_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'zone_livraison_widget.dart' show ZoneLivraisonWidget;
import 'package:flutter/material.dart';

class ZoneLivraisonModel extends FlutterFlowModel<ZoneLivraisonWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar3 component.
  late Sidebar3Model sidebar3Model;

  @override
  void initState(BuildContext context) {
    sidebar3Model = createModel(context, () => Sidebar3Model());
  }

  @override
  void dispose() {
    sidebar3Model.dispose();
  }
}
