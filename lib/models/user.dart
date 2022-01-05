import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  User({
    required this.name,
    required this.age,
    required this.email,
  }) {
    $assertUser(this);
  }

  final String name;

  @Min(0)
  final int age;

  final String email;
}

@Collection<User>('users')
final usersRef = UserCollectionReference();
