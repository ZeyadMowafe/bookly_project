import 'package:bookly_project/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustAppBar extends StatelessWidget {
  const CustAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, height: 24),
          const Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 25)),
        ],
      ),
    );
  }
}
