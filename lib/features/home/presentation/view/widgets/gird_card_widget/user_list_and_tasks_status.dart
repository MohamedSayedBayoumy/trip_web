import 'package:flutter/material.dart';

import '../../../../../../common/constants/fonts.dart';
import '../../../../domain/entites/trip_entite.dart';
import 'user_list_widget.dart';

class UserListAndTasksStatusWidget extends StatelessWidget {
  const UserListAndTasksStatusWidget({
    super.key,
    required this.participants,
    required this.unFinisedTaskCount,
  });

  final List<Participant> participants;
  final int unFinisedTaskCount;

  @override
  Widget build(BuildContext context) {
     
    return Row(
      children: [
        Expanded(child: UserListWidget(users: participants)),
        Expanded(
          child: FittedBox(
            child: Text(
              "${unFinisedTaskCount} unfinished tasks",
              style: AppFont.styleRegular12.copyWith(),
            ),
          ),
        ),
      ],
    );
  }
}
