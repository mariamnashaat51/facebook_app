import 'package:flutter/material.dart';
import 'package:new_face_book/home/story/create_story_item.dart';
import 'package:new_face_book/home/story/custom_list_view.dart';
import 'package:new_face_book/model/story.dart';
import 'package:new_face_book/style/app_color.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomeScreen';

  List<Story> storiesList = [];

  List<String> profileImage = [
    'assets/images/profile_images/profile_i2.png',
    'assets/images/profile_images/profile_i3.png',
    'assets/images/profile_images/profile_i3.png',
  ];
  List<String> storiesImage = [
    'assets/images/story_images/story_i2.png',
    'assets/images/story_images/story_i3.png',
    'assets/images/story_images/story_i3.png',
  ];

  void addStory() {
    for (int i = 0; i < 3; i++) {
      storiesList.add(
        Story(profileImage: profileImage[i], storyImage: storiesImage[i]),
      );
    }
  }

  HomeScreen() {
    addStory();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: AppColor.whiteAppColor,
        appBar: AppBar(
          backgroundColor: AppColor.whiteAppColor,
          title: Image.asset(
            'assets/images/facebook_logo.png',
            width: 156,
            height: 36,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/plus.png'),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/search.png'),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/messenger.png'),
            ),
          ],
          bottom: TabBar(
            labelColor: AppColor.blueAppColor,
            unselectedLabelColor: AppColor.grayAppColor,
            indicatorColor: AppColor.blueAppColor,
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.video_library)),
              Tab(icon: Icon(Icons.store)),
              Tab(icon: Icon(Icons.person)),
              Tab(icon: Icon(Icons.notifications)),
              Tab(child: Image.asset('assets/images/profile_image.png')),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    spacing: 12,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/profile_image_1.png',
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'What’s in Your Mind?',
                          style: TextStyle(
                            color: AppColor.grayAppColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Icon(Icons.photo_library, color: Colors.green),
                    ],
                  ),
                ),

                Divider(
                  color: AppColor.grayAppColor,
                  radius: BorderRadius.circular(2),
                  thickness: 2,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    height: 190,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,

                      itemCount: storiesList.length + 1,

                      itemBuilder: (BuildContext context, int index) {
                        if (index == 0) {
                          return CreateStoryItem(
                            profileImage: 'assets/images/profile_image_1.png',
                          );
                        }

                        return CustomListView(
                          profileImage: storiesList[index - 1].profileImage,
                          storyImage: storiesList[index - 1].storyImage,
                        );
                      },

                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(width: 12);
                      },
                    ),
                  ),
                ),

                Divider(
                  color: AppColor.grayAppColor,
                  radius: BorderRadius.circular(2),
                  thickness: 2,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    spacing: 16,
                    children: [
                      Row(
                        spacing: 4.5,
                        children: [
                          Image.asset('assets/images/profile_image_post.png'),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Route',
                                  style: TextStyle(
                                    color: AppColor.blackAppColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '8h.',
                                      style: TextStyle(
                                        color: AppColor.grayAppColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Image.asset('assets/images/earth.png'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      Image.asset('assets/images/image_post.png'),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              spacing: 8,
                              children: [
                                Icon(Icons.favorite_border),
                                Icon(Icons.message_outlined),
                                Icon(Icons.send_rounded),
                              ],
                            ),
                          ),
                          Icon(Icons.bookmark_border),
                        ],
                      ),
                    ],
                  ),
                ),

                Divider(
                  color: AppColor.grayAppColor,
                  radius: BorderRadius.circular(2),
                  thickness: 2,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    spacing: 16,
                    children: [
                      Row(
                        spacing: 4.5,
                        children: [
                          Image.asset('assets/images/profile_image_post.png'),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Route',
                                  style: TextStyle(
                                    color: AppColor.blackAppColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '8h.',
                                      style: TextStyle(
                                        color: AppColor.grayAppColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Image.asset('assets/images/earth.png'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      Image.asset('assets/images/image_post.png'),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              spacing: 8,
                              children: [
                                Icon(Icons.favorite_border),
                                Icon(Icons.message_outlined),
                                Icon(Icons.send_rounded),
                              ],
                            ),
                          ),
                          Icon(Icons.bookmark_border),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  CustomListView mapToStory(Story story) {
    return CustomListView(
      profileImage: story.profileImage,
      storyImage: story.storyImage,
    );
  }

  CustomListView builtStoryItem(BuildContext context, int index) {
    return CustomListView(
      profileImage: storiesList[index].profileImage,
      storyImage: storiesList[index].storyImage,
    );
  }
}

/*TabBarView(
          children: [
            Center(child: Text('Home')),
            Center(child: Text('Video')),
            Center(child: Text('Store')),
            Center(child: Text('Profile')),
            Center(child: Text('Notifications')),
          ],
        ),*/

/*(BuildContext context, int index) => Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image(
                              image: AssetImage('assets/images/story_i3.png'),
                              width: 112,
                              height: 178,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(
                              image: AssetImage('assets/images/profile_image.png'),
                            ),
                          ),
                        ],
                      ),*/
