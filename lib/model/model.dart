class Notes {
  int? idNotes;
  String? noteTitle;
  String? noteContent;
  int? notesUser;

  Notes({this.idNotes, this.noteTitle, this.noteContent, this.notesUser});

  Notes.fromJson(Map<String, dynamic> json) {
    idNotes = json['id_notes'];
    noteTitle = json['note_title'];
    noteContent = json['note_content'];
    notesUser = json['notes_user'];
  }
}
