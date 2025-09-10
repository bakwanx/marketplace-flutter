import 'package:flutter/material.dart';
import 'package:marketplace/utils/ext/buildcontext_ext.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductItemSkeleton extends StatelessWidget {
  final double? cardWidth;

  const ProductItemSkeleton({super.key, this.cardWidth});

  @override
  Widget build(BuildContext context) {
    final cardWidth = this.cardWidth ?? (context.width() / 2);

    return Skeletonizer.zone(
      child: Container(
        margin: EdgeInsets.only(bottom: 4),
        width: context.isPhone() && context.isPortrait() ? cardWidth : 160,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Color(0xffb3b3b3).withAlpha(25),
              offset: Offset(2, 2),
              blurRadius: 2,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Bone.square(
              size: cardWidth,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                topLeft: Radius.circular(8),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Bone.text(fontSize: 14, width: double.infinity),
                  SizedBox(height: 8),
                  Bone.text(fontSize: 12, width: cardWidth * 3 / 5),
                  SizedBox(height: 8),
                  Bone.text(fontSize: 12, width: cardWidth * 4 / 5),
                  SizedBox(height: 8),
                  Bone.text(fontSize: 12, width: cardWidth * 4 / 5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
