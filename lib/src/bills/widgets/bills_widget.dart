import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:panty_bill/src/bills/models/bill.dart';

final billsRef = BillCollectionReference();

class BillsWidget extends StatelessWidget {
  const BillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
                child: FirestoreBuilder(
                    ref: billsRef,
                    builder: (context, snapshot, child) {
                      if (snapshot.connectionState == ConnectionState.waiting ||
                          snapshot.connectionState == ConnectionState.none) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (snapshot.hasError) {
                        return Text('Error fetching data: ${snapshot.error}');
                      } else if (!snapshot.hasData) {
                        return const Center(child: Text('No elements'));
                      }

                      final documents = snapshot.requireData.docs;
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: documents.length,
                        itemBuilder: (context, index) {
                          var bill = documents[index].data;
                          return ListTile(
                            title: Text(
                                '${bill.id} - ${DateFormat.yMd().format(bill.date)} - ${bill.type}'),
                          );
                        },
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
