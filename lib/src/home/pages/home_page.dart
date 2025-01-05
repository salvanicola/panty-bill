import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:panty_bill/src/bills/widgets/bills_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Panty Bill'),
        actions: [
          IconButton(
              onPressed: () => context.push('/profile'),
              icon: Icon(Icons.person))
        ],
      ),
      body: Center(
        child: BillsWidget(),
      ),
    );
  }
}
