import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:walletfox/utils/styles/app_theme.dart';

class SubscriptionTile extends StatelessWidget {
  final int index;
  const SubscriptionTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

      child: ListTile(
        leading: PhosphorIcon(
          PhosphorIcons.spotifyLogo(),
          size: 32,
          color: AppColors.blue,
        ),
        title: Text("Netflix", style: Theme.of(context).textTheme.bodyMedium,),
        subtitle: Text("\$ 400 | Renews on ${DateFormat.yMMMEd().format(DateTime.now())}"),

        trailing: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.blue.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.gray50)
          ),
          child: Text("Sports"),
        ),
      ),
    );
  }
}