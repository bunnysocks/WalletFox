import 'package:flutter/material.dart';
import 'package:walletfox/utils/constants/strings.dart';
import 'package:walletfox/utils/styles/app_theme.dart';
import 'package:walletfox/widgets/stats_card.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blue.withOpacity(0.3),
        title: Text(APP_NAME),
        centerTitle: false,
      ),
      body: _buildHome(),
    );
  }
}

Widget? _buildHome() {
  return SingleChildScrollView(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment : CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StatsCard(title: 'Total Monthly Spend', value: '\$ 100', subtitle: '4 subscriptions', color: AppColors.blue),
            StatsCard(title: 'Upcoming Renewals', value: '2', subtitle: 'in the next 7 days', color: AppColors.blue),
          ],
        )
      ],
    ),
  );
}