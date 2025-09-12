import 'package:flutter/cupertino.dart';
import 'package:my_notes/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: kPrimaryColor),
      child: Center(
          child: Text(
        "Add",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      )),
    );
  }
}
