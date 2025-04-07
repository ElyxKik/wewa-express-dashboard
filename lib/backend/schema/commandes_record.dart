import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommandesRecord extends FirestoreRecord {
  CommandesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nom_destinataire" field.
  String? _nomDestinataire;
  String get nomDestinataire => _nomDestinataire ?? '';
  bool hasNomDestinataire() => _nomDestinataire != null;

  // "adresse_livraison" field.
  String? _adresseLivraison;
  String get adresseLivraison => _adresseLivraison ?? '';
  bool hasAdresseLivraison() => _adresseLivraison != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  bool hasNote() => _note != null;

  // "emplacement_user" field.
  LatLng? _emplacementUser;
  LatLng? get emplacementUser => _emplacementUser;
  bool hasEmplacementUser() => _emplacementUser != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "telephone_destinataire" field.
  String? _telephoneDestinataire;
  String get telephoneDestinataire => _telephoneDestinataire ?? '';
  bool hasTelephoneDestinataire() => _telephoneDestinataire != null;

  // "livreur" field.
  String? _livreur;
  String get livreur => _livreur ?? '';
  bool hasLivreur() => _livreur != null;

  // "emplacement_livreur" field.
  LatLng? _emplacementLivreur;
  LatLng? get emplacementLivreur => _emplacementLivreur;
  bool hasEmplacementLivreur() => _emplacementLivreur != null;

  // "date_livraison" field.
  DateTime? _dateLivraison;
  DateTime? get dateLivraison => _dateLivraison;
  bool hasDateLivraison() => _dateLivraison != null;

  // "nom_expediteur" field.
  String? _nomExpediteur;
  String get nomExpediteur => _nomExpediteur ?? '';
  bool hasNomExpediteur() => _nomExpediteur != null;

  // "telephone_expediteur" field.
  String? _telephoneExpediteur;
  String get telephoneExpediteur => _telephoneExpediteur ?? '';
  bool hasTelephoneExpediteur() => _telephoneExpediteur != null;

  // "adresse_expediteur" field.
  String? _adresseExpediteur;
  String get adresseExpediteur => _adresseExpediteur ?? '';
  bool hasAdresseExpediteur() => _adresseExpediteur != null;

  // "nom_livreur" field.
  String? _nomLivreur;
  String get nomLivreur => _nomLivreur ?? '';
  bool hasNomLivreur() => _nomLivreur != null;

  // "tag" field.
  String? _tag;
  String get tag => _tag ?? '';
  bool hasTag() => _tag != null;

  // "multiple" field.
  bool? _multiple;
  bool get multiple => _multiple ?? false;
  bool hasMultiple() => _multiple != null;

  // "actif" field.
  bool? _actif;
  bool get actif => _actif ?? false;
  bool hasActif() => _actif != null;

  // "emplacement_destinataire" field.
  LatLng? _emplacementDestinataire;
  LatLng? get emplacementDestinataire => _emplacementDestinataire;
  bool hasEmplacementDestinataire() => _emplacementDestinataire != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  bool hasCode() => _code != null;

  // "qrcode" field.
  String? _qrcode;
  String get qrcode => _qrcode ?? '';
  bool hasQrcode() => _qrcode != null;

  // "file_path" field.
  String? _filePath;
  String get filePath => _filePath ?? '';
  bool hasFilePath() => _filePath != null;

  // "zone_livraison" field.
  DocumentReference? _zoneLivraison;
  DocumentReference? get zoneLivraison => _zoneLivraison;
  bool hasZoneLivraison() => _zoneLivraison != null;

  // "code_livraison" field.
  String? _codeLivraison;
  String get codeLivraison => _codeLivraison ?? '';
  bool hasCodeLivraison() => _codeLivraison != null;

  // "email_destinataire" field.
  String? _emailDestinataire;
  String get emailDestinataire => _emailDestinataire ?? '';
  bool hasEmailDestinataire() => _emailDestinataire != null;

  // "email_expediteur" field.
  String? _emailExpediteur;
  String get emailExpediteur => _emailExpediteur ?? '';
  bool hasEmailExpediteur() => _emailExpediteur != null;

  // "admin_mail" field.
  String? _adminMail;
  String get adminMail => _adminMail ?? '';
  bool hasAdminMail() => _adminMail != null;

  // "prix" field.
  int? _prix;
  int get prix => _prix ?? 0;
  bool hasPrix() => _prix != null;

  // "payed" field.
  bool? _payed;
  bool get payed => _payed ?? false;
  bool hasPayed() => _payed != null;

  // "date_recuperation" field.
  DateTime? _dateRecuperation;
  DateTime? get dateRecuperation => _dateRecuperation;
  bool hasDateRecuperation() => _dateRecuperation != null;

  void _initializeFields() {
    _nomDestinataire = snapshotData['nom_destinataire'] as String?;
    _adresseLivraison = snapshotData['adresse_livraison'] as String?;
    _note = snapshotData['note'] as String?;
    _emplacementUser = snapshotData['emplacement_user'] as LatLng?;
    _date = snapshotData['date'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _telephoneDestinataire = snapshotData['telephone_destinataire'] as String?;
    _livreur = snapshotData['livreur'] as String?;
    _emplacementLivreur = snapshotData['emplacement_livreur'] as LatLng?;
    _dateLivraison = snapshotData['date_livraison'] as DateTime?;
    _nomExpediteur = snapshotData['nom_expediteur'] as String?;
    _telephoneExpediteur = snapshotData['telephone_expediteur'] as String?;
    _adresseExpediteur = snapshotData['adresse_expediteur'] as String?;
    _nomLivreur = snapshotData['nom_livreur'] as String?;
    _tag = snapshotData['tag'] as String?;
    _multiple = snapshotData['multiple'] as bool?;
    _actif = snapshotData['actif'] as bool?;
    _emplacementDestinataire =
        snapshotData['emplacement_destinataire'] as LatLng?;
    _user = snapshotData['user'] as DocumentReference?;
    _code = snapshotData['code'] as String?;
    _qrcode = snapshotData['qrcode'] as String?;
    _filePath = snapshotData['file_path'] as String?;
    _zoneLivraison = snapshotData['zone_livraison'] as DocumentReference?;
    _codeLivraison = snapshotData['code_livraison'] as String?;
    _emailDestinataire = snapshotData['email_destinataire'] as String?;
    _emailExpediteur = snapshotData['email_expediteur'] as String?;
    _adminMail = snapshotData['admin_mail'] as String?;
    _prix = castToType<int>(snapshotData['prix']);
    _payed = snapshotData['payed'] as bool?;
    _dateRecuperation = snapshotData['date_recuperation'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('commandes');

  static Stream<CommandesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommandesRecord.fromSnapshot(s));

  static Future<CommandesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommandesRecord.fromSnapshot(s));

  static CommandesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommandesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommandesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommandesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommandesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommandesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommandesRecordData({
  String? nomDestinataire,
  String? adresseLivraison,
  String? note,
  LatLng? emplacementUser,
  DateTime? date,
  String? status,
  String? telephoneDestinataire,
  String? livreur,
  LatLng? emplacementLivreur,
  DateTime? dateLivraison,
  String? nomExpediteur,
  String? telephoneExpediteur,
  String? adresseExpediteur,
  String? nomLivreur,
  String? tag,
  bool? multiple,
  bool? actif,
  LatLng? emplacementDestinataire,
  DocumentReference? user,
  String? code,
  String? qrcode,
  String? filePath,
  DocumentReference? zoneLivraison,
  String? codeLivraison,
  String? emailDestinataire,
  String? emailExpediteur,
  String? adminMail,
  int? prix,
  bool? payed,
  DateTime? dateRecuperation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nom_destinataire': nomDestinataire,
      'adresse_livraison': adresseLivraison,
      'note': note,
      'emplacement_user': emplacementUser,
      'date': date,
      'status': status,
      'telephone_destinataire': telephoneDestinataire,
      'livreur': livreur,
      'emplacement_livreur': emplacementLivreur,
      'date_livraison': dateLivraison,
      'nom_expediteur': nomExpediteur,
      'telephone_expediteur': telephoneExpediteur,
      'adresse_expediteur': adresseExpediteur,
      'nom_livreur': nomLivreur,
      'tag': tag,
      'multiple': multiple,
      'actif': actif,
      'emplacement_destinataire': emplacementDestinataire,
      'user': user,
      'code': code,
      'qrcode': qrcode,
      'file_path': filePath,
      'zone_livraison': zoneLivraison,
      'code_livraison': codeLivraison,
      'email_destinataire': emailDestinataire,
      'email_expediteur': emailExpediteur,
      'admin_mail': adminMail,
      'prix': prix,
      'payed': payed,
      'date_recuperation': dateRecuperation,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommandesRecordDocumentEquality implements Equality<CommandesRecord> {
  const CommandesRecordDocumentEquality();

  @override
  bool equals(CommandesRecord? e1, CommandesRecord? e2) {
    return e1?.nomDestinataire == e2?.nomDestinataire &&
        e1?.adresseLivraison == e2?.adresseLivraison &&
        e1?.note == e2?.note &&
        e1?.emplacementUser == e2?.emplacementUser &&
        e1?.date == e2?.date &&
        e1?.status == e2?.status &&
        e1?.telephoneDestinataire == e2?.telephoneDestinataire &&
        e1?.livreur == e2?.livreur &&
        e1?.emplacementLivreur == e2?.emplacementLivreur &&
        e1?.dateLivraison == e2?.dateLivraison &&
        e1?.nomExpediteur == e2?.nomExpediteur &&
        e1?.telephoneExpediteur == e2?.telephoneExpediteur &&
        e1?.adresseExpediteur == e2?.adresseExpediteur &&
        e1?.nomLivreur == e2?.nomLivreur &&
        e1?.tag == e2?.tag &&
        e1?.multiple == e2?.multiple &&
        e1?.actif == e2?.actif &&
        e1?.emplacementDestinataire == e2?.emplacementDestinataire &&
        e1?.user == e2?.user &&
        e1?.code == e2?.code &&
        e1?.qrcode == e2?.qrcode &&
        e1?.filePath == e2?.filePath &&
        e1?.zoneLivraison == e2?.zoneLivraison &&
        e1?.codeLivraison == e2?.codeLivraison &&
        e1?.emailDestinataire == e2?.emailDestinataire &&
        e1?.emailExpediteur == e2?.emailExpediteur &&
        e1?.adminMail == e2?.adminMail &&
        e1?.prix == e2?.prix &&
        e1?.payed == e2?.payed &&
        e1?.dateRecuperation == e2?.dateRecuperation;
  }

  @override
  int hash(CommandesRecord? e) => const ListEquality().hash([
        e?.nomDestinataire,
        e?.adresseLivraison,
        e?.note,
        e?.emplacementUser,
        e?.date,
        e?.status,
        e?.telephoneDestinataire,
        e?.livreur,
        e?.emplacementLivreur,
        e?.dateLivraison,
        e?.nomExpediteur,
        e?.telephoneExpediteur,
        e?.adresseExpediteur,
        e?.nomLivreur,
        e?.tag,
        e?.multiple,
        e?.actif,
        e?.emplacementDestinataire,
        e?.user,
        e?.code,
        e?.qrcode,
        e?.filePath,
        e?.zoneLivraison,
        e?.codeLivraison,
        e?.emailDestinataire,
        e?.emailExpediteur,
        e?.adminMail,
        e?.prix,
        e?.payed,
        e?.dateRecuperation
      ]);

  @override
  bool isValidKey(Object? o) => o is CommandesRecord;
}
