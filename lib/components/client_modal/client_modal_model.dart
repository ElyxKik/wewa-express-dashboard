import '/flutter_flow/flutter_flow_util.dart';
import 'client_modal_widget.dart' show ClientModalWidget;
import 'package:flutter/material.dart';

class ClientModalModel extends FlutterFlowModel<ClientModalWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nomComplet widget.
  FocusNode? nomCompletFocusNode;
  TextEditingController? nomCompletTextController;
  String? Function(BuildContext, String?)? nomCompletTextControllerValidator;
  String? _nomCompletTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for telephone widget.
  FocusNode? telephoneFocusNode;
  TextEditingController? telephoneTextController;
  String? Function(BuildContext, String?)? telephoneTextControllerValidator;
  String? _telephoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

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

  // State field(s) for adresse widget.
  FocusNode? adresseFocusNode;
  TextEditingController? adresseTextController;
  String? Function(BuildContext, String?)? adresseTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for motDePasse widget.
  FocusNode? motDePasseFocusNode;
  TextEditingController? motDePasseTextController;
  late bool motDePasseVisibility;
  String? Function(BuildContext, String?)? motDePasseTextControllerValidator;
  // Stores action output result for [Custom Action - checkEmailDontExist] action in Button widget.
  bool? emailDontExist;
  // Stores action output result for [Custom Action - checkAdmin] action in Button widget.
  bool? checkAdmin;
  // Stores action output result for [Custom Action - newUser] action in Button widget.
  String? password;

  @override
  void initState(BuildContext context) {
    nomCompletTextControllerValidator = _nomCompletTextControllerValidator;
    telephoneTextControllerValidator = _telephoneTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    motDePasseVisibility = false;
  }

  @override
  void dispose() {
    nomCompletFocusNode?.dispose();
    nomCompletTextController?.dispose();

    telephoneFocusNode?.dispose();
    telephoneTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    adresseFocusNode?.dispose();
    adresseTextController?.dispose();

    motDePasseFocusNode?.dispose();
    motDePasseTextController?.dispose();
  }
}
