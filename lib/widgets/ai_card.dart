import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:walletfox/utils/styles/app_theme.dart';

class AiCard extends StatelessWidget {
  const AiCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.blue.withOpacity(0.3),
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0), 
              title: Text("AI Cost Saver", style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: AppColors.blue, fontWeight: FontWeight.bold),),
              subtitle: Text("Find Subscriptions to save money", style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.blue),),
              trailing: Padding(padding: const EdgeInsets.only(right: 10.0), child: PhosphorIcon(PhosphorIcons.lightbulb(), color: AppColors.blue, size: 20.0,),),
              ),

              ElevatedButton.icon(icon: PhosphorIcon(PhosphorIcons.waveSine(), color: AppColors.blue, size: 20  ,), onPressed: () {}, label: Text("Analyze Now"))
          ],
        ),
      ),
    );
  }
}