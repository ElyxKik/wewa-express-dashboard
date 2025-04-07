import '/flutter_flow/flutter_flow_util.dart';
import 'new_zone_livraison_widget.dart' show NewZoneLivraisonWidget;
import 'package:flutter/material.dart';

class NewZoneLivraisonModel extends FlutterFlowModel<NewZoneLivraisonWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for identifiant widget.
  FocusNode? identifiantFocusNode;
  TextEditingController? identifiantTextController;
  String? Function(BuildContext, String?)? identifiantTextControllerValidator;
  String? _identifiantTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Champ obligatoire';
    }

    return null;
  }

  // State field(s) for prix widget.
  FocusNode? prixFocusNode;
  TextEditingController? prixTextController;
  String? Function(BuildContext, String?)? prixTextControllerValidator;
  String? _prixTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Champ obligatoire';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // State field(s) for note widget.
  FocusNode? noteFocusNode;
  TextEditingController? noteTextController;
  String? Function(BuildContext, String?)? noteTextControllerValidator;

  @override
  void initState(BuildContext context) {
    identifiantTextControllerValidator = _identifiantTextControllerValidator;
    prixTextControllerValidator = _prixTextControllerValidator;
  }

  @override
  void dispose() {
    identifiantFocusNode?.dispose();
    identifiantTextController?.dispose();

    prixFocusNode?.dispose();
    prixTextController?.dispose();

    noteFocusNode?.dispose();
    noteTextController?.dispose();
  }
}
