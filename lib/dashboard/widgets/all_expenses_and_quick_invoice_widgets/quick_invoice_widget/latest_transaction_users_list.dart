import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/models/user_info_model.dart';
import 'package:flutter_dashboard/core/utils/app_assets.dart';
import 'package:flutter_dashboard/core/widgets/custom_profile_list_tile.dart';

class LatestTransactionUsersList extends StatefulWidget {
  const LatestTransactionUsersList({super.key});

  @override
  State<LatestTransactionUsersList> createState() =>
      _LatestTransactionUsersListState();
}

class _LatestTransactionUsersListState
    extends State<LatestTransactionUsersList> {
  final userInfos = [
    const UserInfoModel(
      imageUrl: Assets.imagesAvatar1,
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail',
    ),
    const UserInfoModel(
      imageUrl: Assets.imagesAvatar2,
      name: 'Josua Nunito',
      email: 'Josh Nunito@gmail.com',
    ),
    const UserInfoModel(
      imageUrl: Assets.imagesAvatar1,
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail',
    ),
    const UserInfoModel(
      imageUrl: Assets.imagesAvatar2,
      name: 'Josua Nunito',
      email: 'Josh Nunito@gmail.com',
    ),
    const UserInfoModel(
      imageUrl: Assets.imagesAvatar1,
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
        PointerDeviceKind.mouse,
        PointerDeviceKind.touch,
      }),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: userInfos.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: CustomProfileListTile(userInfo: userInfos[index]),
          );
        },
      ),
    );
  }
}
