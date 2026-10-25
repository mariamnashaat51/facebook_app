// import 'package:flutter/material.dart';
//
// class CreateStoryItem extends StatelessWidget {
//   String profileImage;
//
//   CreateStoryItem({required this.profileImage});
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 180,
//       height: 268,
//       child: Column(
//         children: [
//           Stack(
//             clipBehavior: Clip.none,
//             alignment: Alignment.bottomCenter,
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(20),
//                 child: Image.asset(
//                   profileImage,
//                   width: 112,
//                   height: 178,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//
//               Positioned(
//                 bottom: -19,
//                 child: Container(
//                   padding: const EdgeInsets.all(3),
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                     shape: BoxShape.circle,
//                   ),
//                   child: const CircleAvatar(
//                     radius: 18,
//                     backgroundColor: Color(0xFF1877F2),
//                     child: Icon(Icons.add, color: Colors.white, size: 30),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//
//           const SizedBox(height: 24),
//
//           const Text(
//             'Create a\nStory',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.w600,
//               height: 1.15,
//               color: Color(0xFF242424),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CreateStoryItem extends StatelessWidget {
  final String profileImage;

  const CreateStoryItem({super.key, required this.profileImage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 112,
      height: 178,
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.zero,
                ),
                child: Image.asset(
                  profileImage,
                  width: 112,
                  height: 124,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: -19,
                child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const CircleAvatar(
                    radius: 16,
                    backgroundColor: Color(0xFF1877F2),
                    child: Icon(Icons.add, color: Colors.white, size: 26),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 24),

          const Text(
            'Create a Story',
            textAlign: TextAlign.center,
            maxLines: 2,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              height: 1.15,
              color: Color(0xFF242424),
            ),
          ),
        ],
      ),
    );
  }
}
