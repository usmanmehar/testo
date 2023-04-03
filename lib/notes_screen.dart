import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dart:developer' as dev;

import 'package:testo/notes_controller.dart';
import 'package:testo/saved_controller.dart';

class NotesScreen extends StatelessWidget {
  NotesScreen({super.key});

  NotesController notesController = Get.put(NotesController());
  SavedController savedController = Get.put(SavedController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notes')),
      body: Column(
        children: [
          Expanded(
              child: Obx(
            () => ListView.builder(
              itemCount: notesController.foundNotes.value.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    savedController.saveToIsar(
                      urduName: notesController.foundNotes.value[index].urduName
                          .toString(),
                      englishName: notesController
                          .foundNotes.value[index].englishName
                          .toString(),
                      url: notesController.foundNotes.value[index].url
                          .toString(),
                    );
                  },
                  child: Card(
                    shadowColor: Colors.green,
                    elevation: 2,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          notesController.foundNotes.value[index].urduName
                              .toString(),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: const TextStyle(
                              fontSize: 28, fontFamily: 'Jameel Regular'),
                        ),
                        Text(
                          notesController.foundNotes.value[index].englishName
                              .toString(),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: const TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )),
        ],
      ),
    );
  }
}
