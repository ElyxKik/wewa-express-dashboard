import '/flutter_flow/flutter_flow_util.dart';
import 'edit_profil_widget.dart' show EditProfilWidget;
import 'package:flutter/material.dart';

class EditProfilModel extends FlutterFlowModel<EditProfilWidget> {
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

  // State field(s) for adresse widget.
  FocusNode? adresseFocusNode;
  TextEditingController? adresseTextController;
  String? Function(BuildContext, String?)? adresseTextControllerValidator;

  @override
  void initState(BuildContext context) {
    nomCompletTextControllerValidator = _nomCompletTextControllerValidator;
    telephoneTextControllerValidator = _telephoneTextControllerValidator;
  }

  @override
  void dispose() {
    nomCompletFocusNode?.dispose();
    nomCompletTextController?.dispose();

    telephoneFocusNode?.dispose();
    telephoneTextController?.dispose();

    adresseFocusNode?.dispose();
    adresseTextController?.dispose();
  }
}
