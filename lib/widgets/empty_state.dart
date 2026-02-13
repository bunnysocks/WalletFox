import 'package:flutter/material.dart';

class EmptyState extends StatelessWidget {
  final String title;
  final String subtitle;
  
  const EmptyState({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.subscriptions,
            size: 64,
            color: Theme.of(context).primaryColor,
          ),
          const SizedBox(height: 12,),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8,),
          Text(subtitle, textAlign: TextAlign.center  ,)
        ],
      ),
    );
  }
}