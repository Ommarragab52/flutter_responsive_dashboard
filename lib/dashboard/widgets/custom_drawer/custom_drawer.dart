import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/models/drawer_model.dart';
import 'package:flutter_dashboard/core/models/user_info_model.dart';
import 'package:flutter_dashboard/core/utils/app_assets.dart';
import 'package:flutter_dashboard/core/utils/app_constants.dart';
import 'package:flutter_dashboard/dashboard/widgets/custom_profile_list_tile.dart';
import 'package:flutter_dashboard/dashboard/widgets/custom_drawer/drawer_item.dart';
import 'package:flutter_dashboard/dashboard/widgets/custom_drawer/drawer_items_list.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(28),
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: CustomProfileListTile(
              userInfo: UserInfoModel(
                name: 'Lekan Okeowo',
                email: 'demo@gmail.com',
                imageUrl: Assets.imagesAvatar,
              ),
            ),
          ),
          DrawerItemsList(items: drawerItemsList),
          SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(
                    child: DrawerItem(
                      drawerModel: DrawerModel(
                        title: 'Setting system',
                        icon: Assets.imagesSettings,
                      ),
                      onCLick: () {},
                    ),
                  ),
                  Flexible(
                    child: DrawerItem(
                      drawerModel: DrawerModel(
                        title: 'Logout account',
                        icon: Assets.imagesLogout,
                      ),
                      onCLick: () {},
                    ),
                  ),
                  const SizedBox(height: 38),
                ],
              )),
        ],
      ),
    );
  }
}
