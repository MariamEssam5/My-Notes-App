import 'package:flutter/material.dart';
import 'package:my_notes/views/widgets/custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    return Container(
      height: screenHeight * 0.85,
      child: Padding(
        padding: EdgeInsets.only(
          left: screenWidth * 0.04,
          right: screenWidth * 0.04,
          bottom: keyboardHeight + 16,
          top: 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: screenWidth * 0.12,
              height: 4,
              margin: EdgeInsets.only(bottom: screenHeight * 0.03),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomTextField(
                      hint: "Title",
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    CustomTextField(
                      hint: "Content",
                      maxLines: screenHeight > 600 ? 6 : 3,
                    ),
                    // SizedBox(
                    //   height: screenHeight * 0.03,
                    // ),
                    if (screenHeight > 500)
                      Container(
                        height: screenHeight * 0.25,
                        width: double.infinity,
                        child: Image.asset(
                          "assets/images/abc.png",
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              height: screenHeight * 0.25,
                              child: Icon(
                                Icons.image_not_supported,
                                size: screenWidth * 0.15,
                                color: Colors.grey,
                              ),
                            );
                          },
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
