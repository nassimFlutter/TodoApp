import 'package:flutter/material.dart';
import 'package:storgesql/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Notes",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        CustomSearchIcon()
      ],
    );
  }
}
