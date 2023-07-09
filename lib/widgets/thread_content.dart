import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_thread/util/colors.dart';

class ThreadContent extends StatelessWidget {
  ThreadContent({
    Key? key,
    required this.contentText,
    required this.postImage,
    required this.isImage,
  }) : super(key: key);

  final String contentText;
  final String? postImage;
  final bool isImage;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final availableWidth = constraints.maxWidth;
        final hasImage = isImage && postImage != null;
        final textHeight = _calculateTextHeight(contentText, availableWidth);
        final vDividerHeight = hasImage ? textHeight + 230.0 : textHeight + 70.0;

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: vDividerHeight,
              child: const VerticalDivider(
                width: 40,
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    contentText,
                    style: GoogleFonts.roboto(fontSize: 16.0, color: AppColor.white),
                  ),
                  const SizedBox(height: 12),
                  if (hasImage)
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 185,
                            width: 328,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade800),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(
                                postImage!,
                                height: 184.5,
                                width: 328,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Icon(Icons.favorite_outline_rounded, color: AppColor.white, size: 27,),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Icon(
                            FontAwesomeIcons.comment,
                            color: AppColor.white,
                            size: 23,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Icon(Icons.repeat_rounded, color: AppColor.white),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Icon(Icons.send_outlined, color: AppColor.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  double _calculateTextHeight(String text, double maxWidth) {
    final textPainter = TextPainter(
      text: TextSpan(text: text, style: TextStyle(fontSize: 16.0, color: AppColor.white)),
      maxLines: 30,
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: maxWidth);

    return textPainter.size.height;
  }
}
