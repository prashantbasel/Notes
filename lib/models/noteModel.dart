import 'package:cloud_firestore/cloud_firestore.dart';

class NoteModel {
  String id;
  String title;
  String body;
  Timestamp creationDate;

  NoteModel({required this.id, required this.title, required this.body, required this.creationDate});

  factory NoteModel.fromDocumentSnapshot(DocumentSnapshot documentSnapshot) =>NoteModel(
    body: documentSnapshot["body"],
    id: documentSnapshot.id,
    title: documentSnapshot["title"],
    creationDate: documentSnapshot["creationDate"],
  );

  factory NoteModel.fromJson(Map<String, dynamic> json) =>NoteModel(
    body: json["body"],
    id: json["id"],
    title: json["title"],
    creationDate: json["creationDate"],
  );
}
