import 'package:flutter/material.dart';
import 'package:panty_bill/src/bills/widgets/bill_create_form.dart';

class BillCreateScreen extends StatelessWidget {
  const BillCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Bill'),
      ),
      body: BillCreateForm(),
    );
  }
}
