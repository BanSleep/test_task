import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_task/data/models/items/item.dart';
import 'package:test_task/ui/main_page/widgets/app_input_field.dart';
import 'package:test_task/utils/app_colors.dart';
import 'package:test_task/utils/app_text_style.dart';

class AppDrawer extends StatefulWidget {
  final TextEditingController nameController;
  final TextEditingController measurementsController;
  final TextEditingController codeController;
  final TextEditingController descriptionController;
  final bool isEdit;
  final ItemModel? model;
  final Function(
    String name,
    String description,
    String measurements,
    String code,
  ) onConfirm;

  const AppDrawer({
    Key? key,
    required this.nameController,
    required this.codeController,
    required this.descriptionController,
    required this.measurementsController,
    required this.onConfirm,
    this.isEdit = false,
    this.model,
  }) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  String? errorText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Drawer(
        shape: const RoundedRectangleBorder(),
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.lightRedColor,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/icons/home.svg',
                      ),
                    ),
                  ),
                  const Spacer(),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        'assets/icons/close.svg',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              Text(
                widget.isEdit ? widget.model?.name ?? '' : 'Новая позиция',
                style: AppTextStyle.titleStyle.copyWith(fontSize: 16),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Заполните все поля для создания новой номенклатуры',
                style: AppTextStyle.listItemStyle.copyWith(
                  color: AppColors.hintColor,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Название',
                style: AppTextStyle.buttonTextStyle
                    .copyWith(color: AppColors.mainColor),
              ),
              const SizedBox(
                height: 5,
              ),
              AppInputField(
                textEditingController: widget.nameController,
                errorText: errorText,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Единицы измерения',
                style: AppTextStyle.buttonTextStyle
                    .copyWith(color: AppColors.mainColor),
              ),
              AppInputField(
                textEditingController: widget.measurementsController,
                errorText: errorText,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Артикул/код',
                style: AppTextStyle.buttonTextStyle
                    .copyWith(color: AppColors.mainColor),
              ),
              AppInputField(textEditingController: widget.codeController),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Описание',
                style: AppTextStyle.buttonTextStyle
                    .copyWith(color: AppColors.mainColor),
              ),
              AppInputField(
                textEditingController: widget.descriptionController,
                maxLines: 4,
              ),
              const Spacer(),
              Row(
                children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 170,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColors.mainColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Center(
                          child: Text(
                            'Отмена',
                            style: AppTextStyle.buttonTextStyle,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        if (widget.nameController.text.isNotEmpty &&
                            widget.measurementsController.text.isNotEmpty) {
                          setState(() {
                            errorText = null;
                          });
                          widget.onConfirm(
                            widget.nameController.text,
                            widget.descriptionController.text,
                            widget.measurementsController.text,
                            widget.codeController.text,
                          );
                          Navigator.pop(context);
                        } else {
                          setState(() {
                            errorText = 'Поле должно быть заполнено';
                          });
                        }
                      },
                      child: Container(
                        width: 170,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColors.redColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Center(
                          child: Text(
                            'Подтвердить',
                            style: AppTextStyle.buttonTextStyle,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
