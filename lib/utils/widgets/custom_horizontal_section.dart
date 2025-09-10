import 'package:flutter/material.dart';
import 'package:marketplace/utils/themes/typography_text_style.dart';

class CustomHorizontalSection extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final Widget? titleWidget;
  final List<Widget> items;
  final Function()? onTapViewAll;
  final BoxDecoration? bgBoxDecoration;
  final double? spacing;
  final EdgeInsetsGeometry? scrollPadding;
  final EdgeInsetsGeometry? padding;
  final List<Widget>? backgroundProps;
  final Color? titleColor;
  final Color? actionColor;

  const CustomHorizontalSection({
    super.key,
    this.title,
    this.subtitle,
    required this.items,
    this.onTapViewAll,
    this.bgBoxDecoration,
    this.spacing,
    this.titleWidget,
    this.scrollPadding,
    this.padding,
    this.backgroundProps,
    this.titleColor,
    this.actionColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: bgBoxDecoration,
      child: Stack(
        children: [
          if (backgroundProps != null && backgroundProps!.isNotEmpty)
            ...backgroundProps!,
          Padding(
            padding: padding ?? EdgeInsets.only(bottom: 12, top: 12),
            child: Column(
              children: [
                if (title != null || titleWidget != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child:
                        titleWidget ??
                        Row(

                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    title!,
                                    textAlign:
                                        onTapViewAll == null
                                            ? TextAlign.center
                                            : TextAlign.left,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: titleColor ?? Colors.black,
                                    ),
                                  ),
                                  if(subtitle != null)...[
                                    Text(subtitle!,
                                     style: TypographyTextStyle.bodyRegular1.copyWith(
                                       fontSize: 12
                                     ),),
                                  ]
                                ],
                              ),
                            ),
                            if (onTapViewAll != null) ...[
                              InkWell(
                                onTap: onTapViewAll,
                                child: Text(
                                  'View All',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: actionColor ?? Colors.grey,
                                  ),
                                  // ),
                                ),
                              ),
                            ],
                          ],
                        ),
                  ),
                SizedBox(height: 12),
                SingleChildScrollView(
                  hitTestBehavior: HitTestBehavior.translucent,
                  scrollDirection: Axis.horizontal,
                  padding:
                      scrollPadding ?? EdgeInsets.symmetric(horizontal: 16),
                  child: IntrinsicHeight(
                    child: Row(
                      spacing: spacing ?? 8,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [...items],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
