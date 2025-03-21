import 'package:clarekelly/app/modules/events/widgets/event_item_card.dart';
import 'package:flutter/material.dart';

class FeatureEvents extends StatelessWidget {
  const FeatureEvents({super.key});

  static const String routeName = '/feature-event-screen';

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      padding: EdgeInsets.zero,
      itemCount: 8,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.58,
        crossAxisSpacing: 2,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding:  EdgeInsets.symmetric(horizontal: 8),
          child: const EventItemCard(),
        );
      },
    );
  }
}