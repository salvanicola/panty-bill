import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:panty_bill/globals.dart';
import 'package:panty_bill/src/bills/dtos/bill_create_dto.dart';

class BillsRepository {
  static Stream<QuerySnapshot<Map<String, dynamic>>> getBills() {
    return db.collection('bills').snapshots();
  }

  static Future create({
    required amount,
    required date,
    required note,
    required type,
  }) async {
    final bill = BillCreateDto(
      amount: amount,
      date: date,
      note: note,
      type: type,
    );
    await db.collection('bills').add(bill.toJson());
  }
}
