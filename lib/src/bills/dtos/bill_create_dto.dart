class BillCreateDto {
  final double amount;
  final DateTime date;
  final String note;
  final String type;

  BillCreateDto({
    required this.amount,
    required this.date,
    required this.note,
    required this.type,
  });

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'date': date,
      'note': note,
      'type': type,
    };
  }
}
