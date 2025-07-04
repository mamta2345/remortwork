import 'package:get/get.dart';
import 'package:rount2_task/Model/ticket_model.dart';

class TicketController extends GetxController {
  var tickets = <TicketModel>[
    TicketModel(
      title: 'Beauty queen',
      location: 'Romeo lane, Dehradun',
      date: 'Friday 27 July',
      time: '8:00PM onwards',
      amountPaid: 799,
      hasCoverCharges: false,
      secretCode: '3345',
      imageUrl: 'assets/images/girl.png',
    ),
    TicketModel(
      title: 'Afro Urban',
      location: 'Bastian garden city',
      date: 'Friday 27 July',
      time: '8:00PM onwards',
      amountPaid: 3999,
      hasCoverCharges: true,
      secretCode: '3365',
      imageUrl: 'assets/images/boy.png',
    ),
  ].obs;
}
