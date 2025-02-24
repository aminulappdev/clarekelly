import 'package:clarekelly/app/widgets/half_event_item_card.dart';
import 'package:flutter/material.dart';

class UpComingEvents extends StatelessWidget {
  const UpComingEvents({super.key});

  static const String routeName = '/feature-event-screen';

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      padding: EdgeInsets.zero,
      itemCount: 8,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.70,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return const HalfEventItemCard();
      },
    );
  }
}