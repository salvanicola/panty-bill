import 'package:flutter/material.dart';
import 'package:panty_bill/src/bills/repositories/bills_repository.dart';
import 'package:panty_bill/src/common/widgets/date_picker_form_field.dart';

class BillCreateForm extends StatefulWidget {
  const BillCreateForm({super.key});

  @override
  State<BillCreateForm> createState() => _BillCreateFormState();
}

class _BillCreateFormState extends State<BillCreateForm> {
  final _formKey = GlobalKey<FormState>();
  String? id;
  int? amount;
  DateTime? date;
  String? note;
  String? type;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              DatePickerFormField(
                date: date,
                onDateSaved: (value) => date = value,
                label: 'Billing date',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a date';
                  }
                  return null;
                },
              ),
              TextFormField(
                // The validator receives the text that the user has entered.
                controller: TextEditingController(text: amount?.toString()),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: const Text('Amount')),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                onSaved: (value) => amount = int.parse(value!),
              ),
              TextFormField(
                // The validator receives the text that the user has entered.
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: const Text('Note')),
                onSaved: (value) => note = value,
              ),
              TextFormField(
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: const Text('Type')),
                onSaved: (value) => type = value,
              ),

              ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );

                    BillsRepository.create(
                        amount: amount, date: date, note: note, type: type);
                  }
                },
                child: const Text('Submit'),
              ),
              // Add TextFormFields and ElevatedButton here.
            ],
          ),
        ));
  }
}
