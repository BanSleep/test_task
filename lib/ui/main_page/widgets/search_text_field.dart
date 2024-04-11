import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_task/utils/app_colors.dart';

class SearchTextField extends StatefulWidget {
  final TextEditingController controller;
  const SearchTextField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Container(
        alignment: Alignment.centerRight,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(4),
            bottomLeft: Radius.circular(4),
            bottomRight: Radius.zero,
            topRight: Radius.zero,
          ),
          border: Border(
            top: BorderSide(
              width: 1,
              color: AppColors.searchBorderColor,
            ),
            left: BorderSide(
              width: 1,
              color: AppColors.searchBorderColor,
            ),
            bottom: BorderSide(
              width: 1,
              color: AppColors.searchBorderColor,
            ),
            right: BorderSide(
              width: 0,
              color: AppColors.searchBorderColor,
            ),
          ),
        ),
        width: 280,
        height: 40,
        child: TextFormField(
          controller: widget.controller,
          cursorColor: Colors.black12,
          decoration: InputDecoration(
            alignLabelWithHint: true,
            contentPadding: const EdgeInsets.only(top: 5),
            hintText: 'Поиск по названию',
            hintStyle: const TextStyle(
              fontSize: 14,
              color: Color.fromRGBO(197, 192, 192, 1),
            ),
            prefixIcon: SvgPicture.asset(
              'assets/icons/search.svg',
              width: 18,
              height: 18,
              fit: BoxFit.scaleDown,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
