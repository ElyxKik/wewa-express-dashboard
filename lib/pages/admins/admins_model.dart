import '/components/sidebar6/sidebar6_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'admins_widget.dart' show AdminsWidget;
import 'package:flutter/material.dart';

class AdminsModel extends FlutterFlowModel<AdminsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar6 component.
  late Sidebar6Model sidebar6Model;

  @override
  void initState(BuildContext context) {
    sidebar6Model = createModel(context, () => Sidebar6Model());
  }

  @override
  void dispose() {
    sidebar6Model.dispose();
  }
}
