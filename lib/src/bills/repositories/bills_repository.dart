import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:panty_bill/globals.dart';

class BillsRepository {
  static Stream<QuerySnapshot<Map<String, dynamic>>> getBills() {
    return db.collection('bills').snapshots();
  }
}
