import 'package:flutter/material.dart';
import 'package:website/constants/style.dart';
import 'package:website/models/skills.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({super.key, required this.skills});

  final Skills skills;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(vertical: 24, horizontal: 24),
      decoration: BoxDecoration(
        color: Style.secondaryColor,
        borderRadius: .circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha((255 * 0.2).toInt()),
            blurRadius: 0.1,
            offset: Offset(0, 1),
            spreadRadius: 0.1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: Style.primaryColor,
            child: Image.asset(skills.images, height: 18, width: 18),
          ),
          Spacer(),
          Text(
            skills.title,
            textAlign: .start,
            style: Theme.of(
              context,
            ).textTheme.titleLarge!.copyWith(fontWeight: .bold),
          ),
          const SizedBox(height: 12),
          Text(skills.subtitle, style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
