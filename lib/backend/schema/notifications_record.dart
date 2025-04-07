import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationsRecord extends FirestoreRecord {
  NotificationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  String? _user;
  String get user => _user ?? '';
  bool hasUser() => _user != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "commande" field.
  String? _commande;
  String get commande => _commande ?? '';
  bool hasCommande() => _commande != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "admin" field.
  String? _admin;
  String get admin => _admin ?? '';
  bool hasAdmin() => _admin != null;

  // "livreur" field.
  String? _livreur;
  String get livreur => _livreur ?? '';
  bool hasLivreur() => _livreur != null;

  // "read" field.
  bool? _read;
  bool get read => _read ?? false;
  bool hasRead() => _read != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _user = snapshotData['user'] as String?;
    _message = snapshotData['message'] as String?;
    _commande = snapshotData['commande'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _admin = snapshotData['admin'] as String?;
    _livreur = snapshotData['livreur'] as String?;
    _read = snapshotData['read'] as bool?;
    _status = snapshotData['status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notifications');

  static Stream<NotificationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationsRecord.fromSnapshot(s));

  static Future<NotificationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationsRecord.fromSnapshot(s));

  static NotificationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationsRecordData({
  String? user,
  String? message,
  String? commande,
  DateTime? createdTime,
  String? admin,
  String? livreur,
  bool? read,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'message': message,
      'commande': commande,
      'created_time': createdTime,
      'admin': admin,
      'livreur': livreur,
      'read': read,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationsRecordDocumentEquality
    implements Equality<NotificationsRecord> {
  const NotificationsRecordDocumentEquality();

  @override
  bool equals(NotificationsRecord? e1, NotificationsRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.message == e2?.message &&
        e1?.commande == e2?.commande &&
        e1?.createdTime == e2?.createdTime &&
        e1?.admin == e2?.admin &&
        e1?.livreur == e2?.livreur &&
        e1?.read == e2?.read &&
        e1?.status == e2?.status;
  }

  @override
  int hash(NotificationsRecord? e) => const ListEquality().hash([
        e?.user,
        e?.message,
        e?.commande,
        e?.createdTime,
        e?.admin,
        e?.livreur,
        e?.read,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificationsRecord;
}
