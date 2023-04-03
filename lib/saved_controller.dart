import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:testo/isarNoteSaveModel.dart';

class SavedController extends GetxController {
  late final Future<Isar> isar;

  SavedController() {
    initIsar();
  }

  static Future<Isar> initIsar() async {
    final dir = await getApplicationDocumentsDirectory();

    return Isar.open([SaveNoteSchema], directory: dir.path, inspector: true);
  }

  void saveToIsar({
    required String urduName,
    required String englishName,
    required String url,
  }) async {
    Isar i = await isar;

    final newNote = SaveNote()
      ..urduName = urduName
      ..englishName = englishName
      ..url = url;

    await i.writeTxn(() async {
      await i.saveNotes.put(newNote);
    });
  }

  Future<List<SaveNote>> displayNotes() async {
    Isar i = await isar;
    return await i.saveNotes.where().findAll();
  }
}
