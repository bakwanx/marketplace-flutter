import 'package:flutter/material.dart';
import 'package:marketplace/utils/themes/typography_text_style.dart';
import '../themes/theme.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final String labelText;
  final String hintText;
  final Color? borderColor;
  final bool isRequired;
  final bool isPassword;
  final Function(String)? onChangeValue;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    super.key,
    required this.textEditingController,
    this.textInputType = TextInputType.text,
    this.hintText = "",
    this.onChangeValue,
    required this.labelText,
    this.borderColor,
    this.validator,
    this.isRequired = false,
    this.isPassword = false,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              widget.labelText,
              style: TypographyTextStyle.subHeadingBold1.copyWith(
                fontWeight: FontWeight.w600
              ),
            ),
            widget.isRequired ?Text(
              " *",
              style: TypographyTextStyle.subHeadingBold1.copyWith(
                  fontWeight: FontWeight.w600,
                color: Colors.red,
              ),
            ) : SizedBox(),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          controller: widget.textEditingController,
          keyboardType: widget.textInputType,
          obscureText: widget.isPassword ? isObscure : false,
          enableSuggestions: false,
          autocorrect: false,
          onChanged: widget.onChangeValue,
          validator: widget.validator,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          decoration: InputDecoration(
            fillColor: Colors.white,
            hintText: widget.hintText,
            hintStyle: TypographyTextStyle.bodyRegular1.copyWith(
              color: Colors.grey.shade400
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(
                color: Colors.red,
              ),
            ),
            suffixIcon: widget.isPassword
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                    icon: Icon(
                      isObscure == true
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: Colors.grey,
                    ),
                  )
                : null,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(DefaultSize.defaultRadius),
              borderSide: BorderSide(
                color: Colors.grey.shade400,
                width: 1.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
