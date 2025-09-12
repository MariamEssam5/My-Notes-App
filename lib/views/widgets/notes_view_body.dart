import 'package:flutter/material.dart';
import 'package:my_notes/views/widgets/custom_app_bar.dart';
import 'package:my_notes/views/widgets/custom_note_item.dart';
import 'package:my_notes/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomAppBar(
              title: "Notes",
              icon: Icons.search,
            ),
            Expanded(child: NotesListView())
          ],
        ),
      ),
    );
  }
}
