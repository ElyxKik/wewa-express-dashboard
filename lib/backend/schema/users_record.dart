import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "adresse" field.
  String? _adresse;
  String get adresse => _adresse ?? '';
  bool hasAdresse() => _adresse != null;

  // "entreprise" field.
  bool? _entreprise;
  bool get entreprise => _entreprise ?? false;
  bool hasEntreprise() => _entreprise != null;

  // "en_route" field.
  bool? _enRoute;
  bool get enRoute => _enRoute ?? false;
  bool hasEnRoute() => _enRoute != null;

  // "is_super_user" field.
  bool? _isSuperUser;
  bool get isSuperUser => _isSuperUser ?? false;
  bool hasIsSuperUser() => _isSuperUser != null;

  // "banned" field.
  bool? _banned;
  bool get banned => _banned ?? false;
  bool hasBanned() => _banned != null;

  // "moto" field.
  DocumentReference? _moto;
  DocumentReference? get moto => _moto;
  bool hasMoto() => _moto != null;

  // "matricule_moto" field.
  String? _matriculeMoto;
  String get matriculeMoto => _matriculeMoto ?? '';
  bool hasMatriculeMoto() => _matriculeMoto != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _bio = snapshotData['bio'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _role = snapshotData['role'] as String?;
    _adresse = snapshotData['adresse'] as String?;
    _entreprise = snapshotData['entreprise'] as bool?;
    _enRoute = snapshotData['en_route'] as bool?;
    _isSuperUser = snapshotData['is_super_user'] as bool?;
    _banned = snapshotData['banned'] as bool?;
    _moto = snapshotData['moto'] as DocumentReference?;
    _matriculeMoto = snapshotData['matricule_moto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  String? bio,
  String? userName,
  String? role,
  String? adresse,
  bool? entreprise,
  bool? enRoute,
  bool? isSuperUser,
  bool? banned,
  DocumentReference? moto,
  String? matriculeMoto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'edited_time': editedTime,
      'bio': bio,
      'user_name': userName,
      'role': role,
      'adresse': adresse,
      'entreprise': entreprise,
      'en_route': enRoute,
      'is_super_user': isSuperUser,
      'banned': banned,
      'moto': moto,
      'matricule_moto': matriculeMoto,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.editedTime == e2?.editedTime &&
        e1?.bio == e2?.bio &&
        e1?.userName == e2?.userName &&
        e1?.role == e2?.role &&
        e1?.adresse == e2?.adresse &&
        e1?.entreprise == e2?.entreprise &&
        e1?.enRoute == e2?.enRoute &&
        e1?.isSuperUser == e2?.isSuperUser &&
        e1?.banned == e2?.banned &&
        e1?.moto == e2?.moto &&
        e1?.matriculeMoto == e2?.matriculeMoto;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.editedTime,
        e?.bio,
        e?.userName,
        e?.role,
        e?.adresse,
        e?.entreprise,
        e?.enRoute,
        e?.isSuperUser,
        e?.banned,
        e?.moto,
        e?.matriculeMoto
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
