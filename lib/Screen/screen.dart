import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rount2_task/Controller/ticket_controller.dart';
import 'package:rount2_task/Widget/ticket_card.dart';

class TicketsScreen extends StatelessWidget {
  final TicketController controller = Get.put(TicketController());

  TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buttonResuse("Discover"),
            SizedBox(width: 8),
            buttonResuse("My tickets"),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Obx(
        () => ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: controller.tickets.length,
          itemBuilder: (context, index) {
            return TicketCard(ticket: controller.tickets[index]);
          },
        ),
      ),
    );
  }

  Widget buttonResuse(String text) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shadowColor: Colors.grey,
      ),
      onPressed: () {},
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}
