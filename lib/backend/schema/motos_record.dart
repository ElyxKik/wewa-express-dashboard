import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MotosRecord extends FirestoreRecord {
  MotosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  bool hasModel() => _model != null;

  // "matricule" field.
  String? _matricule;
  String get matricule => _matricule ?? '';
  bool hasMatricule() => _matricule != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _model = snapshotData['model'] as String?;
    _matricule = snapshotData['matricule'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('motos');

  static Stream<MotosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MotosRecord.fromSnapshot(s));

  static Future<MotosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MotosRecord.fromSnapshot(s));

  static MotosRecord fromSnapshot(DocumentSnapshot snapshot) => MotosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MotosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MotosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MotosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MotosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMotosRecordData({
  String? uid,
  String? model,
  String? matricule,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'model': model,
      'matricule': matricule,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class MotosRecordDocumentEquality implements Equality<MotosRecord> {
  const MotosRecordDocumentEquality();

  @override
  bool equals(MotosRecord? e1, MotosRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.model == e2?.model &&
        e1?.matricule == e2?.matricule &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(MotosRecord? e) => const ListEquality()
      .hash([e?.uid, e?.model, e?.matricule, e?.createdTime]);

  @override
  bool isValidKey(Object? o) => o is MotosRecord;
}
