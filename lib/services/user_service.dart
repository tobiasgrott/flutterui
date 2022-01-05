import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter/material.dart';
import 'package:flutterui/models/user.dart';

@Collection<User>('users')
final usersRef = UserCollectionReference();

class UsersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) => FirestoreBuilder<UserQuerySnapshot>(
        ref: usersRef,
        builder: (
          context,
          AsyncSnapshot<UserQuerySnapshot> snapshot,
          Widget? child,
        ) {
          if (snapshot.hasError) return Text('Something went wrong');
          if (!snapshot.hasData) return Text('Loading users...');

          // Access the QuerySnapshot
          var querySnapshot = snapshot.requireData;

          return ListView.builder(
            itemCount: querySnapshot.docs.length,
            itemBuilder: (context, index) {
              var user = querySnapshot.docs[index].data;

              return Text('User name: ${user.name}, age ${user.age}');
            },
          );
        },
      );
}
