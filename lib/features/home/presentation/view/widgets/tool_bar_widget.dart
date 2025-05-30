import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import '../../../../../common/constants/assets.dart';
import '../../../../../common/constants/colors.dart';
import '../../../../../common/constants/fonts.dart';
import '../../../../../common/utils/app_utlis.dart';
import 'filiter_icon_widget.dart';

class ToolBarWidget extends StatelessWidget {
  const ToolBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SelectableText("Item", style: AppFont.styleMeduim32),
          Row(
            children: [
              FiliterIconWidget(),

              if (!AppUtils.isMobile(context)) ...[
                SizedBox(width: 12.0),
                Container(
                  width: 1,
                  height: 45,
                  color: AppColors.secondryDividerColor,
                ),
                SizedBox(width: 12.0),
                ShadButton(
                  height: 50,
                  backgroundColor: AppColors.orangeColor,
                  hoverBackgroundColor: AppColors.orangeColor,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  decoration: ShadDecoration(
                    border: ShadBorder.all(radius: BorderRadius.circular(25)),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(AppAssets.imagesPlus),
                      SizedBox(width: 5.0),
                      Text(
                        'Add a New Item',
                        style: AppFont.styleMeduim14.copyWith(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
