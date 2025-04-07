import '/flutter_flow/flutter_flow_util.dart';
import 'edit_email_widget.dart' show EditEmailWidget;
import 'package:flutter/material.dart';

class EditEmailModel extends FlutterFlowModel<EditEmailWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for mdp widget.
  FocusNode? mdpFocusNode;
  TextEditingController? mdpTextController;
  late bool mdpVisibility;
  String? Function(BuildContext, String?)? mdpTextControllerValidator;
  // Stores action output result for [Custom Action - checkPassword] action in Button widget.
  bool? reponse;

  @override
  void initState(BuildContext context) {
    emailTextControllerValidator = _emailTextControllerValidator;
    mdpVisibility = false;
  }

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    mdpFocusNode?.dispose();
    mdpTextController?.dispose();
  }
}
