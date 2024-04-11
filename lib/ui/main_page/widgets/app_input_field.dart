import 'package:flutter/material.dart';
import 'package:test_task/utils/app_colors.dart';
import 'package:test_task/utils/app_text_style.dart';

class AppInputField extends StatelessWidget {
  final TextEditingController textEditingController;
  final int maxLines;
  final String? errorText;

  const AppInputField({
    Key? key,
    required this.textEditingController,
    this.maxLines = 1,
    this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: maxLines == 1 ? 40 : null,
          child: TextField(
            controller: textEditingController,
            maxLines: maxLines,
            cursorColor: Colors.black12,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                bottom: 0,
                left: 10,
                top: maxLines == 1 ? 0 : 20,
              ),
              focusedBorder: const OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: const BorderSide(
                  color: AppColors.searchBorderColor,
                  width: 1,
                ),
              ),
            ),
          ),
        ),
        if (errorText != null)
          Text(
            errorText!,
            style: AppTextStyle.buttonTextStyle
                .copyWith(color: Colors.red, fontSize: 13),
          ),
      ],
    );
  }
}
