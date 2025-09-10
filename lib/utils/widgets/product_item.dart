import 'package:marketplace/utils/ext/buildcontext_ext.dart';
import 'package:marketplace/utils/themes/theme.dart';
import 'package:marketplace/utils/themes/typography_text_style.dart';

import '../../domain/entity/product_entity.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final ProductEntity productEntity;

  final Function()? onTap;

  const ProductItem({super.key, required this.productEntity, this.onTap});

  @override
  Widget build(BuildContext context) {
    final cardWidth = context.width() * 0.4;

    return GestureDetector(
      onTap: onTap ?? () {},
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
            SizedBox(
              height:
                  context.isPhone() && context.isPortrait() ? cardWidth : 160,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Image.network(
                      productEntity.thumbnail,
                      fit: BoxFit.contain,
                      height: 40,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 6,
                bottom: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productEntity.title,
                    style: TypographyTextStyle.bodyRegular1.copyWith(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 2),
                  Text(
                    productEntity.description,
                    style: TypographyTextStyle.headingBold4.copyWith(
                      fontSize: 18,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 2),
                  Text(
                    "RM ${productEntity.price}",
                    style: TypographyTextStyle.bodyRegular1.copyWith(
                      fontSize: 18,
                      color: CustomColor.greenColor,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 2),
                ],
              ),
            ),
            // ),
          ],
        ),
      ),
      // ),
    );
  }
}
