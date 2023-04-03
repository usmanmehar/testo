import 'dart:convert';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:testo/notes_model.dart';

class NotesController extends GetxController {
  Rx<List<NotesModel>> foundNotes = Rx<List<NotesModel>>([]);
  List<NotesModel> notesList = [];
  @override
  void onInit() {
    super.onInit();
    getNotesApi();
    foundNotes.value = notesList;
  }

  @override
  void onClose() {}

  Future<List<NotesModel>> getNotesApi() async {
    final ref = FirebaseStorage.instance.ref().child("testo.json");
    final url = await ref.getDownloadURL();
    final response = await http.get(Uri.parse(url));
    String jsonString = utf8.decode(response.bodyBytes);
    var data = jsonDecode(jsonString);

    if (response.statusCode == 200) {
      for (Map i in data) {
        notesList.add(NotesModel.fromJson(i));
      }

      return notesList;
    } else {
      return notesList;
    }
  }

  void filterNotes(String query) {
    List<NotesModel> results = [];
    if (query.isEmpty) {
      results = notesList;
    } else {
      results = notesList
          .where((note) =>
              note.urduName!.toLowerCase().contains(query.toLowerCase()) ||
              note.englishName!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    foundNotes.value = results;
  }
}
