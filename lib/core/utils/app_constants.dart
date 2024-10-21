import 'package:flutter_dashboard/core/models/drawer_model.dart';
import 'package:flutter_dashboard/core/models/expenses_model.dart';
import 'package:flutter_dashboard/core/models/income_model.dart';
import 'package:flutter_dashboard/core/models/transaction_model.dart';
import 'package:flutter_dashboard/core/utils/app_assets.dart';

const List<DrawerModel> drawerItems = [
  DrawerModel(title: 'Dashboard', icon: Assets.imagesDashboard),
  DrawerModel(title: 'My Transaction', icon: Assets.imagesMyTransaction),
  DrawerModel(title: 'Statistics', icon: Assets.imagesStatistics),
  DrawerModel(title: 'Wallet Account', icon: Assets.imagesWallet),
  DrawerModel(title: 'My Investments', icon: Assets.imagesMyInvestments)
];

List<String> dateItems = ['Daily', 'Monthly', 'Yearly'];

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

List<TransactionModel> transactionList = const [
  TransactionModel(
    title: 'Cash Withdrawal',
    date: '13 Apr, 2022 at 3:30 PM',
    amount: r'$20,129',
    transactionType: TransactionType.outcome,
  ),
  TransactionModel(
    title: 'Landing Page project',
    date: '13 Apr, 2022 at 3:30 PM',
    amount: r'$2,000',
    transactionType: TransactionType.income,
  ),
  TransactionModel(
    title: 'Juni Mobile App project',
    date: '13 Apr, 2022 at 3:30 PM',
    amount: r'$20,129',
    transactionType: TransactionType.income,
  ),
];

List<IncomeModel> incomeChartItems = const [
  IncomeModel(
    title: 'Design service',
    precent: 40,
    color: 0xff208CC8,
  ),
  IncomeModel(
    title: 'Design product',
    precent: 25,
    color: 0xff4EB7F2,
  ),
  IncomeModel(
    title: 'Product royalti',
    precent: 22,
    color: 0xff064061,
  ),
  IncomeModel(
    title: 'Other',
    precent: 20,
    color: 0xffE2DECD,
  ),
];
