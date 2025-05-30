import 'package:flutter/material.dart';
import 'card_details_widget.dart';
import 'image_widget.dart';

class GirdCardWidget extends StatelessWidget {
  const GirdCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImageWidget(
          image:
              "https://images.unsplash.com/photo-1444065381814-865dc9da92c0?auto=format&fit=crop&w=800&q=80",
        ),
        Positioned.fill(child: CardDetailsWidget()),
      ],
    );
  }
}
