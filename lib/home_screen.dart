import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:testo/notes_controller.dart';
import 'package:testo/notes_screen.dart';
import 'package:testo/saved_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  NotesController notesController = Get.put(NotesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Get.to(NotesScreen());
                },
                child: Text('Online Notes')),
            TextButton(
              onPressed: () {
                Get.to(SavedScreen());
              },
              child: Text('Saved Notes'),
            ),
          ],
        ),
      ),
    );
  }
}
