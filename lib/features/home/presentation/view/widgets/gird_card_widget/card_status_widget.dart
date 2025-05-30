import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../../../../../common/constants/fonts.dart';

class CardStatusWidget extends StatelessWidget {
  const CardStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: ShadButton.outline(
        width: 155,
        height: 28,
        backgroundColor: Color(0xff231915),
        hoverBackgroundColor: Colors.transparent,
        decoration: ShadDecoration(
          border: ShadBorder.all(
            radius: BorderRadius.circular(20.0),
            width: 1.0,
            color: Color(0xffC25F30),
          ),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('Ready To Travel', style: AppFont.styleRegular14),
        ),
        onPressed: () {},
      ),
    );
  }
}
