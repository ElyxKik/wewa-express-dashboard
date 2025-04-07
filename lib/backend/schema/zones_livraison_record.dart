import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ZonesLivraisonRecord extends FirestoreRecord {
  ZonesLivraisonRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "identifiant" field.
  String? _identifiant;
  String get identifiant => _identifiant ?? '';
  bool hasIdentifiant() => _identifiant != null;

  // "commune" field.
  String? _commune;
  String get commune => _commune ?? '';
  bool hasCommune() => _commune != null;

  // "prix" field.
  int? _prix;
  int get prix => _prix ?? 0;
  bool hasPrix() => _prix != null;

  void _initializeFields() {
    _identifiant = snapshotData['identifiant'] as String?;
    _commune = snapshotData['commune'] as String?;
    _prix = castToType<int>(snapshotData['prix']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('zones_livraison');

  static Stream<ZonesLivraisonRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ZonesLivraisonRecord.fromSnapshot(s));

  static Future<ZonesLivraisonRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ZonesLivraisonRecord.fromSnapshot(s));

  static ZonesLivraisonRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ZonesLivraisonRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ZonesLivraisonRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ZonesLivraisonRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ZonesLivraisonRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ZonesLivraisonRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createZonesLivraisonRecordData({
  String? identifiant,
  String? commune,
  int? prix,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'identifiant': identifiant,
      'commune': commune,
      'prix': prix,
    }.withoutNulls,
  );

  return firestoreData;
}

class ZonesLivraisonRecordDocumentEquality
    implements Equality<ZonesLivraisonRecord> {
  const ZonesLivraisonRecordDocumentEquality();

  @override
  bool equals(ZonesLivraisonRecord? e1, ZonesLivraisonRecord? e2) {
    return e1?.identifiant == e2?.identifiant &&
        e1?.commune == e2?.commune &&
        e1?.prix == e2?.prix;
  }

  @override
  int hash(ZonesLivraisonRecord? e) =>
      const ListEquality().hash([e?.identifiant, e?.commune, e?.prix]);

  @override
  bool isValidKey(Object? o) => o is ZonesLivraisonRecord;
}
