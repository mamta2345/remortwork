class TicketModel {
  final String title;
  final String location;
  final String date;
  final String time;
  final int amountPaid;
  final bool hasCoverCharges;
  final String secretCode;
  final String imageUrl;

  TicketModel({
    required this.title,
    required this.location,
    required this.date,
    required this.time,
    required this.amountPaid,
    required this.hasCoverCharges,
    required this.secretCode,
    required this.imageUrl,
  });
}
