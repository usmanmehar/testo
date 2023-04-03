import 'package:isar/isar.dart';

part 'isarNoteSaveModel.g.dart';

@collection
class SaveNote {
  final id = Isar.autoIncrement;

  String? urduName;

  String? englishName;

  String? url;
}
