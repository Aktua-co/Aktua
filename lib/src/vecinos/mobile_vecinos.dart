import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/post/post.dart';
import 'package:faker/faker.dart';

class MobileVecinos extends StatelessWidget {
final List<Post> posts;
const MobileVecinos({ Key? key, required this.posts }) : super(key: key);

  @override
  Widget build(BuildContext context){

 
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: post,
          );
        },
      );
  }
}