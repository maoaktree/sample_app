import 'package:flutter/material.dart';
import 'package:sample_app/util/theme.dart';

class FishTab extends StatelessWidget {
  const FishTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            'available \nsoon',
            style: AppTextStyles.headerTitle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
