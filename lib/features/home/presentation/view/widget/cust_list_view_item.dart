import 'package:bookly_project/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustListViewItem extends StatelessWidget {
  const CustListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.edu),
            ),
          ),
        ),
      ),
    );
  }
}
