import 'package:flutter/material.dart';
import 'package:instagram_thread/models/threads.dart';
import 'package:instagram_thread/widgets/thread.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Image.asset(
                  'images/insta_thread_logo_whtie.png',
                  scale: 9,
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                    itemCount: threadslist.length,
                    itemBuilder: (context, index) {
                      return Thread(
                        profileImg: threadslist[index].profileImg,
                        name: threadslist[index].name,
                        time: threadslist[index].time,
                        verified: threadslist[index].verified,
                        contentText: threadslist[index].contentText,
                        likes: threadslist[index].likes,
                        replies: threadslist[index].replies,
                        isImage: threadslist[index].isImage,
                        isMe: threadslist[index].isMe,
                        postImage: threadslist[index].postImage,
                      );
                    }))
          ]),
        ),
      ),
    );
  }
}
