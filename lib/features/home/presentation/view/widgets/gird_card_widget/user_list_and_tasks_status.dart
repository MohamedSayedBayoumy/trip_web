import 'package:flutter/material.dart';
import 'package:trip_web/common/constants/fonts.dart';

import 'user_list_widget.dart';

class UserListAndTasksStatusWidget extends StatelessWidget {
  const UserListAndTasksStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final users = [
      "https://images.unsplash.com/photo-1506277886164-e25aa3f4ef7f?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D",
      "https://plus.unsplash.com/premium_photo-1669703777437-27602d656c27?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D",
      "https://images.unsplash.com/photo-1488161628813-04466f872be2?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D",
      "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGVvcGxlfGVufDB8fDB8fHww",
    ];
    return Row(
      children: [
        Expanded(child: UserListWidget(users: users)),
        Expanded(
          child: FittedBox(
            child: Text(
              "4 unfinished tasks",
              style: AppFont.styleRegular12.copyWith(),
            ),
          ),
        ),
      ],
    );
  }
}
