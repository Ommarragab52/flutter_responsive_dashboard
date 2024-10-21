class TransactionModel {
  final String title, date, amount;
  final TransactionType transactionType;
  const TransactionModel({
    required this.title,
    required this.date,
    required this.amount,
    required this.transactionType,
  });
}

enum TransactionType {
  income,
  outcome,
}
