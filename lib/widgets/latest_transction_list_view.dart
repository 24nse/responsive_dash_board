import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTransctionListView extends StatelessWidget {
  const LatestTransctionListView({super.key});

  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
          title: 'Nooh Saeed',
        subTitle: 'noohsaeed240@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
          title: 'Nooh Saeed',
        subTitle: 'noohsaeed240@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Nooh Saeed',
        subTitle: 'noohsaeed240@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
            .toList(),
      ),
    );

  }
}
