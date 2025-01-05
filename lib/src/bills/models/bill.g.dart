// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters, duplicate_ignore
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_internal_member

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class BillCollectionReference
    implements
        BillQuery,
        FirestoreCollectionReference<Bill, BillQuerySnapshot> {
  factory BillCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$BillCollectionReference;

  static Bill fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Bill.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    Bill value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<Bill> get reference;

  @override
  BillDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<BillDocumentReference> add(Bill value);
}

class _$BillCollectionReference extends _$BillQuery
    implements BillCollectionReference {
  factory _$BillCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$BillCollectionReference._(
      firestore.collection('bills').withConverter(
            fromFirestore: BillCollectionReference.fromFirestore,
            toFirestore: BillCollectionReference.toFirestore,
          ),
    );
  }

  _$BillCollectionReference._(
    CollectionReference<Bill> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Bill> get reference =>
      super.reference as CollectionReference<Bill>;

  @override
  BillDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return BillDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<BillDocumentReference> add(Bill value) {
    return reference.add(value).then((ref) => BillDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$BillCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class BillDocumentReference
    extends FirestoreDocumentReference<Bill, BillDocumentSnapshot> {
  factory BillDocumentReference(DocumentReference<Bill> reference) =
      _$BillDocumentReference;

  DocumentReference<Bill> get reference;

  /// A reference to the [BillCollectionReference] containing this document.
  BillCollectionReference get parent {
    return _$BillCollectionReference(reference.firestore);
  }

  @override
  Stream<BillDocumentSnapshot> snapshots();

  @override
  Future<BillDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    Bill model, {
    SetOptions? options,
    FieldValue amountFieldValue,
    FieldValue dateFieldValue,
    FieldValue noteFieldValue,
    FieldValue typeFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    Bill model, {
    SetOptions? options,
    FieldValue amountFieldValue,
    FieldValue dateFieldValue,
    FieldValue noteFieldValue,
    FieldValue typeFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    Bill model, {
    SetOptions? options,
    FieldValue amountFieldValue,
    FieldValue dateFieldValue,
    FieldValue noteFieldValue,
    FieldValue typeFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    int amount,
    FieldValue amountFieldValue,
    DateTime date,
    FieldValue dateFieldValue,
    String note,
    FieldValue noteFieldValue,
    String type,
    FieldValue typeFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    int amount,
    FieldValue amountFieldValue,
    DateTime date,
    FieldValue dateFieldValue,
    String note,
    FieldValue noteFieldValue,
    String type,
    FieldValue typeFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    int amount,
    FieldValue amountFieldValue,
    DateTime date,
    FieldValue dateFieldValue,
    String note,
    FieldValue noteFieldValue,
    String type,
    FieldValue typeFieldValue,
  });
}

class _$BillDocumentReference
    extends FirestoreDocumentReference<Bill, BillDocumentSnapshot>
    implements BillDocumentReference {
  _$BillDocumentReference(this.reference);

  @override
  final DocumentReference<Bill> reference;

  /// A reference to the [BillCollectionReference] containing this document.
  BillCollectionReference get parent {
    return _$BillCollectionReference(reference.firestore);
  }

  @override
  Stream<BillDocumentSnapshot> snapshots() {
    return reference.snapshots().map(BillDocumentSnapshot._);
  }

  @override
  Future<BillDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(BillDocumentSnapshot._);
  }

  @override
  Future<BillDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(BillDocumentSnapshot._);
  }

  Future<void> set(
    Bill model, {
    SetOptions? options,
    FieldValue? amountFieldValue,
    FieldValue? dateFieldValue,
    FieldValue? noteFieldValue,
    FieldValue? typeFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (amountFieldValue != null) _$BillFieldMap['amount']!: amountFieldValue,
      if (dateFieldValue != null) _$BillFieldMap['date']!: dateFieldValue,
      if (noteFieldValue != null) _$BillFieldMap['note']!: noteFieldValue,
      if (typeFieldValue != null) _$BillFieldMap['type']!: typeFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Bill model, {
    SetOptions? options,
    FieldValue? amountFieldValue,
    FieldValue? dateFieldValue,
    FieldValue? noteFieldValue,
    FieldValue? typeFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (amountFieldValue != null) _$BillFieldMap['amount']!: amountFieldValue,
      if (dateFieldValue != null) _$BillFieldMap['date']!: dateFieldValue,
      if (noteFieldValue != null) _$BillFieldMap['note']!: noteFieldValue,
      if (typeFieldValue != null) _$BillFieldMap['type']!: typeFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Bill model, {
    SetOptions? options,
    FieldValue? amountFieldValue,
    FieldValue? dateFieldValue,
    FieldValue? noteFieldValue,
    FieldValue? typeFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (amountFieldValue != null) _$BillFieldMap['amount']!: amountFieldValue,
      if (dateFieldValue != null) _$BillFieldMap['date']!: dateFieldValue,
      if (noteFieldValue != null) _$BillFieldMap['note']!: noteFieldValue,
      if (typeFieldValue != null) _$BillFieldMap['type']!: typeFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
    Object? date = _sentinel,
    FieldValue? dateFieldValue,
    Object? note = _sentinel,
    FieldValue? noteFieldValue,
    Object? type = _sentinel,
    FieldValue? typeFieldValue,
  }) async {
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    assert(
      date == _sentinel || dateFieldValue == null,
      "Cannot specify both date and dateFieldValue",
    );
    assert(
      note == _sentinel || noteFieldValue == null,
      "Cannot specify both note and noteFieldValue",
    );
    assert(
      type == _sentinel || typeFieldValue == null,
      "Cannot specify both type and typeFieldValue",
    );
    final json = {
      if (amount != _sentinel)
        _$BillFieldMap['amount']!: _$BillPerFieldToJson.amount(amount as int),
      if (amountFieldValue != null) _$BillFieldMap['amount']!: amountFieldValue,
      if (date != _sentinel)
        _$BillFieldMap['date']!: _$BillPerFieldToJson.date(date as DateTime),
      if (dateFieldValue != null) _$BillFieldMap['date']!: dateFieldValue,
      if (note != _sentinel)
        _$BillFieldMap['note']!: _$BillPerFieldToJson.note(note as String),
      if (noteFieldValue != null) _$BillFieldMap['note']!: noteFieldValue,
      if (type != _sentinel)
        _$BillFieldMap['type']!: _$BillPerFieldToJson.type(type as String),
      if (typeFieldValue != null) _$BillFieldMap['type']!: typeFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
    Object? date = _sentinel,
    FieldValue? dateFieldValue,
    Object? note = _sentinel,
    FieldValue? noteFieldValue,
    Object? type = _sentinel,
    FieldValue? typeFieldValue,
  }) {
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    assert(
      date == _sentinel || dateFieldValue == null,
      "Cannot specify both date and dateFieldValue",
    );
    assert(
      note == _sentinel || noteFieldValue == null,
      "Cannot specify both note and noteFieldValue",
    );
    assert(
      type == _sentinel || typeFieldValue == null,
      "Cannot specify both type and typeFieldValue",
    );
    final json = {
      if (amount != _sentinel)
        _$BillFieldMap['amount']!: _$BillPerFieldToJson.amount(amount as int),
      if (amountFieldValue != null) _$BillFieldMap['amount']!: amountFieldValue,
      if (date != _sentinel)
        _$BillFieldMap['date']!: _$BillPerFieldToJson.date(date as DateTime),
      if (dateFieldValue != null) _$BillFieldMap['date']!: dateFieldValue,
      if (note != _sentinel)
        _$BillFieldMap['note']!: _$BillPerFieldToJson.note(note as String),
      if (noteFieldValue != null) _$BillFieldMap['note']!: noteFieldValue,
      if (type != _sentinel)
        _$BillFieldMap['type']!: _$BillPerFieldToJson.type(type as String),
      if (typeFieldValue != null) _$BillFieldMap['type']!: typeFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
    Object? date = _sentinel,
    FieldValue? dateFieldValue,
    Object? note = _sentinel,
    FieldValue? noteFieldValue,
    Object? type = _sentinel,
    FieldValue? typeFieldValue,
  }) {
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    assert(
      date == _sentinel || dateFieldValue == null,
      "Cannot specify both date and dateFieldValue",
    );
    assert(
      note == _sentinel || noteFieldValue == null,
      "Cannot specify both note and noteFieldValue",
    );
    assert(
      type == _sentinel || typeFieldValue == null,
      "Cannot specify both type and typeFieldValue",
    );
    final json = {
      if (amount != _sentinel)
        _$BillFieldMap['amount']!: _$BillPerFieldToJson.amount(amount as int),
      if (amountFieldValue != null) _$BillFieldMap['amount']!: amountFieldValue,
      if (date != _sentinel)
        _$BillFieldMap['date']!: _$BillPerFieldToJson.date(date as DateTime),
      if (dateFieldValue != null) _$BillFieldMap['date']!: dateFieldValue,
      if (note != _sentinel)
        _$BillFieldMap['note']!: _$BillPerFieldToJson.note(note as String),
      if (noteFieldValue != null) _$BillFieldMap['note']!: noteFieldValue,
      if (type != _sentinel)
        _$BillFieldMap['type']!: _$BillPerFieldToJson.type(type as String),
      if (typeFieldValue != null) _$BillFieldMap['type']!: typeFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is BillDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class BillQuery implements QueryReference<Bill, BillQuerySnapshot> {
  @override
  BillQuery limit(int limit);

  @override
  BillQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  BillQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  BillQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BillQuery whereAmount({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    List<int>? whereIn,
    List<int>? whereNotIn,
    bool? isNull,
  });

  BillQuery whereDate({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  });

  BillQuery whereNote({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BillQuery whereType({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  BillQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    BillDocumentSnapshot? startAtDocument,
    BillDocumentSnapshot? endAtDocument,
    BillDocumentSnapshot? endBeforeDocument,
    BillDocumentSnapshot? startAfterDocument,
  });

  BillQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BillDocumentSnapshot? startAtDocument,
    BillDocumentSnapshot? endAtDocument,
    BillDocumentSnapshot? endBeforeDocument,
    BillDocumentSnapshot? startAfterDocument,
  });

  BillQuery orderByAmount({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    BillDocumentSnapshot? startAtDocument,
    BillDocumentSnapshot? endAtDocument,
    BillDocumentSnapshot? endBeforeDocument,
    BillDocumentSnapshot? startAfterDocument,
  });

  BillQuery orderByDate({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    BillDocumentSnapshot? startAtDocument,
    BillDocumentSnapshot? endAtDocument,
    BillDocumentSnapshot? endBeforeDocument,
    BillDocumentSnapshot? startAfterDocument,
  });

  BillQuery orderByNote({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BillDocumentSnapshot? startAtDocument,
    BillDocumentSnapshot? endAtDocument,
    BillDocumentSnapshot? endBeforeDocument,
    BillDocumentSnapshot? startAfterDocument,
  });

  BillQuery orderByType({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BillDocumentSnapshot? startAtDocument,
    BillDocumentSnapshot? endAtDocument,
    BillDocumentSnapshot? endBeforeDocument,
    BillDocumentSnapshot? startAfterDocument,
  });
}

class _$BillQuery extends QueryReference<Bill, BillQuerySnapshot>
    implements BillQuery {
  _$BillQuery(
    this._collection, {
    required Query<Bill> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<BillQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(BillQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<BillQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(BillQuerySnapshot._fromQuerySnapshot);
  }

  @override
  BillQuery limit(int limit) {
    return _$BillQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BillQuery limitToLast(int limit) {
    return _$BillQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BillQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$BillQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BillQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BillQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BillQuery whereAmount({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<int>? whereIn,
    List<int>? whereNotIn,
    bool? isNull,
  }) {
    return _$BillQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BillFieldMap['amount']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BillPerFieldToJson.amount(isEqualTo as int)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BillPerFieldToJson.amount(isNotEqualTo as int)
            : null,
        isLessThan: isLessThan != null
            ? _$BillPerFieldToJson.amount(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BillPerFieldToJson.amount(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BillPerFieldToJson.amount(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BillPerFieldToJson.amount(isGreaterThanOrEqualTo as int)
            : null,
        whereIn: whereIn?.map((e) => _$BillPerFieldToJson.amount(e)),
        whereNotIn: whereNotIn?.map((e) => _$BillPerFieldToJson.amount(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BillQuery whereDate({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  }) {
    return _$BillQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BillFieldMap['date']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BillPerFieldToJson.date(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BillPerFieldToJson.date(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$BillPerFieldToJson.date(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BillPerFieldToJson.date(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BillPerFieldToJson.date(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BillPerFieldToJson.date(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn?.map((e) => _$BillPerFieldToJson.date(e)),
        whereNotIn: whereNotIn?.map((e) => _$BillPerFieldToJson.date(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BillQuery whereNote({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BillQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BillFieldMap['note']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BillPerFieldToJson.note(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BillPerFieldToJson.note(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BillPerFieldToJson.note(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BillPerFieldToJson.note(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BillPerFieldToJson.note(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BillPerFieldToJson.note(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$BillPerFieldToJson.note(e)),
        whereNotIn: whereNotIn?.map((e) => _$BillPerFieldToJson.note(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BillQuery whereType({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BillQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BillFieldMap['type']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BillPerFieldToJson.type(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BillPerFieldToJson.type(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BillPerFieldToJson.type(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BillPerFieldToJson.type(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BillPerFieldToJson.type(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BillPerFieldToJson.type(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$BillPerFieldToJson.type(e)),
        whereNotIn: whereNotIn?.map((e) => _$BillPerFieldToJson.type(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BillQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BillDocumentSnapshot? startAtDocument,
    BillDocumentSnapshot? endAtDocument,
    BillDocumentSnapshot? endBeforeDocument,
    BillDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BillQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BillQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BillDocumentSnapshot? startAtDocument,
    BillDocumentSnapshot? endAtDocument,
    BillDocumentSnapshot? endBeforeDocument,
    BillDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BillQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BillQuery orderByAmount({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BillDocumentSnapshot? startAtDocument,
    BillDocumentSnapshot? endAtDocument,
    BillDocumentSnapshot? endBeforeDocument,
    BillDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$BillFieldMap['amount']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BillQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BillQuery orderByDate({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BillDocumentSnapshot? startAtDocument,
    BillDocumentSnapshot? endAtDocument,
    BillDocumentSnapshot? endBeforeDocument,
    BillDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$BillFieldMap['date']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BillQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BillQuery orderByNote({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BillDocumentSnapshot? startAtDocument,
    BillDocumentSnapshot? endAtDocument,
    BillDocumentSnapshot? endBeforeDocument,
    BillDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$BillFieldMap['note']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BillQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BillQuery orderByType({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BillDocumentSnapshot? startAtDocument,
    BillDocumentSnapshot? endAtDocument,
    BillDocumentSnapshot? endBeforeDocument,
    BillDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$BillFieldMap['type']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BillQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$BillQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class BillDocumentSnapshot extends FirestoreDocumentSnapshot<Bill> {
  BillDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Bill> snapshot;

  @override
  BillDocumentReference get reference {
    return BillDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Bill? data;
}

class BillQuerySnapshot
    extends FirestoreQuerySnapshot<Bill, BillQueryDocumentSnapshot> {
  BillQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory BillQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Bill> snapshot,
  ) {
    final docs = snapshot.docs.map(BillQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        BillDocumentSnapshot._,
      );
    }).toList();

    return BillQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<BillDocumentSnapshot> _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    BillDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<BillDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Bill> snapshot;

  @override
  final List<BillQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<BillDocumentSnapshot>> docChanges;
}

class BillQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<Bill>
    implements BillDocumentSnapshot {
  BillQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Bill> snapshot;

  @override
  final Bill data;

  @override
  BillDocumentReference get reference {
    return BillDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bill _$BillFromJson(Map<String, dynamic> json) => Bill(
      amount: (json['amount'] as num).toInt(),
      date: const FirestoreDateTimeConverter()
          .fromJson(json['date'] as Timestamp),
      note: json['note'] as String,
      type: json['type'] as String,
      id: json['id'] as String,
    );

const _$BillFieldMap = <String, String>{
  'id': 'id',
  'amount': 'amount',
  'date': 'date',
  'note': 'note',
  'type': 'type',
};

// ignore: unused_element
abstract class _$BillPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? amount(int instance) => instance;
  // ignore: unused_element
  static Object? date(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? note(String instance) => instance;
  // ignore: unused_element
  static Object? type(String instance) => instance;
}

Map<String, dynamic> _$BillToJson(Bill instance) => <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'date': const FirestoreDateTimeConverter().toJson(instance.date),
      'note': instance.note,
      'type': instance.type,
    };
