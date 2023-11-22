import 'package:flutter/material.dart';
import 'package:storgesql/views/widgets/custom_app_bar.dart';
import 'package:storgesql/views/widgets/note_item.dart';
import 'package:storgesql/views/widgets/note_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
          SizedBox(
            height: 20,
          ),
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}
