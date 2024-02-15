import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Tab(
        text: label,
      ),
    );
  }
}
