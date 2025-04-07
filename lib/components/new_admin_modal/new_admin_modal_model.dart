import '/flutter_flow/flutter_flow_util.dart';
import 'new_admin_modal_widget.dart' show NewAdminModalWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class NewAdminModalModel extends FlutterFlowModel<NewAdminModalWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for display_name widget.
  FocusNode? displayNameFocusNode;
  TextEditingController? displayNameTextController;
  String? Function(BuildContext, String?)? displayNameTextControllerValidator;
  String? _displayNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Champ obligatoire';
    }

    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Champ obligatoire';
    }

    return null;
  }

  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  final phoneMask = MaskTextInputFormatter(mask: '#########');
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // State field(s) for motDePasse widget.
  FocusNode? motDePasseFocusNode;
  TextEditingController? motDePasseTextController;
  late bool motDePasseVisibility;
  String? Function(BuildContext, String?)? motDePasseTextControllerValidator;
  String? _motDePasseTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Champ obligatoire';
    }

    return null;
  }

  // Stores action output result for [Custom Action - checkEmailDontExist] action in Button widget.
  bool? emailVerifiaction;
  // Stores action output result for [Custom Action - checkAdmin] action in Button widget.
  bool? verfication;
  // Stores action output result for [Custom Action - newUser] action in Button widget.
  String? password;

  @override
  void initState(BuildContext context) {
    displayNameTextControllerValidator = _displayNameTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    motDePasseVisibility = false;
    motDePasseTextControllerValidator = _motDePasseTextControllerValidator;
  }

  @override
  void dispose() {
    displayNameFocusNode?.dispose();
    displayNameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    motDePasseFocusNode?.dispose();
    motDePasseTextController?.dispose();
  }
}
