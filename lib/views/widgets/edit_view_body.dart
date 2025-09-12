import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_notes/views/widgets/custom_app_bar.dart';
import 'package:my_notes/views/widgets/custom_text_field.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: "Edit Note ",
            icon: Icons.check,
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextField(
            hint: "Title",
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(hint: "Content", maxLines: 5),
          Image.asset("assets/images/abc.png")
        ],
      ),
    );
  }
}
