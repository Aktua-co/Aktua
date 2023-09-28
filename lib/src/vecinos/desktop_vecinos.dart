import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/post/post.dart';
import 'package:faker/faker.dart';
import 'package:aktua_amplify/src/navbar/desktop_navbar.dart';

class DesktopVecinos extends StatelessWidget {
     final List<Post> posts;

const DesktopVecinos({ Key? key, required this.posts }) : super(key: key);

  @override
  Widget build(BuildContext context){
   return Scaffold(
    endDrawer:DesktopNavbar(),
        appBar:AppBar(
          title:const Text("Aktua"),
        ),
    body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return Row(
            children: [
              Expanded(
                flex : 2,
                child: Container(),),
              Expanded(
                flex:3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: post,
                ),
              ),
              Expanded(
                flex : 2,
                child: Container(),),
            ],
          );
        },
      )
   );
  }
}