import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/colors.dart';

class ThreadHeader extends StatelessWidget {
  ThreadHeader(
      {Key? key,
        required this.profileImg,
        required this.name,
        required this.time,
        required this.isMe,
        required this.verified})
      : super(key: key);

  String profileImg;
  String name;
  String time;
  bool verified;
  bool isMe;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                height: 50,
                width: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: CircleAvatar(
                    child: Image.asset(profileImg),
                  ),
                ),
              ),
              isMe == false ? Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.white,
                    border: Border.all(color: Colors.black, width: 1.5),
                  ),
                  child: Center(
                    child: Icon(Icons.add, size: 13),
                  ),
                ),
              ) : SizedBox.shrink(),
            ],
          ),
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    name,
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold, color: AppColor.white,fontSize: 16),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  verified == true
                      ? const Icon(
                    Icons.verified,
                    color: Colors.blue,
                    size: 15,
                  )
                      : const SizedBox(),
                ],
              ),
              const Spacer(),
              Text(
                time,
                style: GoogleFonts.roboto(fontSize: 16, color: Colors.grey.shade600, fontWeight: FontWeight.w400),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  Icons.more_horiz,
                  color: AppColor.white,
                  size: 20,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
