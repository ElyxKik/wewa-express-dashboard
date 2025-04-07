import '/flutter_flow/flutter_flow_util.dart';
import 'update_commande_widget.dart' show UpdateCommandeWidget;
import 'package:flutter/material.dart';

class UpdateCommandeModel extends FlutterFlowModel<UpdateCommandeWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nom_destinataire widget.
  FocusNode? nomDestinataireFocusNode;
  TextEditingController? nomDestinataireTextController;
  String? Function(BuildContext, String?)?
      nomDestinataireTextControllerValidator;
  // State field(s) for telephone widget.
  FocusNode? telephoneFocusNode;
  TextEditingController? telephoneTextController;
  String? Function(BuildContext, String?)? telephoneTextControllerValidator;
  // State field(s) for email_client widget.
  FocusNode? emailClientFocusNode1;
  TextEditingController? emailClientTextController1;
  String? Function(BuildContext, String?)? emailClientTextController1Validator;
  // State field(s) for email_client widget.
  FocusNode? emailClientFocusNode2;
  TextEditingController? emailClientTextController2;
  String? Function(BuildContext, String?)? emailClientTextController2Validator;
  // State field(s) for adresseColis widget.
  FocusNode? adresseColisFocusNode;
  TextEditingController? adresseColisTextController;
  String? Function(BuildContext, String?)? adresseColisTextControllerValidator;
  // State field(s) for adresseLivraison widget.
  FocusNode? adresseLivraisonFocusNode;
  TextEditingController? adresseLivraisonTextController;
  String? Function(BuildContext, String?)?
      adresseLivraisonTextControllerValidator;
  // State field(s) for note widget.
  FocusNode? noteFocusNode;
  TextEditingController? noteTextController;
  String? Function(BuildContext, String?)? noteTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomDestinataireFocusNode?.dispose();
    nomDestinataireTextController?.dispose();

    telephoneFocusNode?.dispose();
    telephoneTextController?.dispose();

    emailClientFocusNode1?.dispose();
    emailClientTextController1?.dispose();

    emailClientFocusNode2?.dispose();
    emailClientTextController2?.dispose();

    adresseColisFocusNode?.dispose();
    adresseColisTextController?.dispose();

    adresseLivraisonFocusNode?.dispose();
    adresseLivraisonTextController?.dispose();

    noteFocusNode?.dispose();
    noteTextController?.dispose();
  }
}
