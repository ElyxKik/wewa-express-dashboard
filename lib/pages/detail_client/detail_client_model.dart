import '/components/sidebar2/sidebar2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'detail_client_widget.dart' show DetailClientWidget;
import 'package:flutter/material.dart';

class DetailClientModel extends FlutterFlowModel<DetailClientWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar2 component.
  late Sidebar2Model sidebar2Model;

  @override
  void initState(BuildContext context) {
    sidebar2Model = createModel(context, () => Sidebar2Model());
  }

  @override
  void dispose() {
    sidebar2Model.dispose();
  }
}
