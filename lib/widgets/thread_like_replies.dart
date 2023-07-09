import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThreadLikeReplies extends StatelessWidget {
  ThreadLikeReplies({Key? key, required this.likes, required this.replies})
      : super(key: key);

  int replies;
  int likes;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 35,
            height: 35,
            child: Transform.rotate(
              angle: (22 / 7) / 3,
              child: Stack(
                children: const [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: CircleAvatar(
                      radius: 9,
                      backgroundImage: NetworkImage(
                        'https://scontent.cdninstagram.com/v/t51.2885-19/358354300_233558816233141_2629115126749297994_n.jpg?stp=dst-jpg_s150x150&_nc_ht=scontent.cdninstagram.com&_nc_cat=101&_nc_ohc=zvboAvTWCy0AX9K1YJ3&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfB6HL_1Oozb4XYQxB9ucYDg7je8cBSjInp7aBI2ZiwWmQ&oe=64ACF37B&_nc_sid=10d13b',
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: CircleAvatar(
                      radius: 6,
                      backgroundImage: NetworkImage(
                        'https://scontent.cdninstagram.com/v/t51.2885-19/358341977_626453559234891_5579861879039065592_n.jpg?stp=dst-jpg_s150x150&_nc_ht=scontent.cdninstagram.com&_nc_cat=103&_nc_ohc=-u4mkdx9crYAX9czzPX&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfD_zC3n2HWoGz-1nU7xgYsJiDEA1LvI1H3X-ZoIFd-YhA&oe=64AD6614&_nc_sid=10d13b',
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 6,
                      backgroundImage: NetworkImage(
                        'https://scontent.cdninstagram.com/v/t51.2885-19/358354164_1007281473956140_7527258938921757826_n.jpg?stp=dst-jpg_s150x150&_nc_ht=scontent.cdninstagram.com&_nc_cat=104&_nc_ohc=LF4MLz2KzA8AX_Hra9o&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfCcfiwUCk14LvIyFPxxOnTySn-oZ4olrs2muizuLnbbZA&oe=64AE37DC&_nc_sid=10d13b',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Text(
          '$replies replies',
          style: GoogleFonts.roboto(fontSize: 18, color: Colors.grey.shade600,fontWeight: FontWeight.w400),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '$likes likes',
          style: GoogleFonts.roboto(fontSize: 18, color: Colors.grey.shade600,fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
