import 'package:flutter/material.dart';
import 'package:marketplace/utils/themes/typography_text_style.dart';

class IconText extends StatelessWidget {
  final IconData iconData;
  final String text;

  const IconText({super.key, required this.iconData, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 16
      ),
      child: Row(
        children: [
          Icon(iconData, color: Colors.grey, size: 16),
          SizedBox(
            width: 4,
          ),
          Text(
            text,
            style: TypographyTextStyle.subHeadingMedium1.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
