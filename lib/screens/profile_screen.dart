import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_thread/widgets/thread.dart';

import '../util/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColor.background_color,
            title: SizedBox.shrink(), // Remove the title text
            leading: IconButton(
              icon: Icon(Icons.language_outlined, color: AppColor.white,),
              onPressed: () {
                // Handle menu button pressed
              },
            ),
            actions: [
              IconButton(
                icon: Icon(FontAwesomeIcons.instagram, color: AppColor.white,),
                onPressed: () {
                  // Handle notifications button pressed
                },
              ),
              IconButton(
                icon: Icon(Icons.menu, color: AppColor.white,),
                onPressed: () {
                  // Handle search button pressed
                },
              ),
            ],
          ),
          body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Sania Khan', style: GoogleFonts.roboto(fontSize: 26, color: AppColor.white,fontWeight: FontWeight.bold),),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Text('sania_khan._1', style: GoogleFonts.roboto(fontSize: 16, color: AppColor.white),),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade900,
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                      child: Text('threads.net', style: GoogleFonts.roboto(color: Colors.grey.shade600, fontSize: 12),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage("images/profile.png"),
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                "Welcome to my digital realm!",
                                style: GoogleFonts.roboto(color: AppColor.white, fontSize: 16),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '10 followers  ',
                                  style: GoogleFonts.roboto(fontSize: 16, color: Colors.grey.shade600, fontWeight: FontWeight.w400),
                                ),
                                Expanded(
                                  child: Text(
                                    'https://play.google.com/store/apps/details?id=com.futuristicgrow.drink_up_buddy',
                                    style: GoogleFonts.roboto(fontSize: 16, color: Colors.grey.shade600, fontWeight: FontWeight.w400),
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.45,
                                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.grey.shade900,)
                                  ),
                                  child: Center(child: Text('Edit Profile', style: GoogleFonts.roboto(color: AppColor.white, fontSize: 18),)),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.45,
                                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.grey.shade900,)
                                  ),
                                  child: Center(child: Text('Share Profile', style: GoogleFonts.roboto(color: AppColor.white, fontSize: 18),)),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                SliverAppBar(
                  backgroundColor: Color(0xff101010),
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(0),
                    child: TabBar(
                        labelStyle: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w400,
                        ),
                        labelColor: AppColor.white,
                        unselectedLabelColor: Colors.grey.shade600,
                        indicatorColor: AppColor.white,
                        dividerColor: Colors.transparent,
                        tabs: [
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 50.0),
                              child: Tab(text: "Thread")),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 50.0),
                              child: Tab(text: "Replies")),
                        ]),
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                // Content of Tab 1
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 5),
                    child: Column(
                      children: [
                        Thread(
                          threadId: 0,
                          profileImg: 'images/profile.png',
                          name: 'Sania Khan',
                          time: '30m',
                          verified: false,
                          contentText:
                          'Situation right now',
                          likes: 10,
                          replies: 5,
                          isImage: true,
                          isMe: true,
                          postImage: 'https://scontent.cdninstagram.com/v/t51.2885-15/357998989_1492734448139387_2384263922147350434_n.jpg?stp=dst-jpg_e35_s480x480&_nc_ht=scontent.cdninstagram.com&_nc_cat=111&_nc_ohc=zKhdCyuq1A0AX_nCo9W&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MzE0MTEyNzYxNDYwMzg5NzkyOA%3D%3D.2-ccb7-5&oh=00_AfA24mXYzzIlRHHX7ntDyQ3GgXQnsayz0Gfo52owOtLSNA&oe=64AD9A72&_nc_sid=10d13b',
                        ),
                        Thread(
                          threadId: 1,
                          profileImg: 'images/profile.png',
                          name: 'Sania Khan',
                          time: '1h',
                          verified: false,
                          contentText:
                          'Hey, lovely people of Instagram! 🌿✨ I\'m Sania, and I\'m absolutely thrilled to have you join me on this exciting journey through the world of app development and digital wizardry! 🤖💡',
                          likes: 10,
                          replies: 5,
                          isImage: false,
                          isMe: true,
                        ),
                      ],
                    ),
                  ),
                ),
                // Content of Tab 2
                Center(
                  child: Container(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}