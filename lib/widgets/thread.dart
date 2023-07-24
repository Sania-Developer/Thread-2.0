import 'package:flutter/material.dart';
import 'package:instagram_thread/widgets/thread_content.dart';
import 'package:instagram_thread/widgets/thread_header.dart';
import 'package:instagram_thread/widgets/thread_like_replies.dart';

class Thread extends StatelessWidget {
  Thread(
      {Key? key,
      required this.profileImg,
      required this.name,
      required this.time,
      required this.verified,
      required this.contentText,
      required this.likes,
      required this.replies,
        this.postImage,
      required this.isImage,
      required this.isMe,
      required this.threadId,
      })
      : super(key: key);

  String profileImg;
  String name;
  String time;
  String contentText;
  String? postImage;
  int likes;
  int replies;
  int threadId;
  bool verified;
  bool isImage;
  bool isMe;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ThreadHeader(
              profileImg: profileImg,
              name: name,
              time: time,
              verified: verified,
            isMe: isMe,
          ),
          const SizedBox(height: 8.0),
          ThreadContent(threadId: threadId, contentText: contentText,postImage: postImage,isImage: isImage,),
          const SizedBox(height: 8.0),
          ThreadLikeReplies(likes: likes, replies: replies),
          const Divider(
            height: 15,
            thickness: 0.3,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
