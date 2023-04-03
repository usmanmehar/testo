class NotesModel {
  String? englishName;
  String? urduName;
  String? url;

  NotesModel({this.englishName, this.urduName, this.url});

  NotesModel.fromJson(Map json) {
    if (json["englishName"] is String) {
      englishName = json["englishName"];
    }
    if (json["urduName"] is String) {
      urduName = json["urduName"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["englishName"] = englishName;
    data["urduName"] = urduName;
    data["url"] = url;
    return data;
  }
}
