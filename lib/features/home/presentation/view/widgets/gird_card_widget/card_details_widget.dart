import 'package:flutter/material.dart';

import '../../../../../../common/utils/app_utlis.dart';
import '../../../../domain/entites/trip_entite.dart';
import 'card_divider_widget.dart';
import 'card_status_widget.dart';
import 'grandient_card_widget.dart';
import 'more_button_widget.dart';
import 'title_and_time_card_widget.dart';
import 'user_list_and_tasks_status.dart';

class CardDetailsWidget extends StatelessWidget {
  const CardDetailsWidget({super.key, required this.model});

  final TripModel model;

  @override
  Widget build(BuildContext context) {
    return GrandientCardWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(child: MoreButtonWidget()),

                CardStatusWidget(trip: model),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleAndTimeCardWIidget(
                  time: AppUtils.formatDateRange(
                    model.dates.start,
                    model.dates.end,
                  ),
                  title: model.title,
                ),
                CardDividerWidget(),
                UserListAndTasksStatusWidget(
                  participants: model.participants,
                  unFinisedTaskCount: model.unfinishedTasks,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
