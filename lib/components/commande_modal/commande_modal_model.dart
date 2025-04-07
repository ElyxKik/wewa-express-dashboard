import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'commande_modal_widget.dart' show CommandeModalWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CommandeModalModel extends FlutterFlowModel<CommandeModalWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nomExpediteur widget.
  FocusNode? nomExpediteurFocusNode;
  TextEditingController? nomExpediteurTextController;
  String? Function(BuildContext, String?)? nomExpediteurTextControllerValidator;
  // State field(s) for telephoneExpediteur widget.
  FocusNode? telephoneExpediteurFocusNode;
  TextEditingController? telephoneExpediteurTextController;
  final telephoneExpediteurMask = MaskTextInputFormatter(mask: '#########');
  String? Function(BuildContext, String?)?
      telephoneExpediteurTextControllerValidator;
  // State field(s) for nomDestinataire widget.
  FocusNode? nomDestinataireFocusNode;
  TextEditingController? nomDestinataireTextController;
  String? Function(BuildContext, String?)?
      nomDestinataireTextControllerValidator;
  // State field(s) for telephone widget.
  FocusNode? telephoneFocusNode;
  TextEditingController? telephoneTextController;
  final telephoneMask = MaskTextInputFormatter(mask: '#########');
  String? Function(BuildContext, String?)? telephoneTextControllerValidator;
  // State field(s) for locationExp widget.
  FFPlace locationExpValue = FFPlace();
  // State field(s) for locationDest widget.
  FFPlace locationDestValue = FFPlace();
  // State field(s) for email_client widget.
  FocusNode? emailClientFocusNode;
  TextEditingController? emailClientTextController;
  String? Function(BuildContext, String?)? emailClientTextControllerValidator;
  // State field(s) for email_destinataire widget.
  FocusNode? emailDestinataireFocusNode;
  TextEditingController? emailDestinataireTextController;
  String? Function(BuildContext, String?)?
      emailDestinataireTextControllerValidator;
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
  // Stores action output result for [Custom Action - codePickUp] action in Button widget.
  String? code;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CommandesRecord? commandeRefence;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomExpediteurFocusNode?.dispose();
    nomExpediteurTextController?.dispose();

    telephoneExpediteurFocusNode?.dispose();
    telephoneExpediteurTextController?.dispose();

    nomDestinataireFocusNode?.dispose();
    nomDestinataireTextController?.dispose();

    telephoneFocusNode?.dispose();
    telephoneTextController?.dispose();

    emailClientFocusNode?.dispose();
    emailClientTextController?.dispose();

    emailDestinataireFocusNode?.dispose();
    emailDestinataireTextController?.dispose();

    adresseColisFocusNode?.dispose();
    adresseColisTextController?.dispose();

    adresseLivraisonFocusNode?.dispose();
    adresseLivraisonTextController?.dispose();

    noteFocusNode?.dispose();
    noteTextController?.dispose();
  }
}
