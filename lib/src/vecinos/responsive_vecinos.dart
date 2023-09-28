import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/vecinos/desktop_vecinos.dart';
import 'package:aktua_amplify/src/responsive/responsive_layout.dart';
import 'package:aktua_amplify/src/vecinos/tablet_vecinos.dart';
import 'package:aktua_amplify/src/vecinos/mobile_vecinos.dart';

import 'package:aktua_amplify/src/post/post.dart';
import 'package:faker/faker.dart';

class ResponsiveVecinos extends StatelessWidget {
ResponsiveVecinos({ Key? key }) : super(key: key);
   final List<Post> posts = List.generate(12, (index) {
    final faker = Faker();
    return Post(
      userName: faker.person.name(),
      userProfilePicture: faker.image.image(keywords:["profile","picture"], random:true),
      title: faker.lorem.sentence(),
      content: faker.lorem.sentence(),
      picture: faker.image.image(keywords: ["family", "neighbor","community"], random:true),
    );
  });

  @override
  Widget build(BuildContext context){
    return ResponsiveLayout(
      mobileBody: MobileVecinos(posts:posts),
      tabletBody: TabletVecinos(posts: posts,),
      desktopBody: DesktopVecinos(posts: posts),
    );
  }
}