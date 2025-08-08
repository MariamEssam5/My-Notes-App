import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Color(0xffFFCC80)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                "Flutter Tips",
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text("Build your career",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5), fontSize: 20)),
              ),
              trailing: IconButton(
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 28,
                ),
                onPressed: () {
                  // Handle delete action
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Text("21 may,2025",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 16)),
            )
          ],
        ),
      ),
    );
  }
}
