import 'package:flutter/material.dart';

class StatsCard extends StatelessWidget {
  final String title, value, subtitle;
  final Color color;
  
  const StatsCard({super.key, required this.title, required this.value, required this.subtitle, required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      child: Container(
        // width: 160,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.bodyMedium),
            Text(value, style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold)),
            Text(subtitle, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: color), selectionColor: color,)
          ],
        ),
      ),
      ),
    );
  }
}