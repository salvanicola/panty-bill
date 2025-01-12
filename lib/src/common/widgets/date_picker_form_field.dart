import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerFormField extends StatefulWidget {
  final DateTime? date;
  final FormFieldSetter<DateTime?>? onDateSaved;
  final String? label;
  final String? Function(String?)? validator;
  const DatePickerFormField(
      {super.key, this.date, this.onDateSaved, this.label, this.validator});

  @override
  State<DatePickerFormField> createState() => _DatePickerFormFieldState();
}

class _DatePickerFormFieldState extends State<DatePickerFormField> {
  late DateTime? date = widget.date;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // The validator receives the text that the user has entered.
      controller: TextEditingController(
          text: date != null ? DateFormat.yMd().format(date!) : null),
      showCursor: false,

      onTap: () async {
        FocusScope.of(context).requestFocus(FocusNode());
        var selectedDate = await showDatePicker(
                context: context,
                initialDate: date,
                firstDate: DateTime(2022),
                lastDate: DateTime.now().add(const Duration(days: 365))) ??
            date;
        setState(() {
          date = selectedDate;
          if (widget.onDateSaved != null) {
            widget.onDateSaved!(selectedDate);
          }
        });
      },
      validator: widget.validator,
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.calendar_today),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: widget.label),
      onSaved: (value) =>
          widget.onDateSaved?.call(DateFormat.yMd().parse(value!)),
    );
  }
}
