import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

// This doesn't exist yet...! See "Next Steps"
part 'bill.g.dart';

/// A custom JsonSerializable annotation that supports decoding objects such
/// as Timestamps and DateTimes.
/// This variable can be reused between different models
const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  // The following values could alternatively be set inside your `build.yaml`
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
);

@Collection<Bill>('bills')
@firestoreSerializable
class Bill {
  Bill({
    required this.amount,
    required this.date,
    required this.note,
    required this.type,
    required this.id,
  });

  factory Bill.fromJson(Map<String, Object?> json) => _$BillFromJson(json);

  @Id()
  final String id;
  final int amount;
  final DateTime date;
  final String note;
  final String type;

  Map<String, Object?> toJson() => _$BillToJson(this);
}
