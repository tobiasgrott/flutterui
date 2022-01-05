import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  User({
    required this.name,
    required this.age,
    required this.email,
  }) {
    _$assertUser(this);
  }

  final String name;

  @Min(0)
  final int age;

  final String email;
}

@Collection<User>('users')
final usersRef = UserCollectionReference();
