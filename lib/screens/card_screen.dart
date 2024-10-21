import 'package:components_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCard1(),
          SizedBox(height: 10,),
          CustomCard2(imgUrl: 'https://images.pexels.com/photos/346529/pexels-photo-346529.jpeg', name: 'Paisaje 1',),
          SizedBox(height: 10,),
          CustomCard2(imgUrl: 'https://www.escapemotions.com/images/mainpage/images/blog_posts_bg/landing-page_blog_93303113643.jpg'),
          SizedBox(height: 10,),
          CustomCard2(imgUrl: 'https://i.natgeofe.com/n/2a832501-483e-422f-985c-0e93757b7d84/6_4x3.jpg?w=1436&h=1078'),
          SizedBox(height: 10,),
        ],
      )
    );
  }
}

