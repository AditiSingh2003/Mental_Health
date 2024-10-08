import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String text;
  final String description;
  final Color color;
  final String actionText;
  
  const TaskCard({
    super.key,
    required this.text,
    required this.description,
    required this.color,
    required this.actionText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          SizedBox(width: 6),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children:[
                    Flexible(
                      child: Text(
                        description,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                    SizedBox(width: 3),
                  ],
                ),
                SizedBox(height: 3),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.arrow_forward_ios,
                  ),
                )
              ],
            ),
          )
        ],),
    );
  }
}