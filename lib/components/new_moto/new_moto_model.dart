import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_moto_widget.dart' show NewMotoWidget;
import 'package:flutter/material.dart';

class NewMotoModel extends FlutterFlowModel<NewMotoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for model widget.
  FocusNode? modelFocusNode;
  TextEditingController? modelTextController;
  String? Function(BuildContext, String?)? modelTextControllerValidator;
  String? _modelTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Champ obligatoire';
    }

    return null;
  }

  // State field(s) for matricule widget.
  FocusNode? matriculeFocusNode;
  TextEditingController? matriculeTextController;
  String? Function(BuildContext, String?)? matriculeTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  MotosRecord? moto;

  @override
  void initState(BuildContext context) {
    modelTextControllerValidator = _modelTextControllerValidator;
  }

  @override
  void dispose() {
    modelFocusNode?.dispose();
    modelTextController?.dispose();

    matriculeFocusNode?.dispose();
    matriculeTextController?.dispose();
  }
}
