import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:faker/src/lorem.dart';

class Post extends StatelessWidget {
  final String userName;
  final String userProfilePicture;
  final String title;
  final String content;
  final String? picture;

  const Post({
    required this.userName,
    required this.userProfilePicture,
    required this.title,
    required this.content,
    this.picture,
  });

  @override
  Widget build(BuildContext context) {
  
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(userProfilePicture),
            ),
            title: Text(userName),
          ),
          ListTile(
            title: Text(title),
            subtitle: Text(content.toString()),
          ),
          if (picture != null)
            Image.network(
              picture!,
              fit: BoxFit.cover,
            ),
        ],
      ),
    );
  }
}