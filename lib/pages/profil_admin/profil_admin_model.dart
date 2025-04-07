import '/components/sidebar7/sidebar7_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'profil_admin_widget.dart' show ProfilAdminWidget;
import 'package:flutter/material.dart';

class ProfilAdminModel extends FlutterFlowModel<ProfilAdminWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar7 component.
  late Sidebar7Model sidebar7Model;

  @override
  void initState(BuildContext context) {
    sidebar7Model = createModel(context, () => Sidebar7Model());
  }

  @override
  void dispose() {
    sidebar7Model.dispose();
  }
}
