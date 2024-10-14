import 'package:flutter_dashboard/core/models/drawer_model.dart';
import 'package:flutter_dashboard/core/utils/app_assets.dart';

final List<DrawerModel> drawerItemsList = [
  DrawerModel(title: 'Dashboard', icon: Assets.imagesDashboard),
  DrawerModel(title: 'My Transaction', icon: Assets.imagesMyTransaction),
  DrawerModel(title: 'Statistics', icon: Assets.imagesStatistics),
  DrawerModel(title: 'Wallet Account', icon: Assets.imagesWallet),
  DrawerModel(title: 'My Investments', icon: Assets.imagesMyInvestments)
];
