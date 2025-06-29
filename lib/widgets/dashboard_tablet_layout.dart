import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(
          width: 250,
          child: CustomDrawer(),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: AllExpenses(),
          ),
        ),
      ],
    );
  }
} 