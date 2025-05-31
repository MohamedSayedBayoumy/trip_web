import 'package:flutter/material.dart';

import '../../../../../../common/constants/colors.dart';
import '../../../../../../common/constants/fonts.dart';
import '../../../../domain/entites/trip_entite.dart';

class UserListWidget extends StatelessWidget {
  const UserListWidget({super.key, required this.users});

  final List<Participant> users;

  @override
  Widget build(BuildContext context) {
    final length = (users.length >= 3 ? 3 : users.length);

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        for (int i = 0; i < length; i++) ...[
          Container(
            margin: EdgeInsets.symmetric(vertical: 0),
            child: Align(
              widthFactor: 0.5,
              child: CircleAvatar(
                radius: 15,
                backgroundColor: AppColors.blackColor,
                child: CircleAvatar(
                  radius: 14,
                  backgroundImage: NetworkImage(users[i].avatarUrl),
                ),
              ),
            ),
          ),
          if ((i + 1) == length && users.length > 3) ...[
            Align(
              widthFactor: 0.4,
              child: CircleAvatar(
                backgroundColor: AppColors.blackColor,
                radius: 16,
                child: Center(
                  child: Text(
                    "+${users.length - 3}",
                    style: AppFont.styleMeduim9,
                  ),
                ),
              ),
            ),
          ],
        ],
      ],
    );
  }
}
