import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:panty_bill/src/bills/models/bill.dart';

class BillCard extends StatelessWidget {
  BillCard({super.key, required this.bill});
  final Bill bill;
  final NumberFormat currencyFormat =
      NumberFormat.simpleCurrency(locale: 'it_IT');

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: const Icon(Icons.attach_money),
      title: Text(bill.type),
      subtitle: Text(DateFormat("MMMM").format(bill.date)),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            currencyFormat.format(bill.amount),
            style: const TextStyle(fontSize: 18),
          ),
          Text('pagato: ${currencyFormat.format(bill.amount)}'),
        ],
      ),
    ));
  }
}
