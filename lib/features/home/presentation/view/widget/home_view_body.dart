import 'package:bookly_project/core/utils/assets.dart';
import 'package:bookly_project/features/home/presentation/view/widget/CustomAppBar.dart';
import 'package:bookly_project/features/home/presentation/view/widget/cust_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const [CustAppBar(), CustListViewItem()]);
  }
}
