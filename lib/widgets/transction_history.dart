import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/transction_history_list_view.dart';
import 'package:responsive_dash_board/widgets/custom_text.dart';

class TrasnctionHistory extends StatelessWidget {
  const TrasnctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TansctionHistoryHeader(),
        SizedBox(height: 20),
        FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: CustomText(
            '13 April 2022',
            style: AppStyles.styleMedium16(context),
          ),
        ),
        SizedBox(height: 16),
        TransctionHistoryListView(),
      ],
    );
  }
}

class TansctionHistoryHeader extends StatelessWidget {
  const TansctionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: CustomText(
            'Transaction History',
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
        FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: CustomText(
            'See all',
            style: AppStyles.styleMedium16(
              context,
            ).copyWith(color: const Color(0xFF4EB7F2)),
          ),
        ),
      ],
    );
  }
}
