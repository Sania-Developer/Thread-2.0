import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_thread/util/colors.dart';

class AddThreadScreen extends StatelessWidget {
  const AddThreadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.background_color,
          leading: Icon(
            Icons.close,
            color: AppColor.white,
          ),
          title: Text(
            "New Thread",
            style: GoogleFonts.roboto(
                fontSize: 20, color: AppColor.white,),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 130,
                child: Row(
                  children: [
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("images/profile.png"),
                          ),
                        ),
                        Expanded(
                            child: VerticalDivider(
                          thickness: 0.5,
                        )),

                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Opacity(
                            opacity: 0.6,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage: AssetImage("images/profile.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "sania_khan._1",
                          style: GoogleFonts.roboto(
                              fontSize: 15,
                              color: AppColor.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        const Text(
                          "Start a thread...",
                          style: TextStyle(color: AppColor.grey, fontSize: 16),
                        ),
                        Transform.rotate(
                            angle: 1,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.attach_file,
                                  color: AppColor.grey,
                                  size: 20,
                                ))),
                        SizedBox(height: 20,),
                        Expanded(
                          child: Text(
                            "Add to thread",
                            style: TextStyle(
                                color: AppColor.greyshade600),
                          ),
                        ),
                      ],
                    )),

                  ],
                ),
              )
            ],
          ),
        ));
  }
}
