import 'package:flutter_dashboard/core/models/drawer_model.dart';
import 'package:flutter_dashboard/core/models/expenses_model.dart';
import 'package:flutter_dashboard/core/models/text_field_model.dart';
import 'package:flutter_dashboard/core/utils/app_assets.dart';

const List<DrawerModel> drawerItems = [
  DrawerModel(title: 'Dashboard', icon: Assets.imagesDashboard),
  DrawerModel(title: 'My Transaction', icon: Assets.imagesMyTransaction),
  DrawerModel(title: 'Statistics', icon: Assets.imagesStatistics),
  DrawerModel(title: 'Wallet Account', icon: Assets.imagesWallet),
  DrawerModel(title: 'My Investments', icon: Assets.imagesMyInvestments)
];

const List<ExpensesModel> expensesItems = [
  ExpensesModel(
    image: Assets.imagesBalance,
    expensesType: 'Balance',
    date: 'April 2022',
    amount: '\$20,129',
  ),
  ExpensesModel(
    image: Assets.imagesIncome,
    expensesType: 'Income',
    date: 'April 2022',
    amount: '\$20,129',
  ),
  ExpensesModel(
    image: Assets.imagesExpenses,
    expensesType: 'Expenses',
    date: 'April 2022',
    amount: '\$20,129',
  ),
];

List<TextFieldModel> textFormList = const [
  TextFieldModel(title: 'Customer name', hint: 'Type customer name'),
  TextFieldModel(title: 'Customer Email', hint: 'Type customer email'),
  TextFieldModel(title: 'Item name', hint: 'Type item name'),
  TextFieldModel(title: 'Item mount', hint: 'USD'),
];
