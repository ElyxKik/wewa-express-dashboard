import '/flutter_flow/flutter_flow_util.dart';
import 'edit_profil_client_widget.dart' show EditProfilClientWidget;
import 'package:flutter/material.dart';

class EditProfilClientModel extends FlutterFlowModel<EditProfilClientWidget> {
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

  @override
  void initState(BuildContext context) {
    nomCompletTextControllerValidator = _nomCompletTextControllerValidator;
    telephoneTextControllerValidator = _telephoneTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
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
  }
}
