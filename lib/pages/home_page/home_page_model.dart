import '/components/sidebar1/sidebar1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar1 component.
  late Sidebar1Model sidebar1Model;

  @override
  void initState(BuildContext context) {
    sidebar1Model = createModel(context, () => Sidebar1Model());
  }

  @override
  void dispose() {
    sidebar1Model.dispose();
  }
}
