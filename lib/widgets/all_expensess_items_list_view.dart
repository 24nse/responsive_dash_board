import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenssess_item.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AllExpensessItemsListView extends HookWidget {
  const AllExpensessItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      const AllExpensessItemModel(
          image: Assets.imagesBalance,
          title: 'Balance',
          date: 'April 2022',
          price: r'$20,129'),
      const AllExpensessItemModel(
          image: Assets.imagesIncome,
          title: 'Income',
          date: 'April 2022',
          price: r'$20,129'),
      const AllExpensessItemModel(
          image: Assets.imagesExpenses,
          title: 'Expenses',
          date: 'April 2022',
          price: r'$20,129'),
    ];
    final selectedIndex = useState(0);
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              selectedIndex.value = 0;
            },
            child: AllExpensessItem(
              isSelected: selectedIndex.value == 0,
              itemModel: items[0],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              selectedIndex.value = 1;
            },
            child: AllExpensessItem(
              isSelected: selectedIndex.value == 1,
              itemModel: items[1],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              selectedIndex.value = 2;
            },
            child: AllExpensessItem(
              isSelected: selectedIndex.value == 2,
              itemModel: items[2],
            ),
          ),
        )
      ],
    );
  }
}


