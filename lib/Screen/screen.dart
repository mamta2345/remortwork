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
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                shadowColor: Colors.grey,
              ),
              onPressed: () {},
              child: Text("Discover", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(width: 8),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                shadowColor: Colors.grey,
              ),
              onPressed: () {},
              child: Text("My tickets", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
        //  ToggleButtons(
        //   isSelected: [false, true],
        //   onPressed: (index) {},
        //   borderRadius: BorderRadius.circular(20),
        //   selectedColor: Colors.white,
        //   color: Colors.black,
        //   fillColor: Colors.black,
        //   children: [
        //     Padding(
        //       padding: EdgeInsets.symmetric(horizontal: 16),
        //       child: Text("Discover"),
        //     ),
        //     Padding(
        //       padding: EdgeInsets.symmetric(horizontal: 16),
        //       child: Text("My tickets"),
        //     ),
        //   ],
        // ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
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
}
