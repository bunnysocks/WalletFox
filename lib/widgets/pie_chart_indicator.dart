import 'package:flutter/material.dart';

class PieChartIndicator extends StatelessWidget {
  final Color color;
  final Color? textColor;
  final String text;
  final bool isSquare;
  final double size;
  
  const PieChartIndicator({super.key, required this.color, this.textColor, required this.text, required this.isSquare, this.size = 16});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color
          ),
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: textColor
          ),
        )
      ],
    );
  }
}