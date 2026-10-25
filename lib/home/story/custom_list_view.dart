import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  String storyImage;
  String profileImage;

  CustomListView({required this.profileImage, required this.storyImage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image(
            image: AssetImage(storyImage),
            width: 112,
            height: 178,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              image: AssetImage(profileImage),
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
