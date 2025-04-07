import '/components/sidebar3/sidebar3_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'commande_multiple_widget.dart' show CommandeMultipleWidget;
import 'package:flutter/material.dart';

class CommandeMultipleModel extends FlutterFlowModel<CommandeMultipleWidget> {
  ///  Local state fields for this page.

  int formNumber = 1;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
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
