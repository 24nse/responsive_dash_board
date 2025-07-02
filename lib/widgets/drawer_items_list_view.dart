import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DrawerItemsListView extends HookWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final activeIndex = useState(0);
    final List<DrawerItemModel> items = [
      const DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
      const DrawerItemModel(
          title: 'My Transaction', image: Assets.imagesMyTransctions),
      const DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
      const DrawerItemModel(
          title: 'Wallet Account', image: Assets.imagesWalletAccount),
      const DrawerItemModel(
          title: 'My Investments', image: Assets.imagesMyInvestments),
    ];
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex.value != index) {
              activeIndex.value = index;
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: activeIndex.value == index,
            ),
          ),
        );
      },
    );
  }
}
