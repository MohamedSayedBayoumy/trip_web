import 'package:flutter/material.dart';
import '../../../../domain/entites/trip_entite.dart';
import 'card_details_widget.dart';
import 'image_widget.dart';

class GirdCardWidget extends StatelessWidget {
  const GirdCardWidget({super.key, required this.tripModel});

  final TripModel tripModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImageWidget(image: tripModel.coverImage),
        Positioned.fill(child: CardDetailsWidget(model: tripModel)),
      ],
    );
  }
}
