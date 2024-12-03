import 'package:cloud_firestore/cloud_firestore.dart';

class Account {
  String id;
  String name;
  String emailAddress;
  Timestamp? createdAt;
  Timestamp? updatedAt;

  Account(
      {required this.id,
        required this.name,
        required this.emailAddress,
        this.createdAt,
        this.updatedAt
      });
}
