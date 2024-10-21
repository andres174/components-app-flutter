import 'package:components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              backgroundColor: AppTheme.primaryColor900,
              foregroundColor: AppTheme.textPrimaryColor,
              child: Text('AZ'),
            ),
          ),
        ],
      ),
      body: const Center(
         child: CircleAvatar(

          maxRadius: 100,
          backgroundImage: NetworkImage('https://depor.com/resizer/VmVqcAooduGAHYUTg2cIjlhpEKg=/1200x1200/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/5OGH53R6YBEDNPQ2IJQKFHBO4Y.jpg'),
         ),
      ),
    );
  }
}