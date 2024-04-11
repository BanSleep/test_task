import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_task/data/models/items/item.dart';
import 'package:test_task/di/locator.dart';
import 'package:test_task/ui/main_page/widgets/app_drawer.dart';
import 'package:test_task/ui/main_page/widgets/footer.dart';
import 'package:test_task/ui/main_page/widgets/search_text_field.dart';
import 'package:test_task/utils/app_colors.dart';
import 'package:test_task/utils/app_text_style.dart';

import 'bloc/main_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _total = 0;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _measurementsController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _searchController = TextEditingController();
  bool isEdit = false;
  ItemModel? editingModel;
  String sort = 'ASC';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<MainBloc>()..add(MainEvent.loadInfo(page: 1, pageSize: 10)),
      child: BlocConsumer<MainBloc, MainState>(
        listener: (context, state) {
          if (state is Loaded) {
            setState(() {
              _total = state.total;
            });
          }
        },
        builder: (context, state) {
          if (state is Loaded) {
            return Scaffold(
              key: scaffoldKey,
              onEndDrawerChanged: (isOpen) {
                if (!isOpen) {
                  setState(() {
                    isEdit = false;
                    _nameController.clear();
                    _codeController.clear();
                    _descriptionController.clear();
                    _measurementsController.clear();
                  });
                }
              },
              endDrawer: AppDrawer(
                isEdit: isEdit,
                model: editingModel,
                nameController: _nameController,
                codeController: _codeController,
                descriptionController: _descriptionController,
                measurementsController: _measurementsController,
                onConfirm: (name, desc, measurements, code) {
                  isEdit
                      ? context.read<MainBloc>().add(
                            EditItem(
                              model: ItemModel(
                                id: editingModel?.id,
                                name: name,
                                code: code,
                                measurementUnits: measurements,
                                description: desc,
                              ),
                            ),
                          )
                      : context.read<MainBloc>().add(
                            AddNewItem(
                              model: ItemModel(
                                name: name,
                                code: code,
                                measurementUnits: measurements,
                                description: desc,
                              ),
                            ),
                          );
                },
              ),
              appBar: AppBar(
                toolbarHeight: 108,
                backgroundColor: Colors.white,
                scrolledUnderElevation: 0,
                automaticallyImplyLeading: false,
                leadingWidth: 400,
                leading: Padding(
                  padding: const EdgeInsets.only(bottom: 45),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'Номенклатура',
                          style: AppTextStyle.titleStyle.copyWith(
                            fontSize: 32,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: AppColors.redColor,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          child: Text(
                            '$_total единиц',
                            style: AppTextStyle.buttonTextStyle
                                .copyWith(fontSize: 13),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 45),
                    child: SearchTextField(
                      controller: _searchController,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 45),
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          context
                              .read<MainBloc>()
                              .add(Search(name: _searchController.text));
                        },
                        child: Container(
                          width: 71,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: AppColors.brownColor,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(4),
                              bottomRight: Radius.circular(4),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Найти',
                              style: AppTextStyle.buttonTextStyle,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 45),
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          scaffoldKey.currentState!.openEndDrawer();
                        },
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: AppColors.redColor,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 10,
                            ),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/add.svg',
                                  width: 20,
                                  height: 20,
                                  fit: BoxFit.scaleDown,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Text(
                                  'Новая позиция',
                                  style: AppTextStyle.buttonTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              body: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: AppColors.greyColor,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 24,
                              top: 14,
                              bottom: 14,
                              right: 24,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () {
                                        if (sort == 'ASC') {
                                          setState(() {
                                            sort = 'DESC';
                                          });
                                        } else {
                                          setState(() {
                                            sort = "ASC";
                                          });
                                        }
                                        context.read<MainBloc>().add(
                                              Sort(
                                                page: state.page,
                                                pageSize: state.pageSize,
                                                sort: sort,
                                              ),
                                            );
                                      },
                                      child: Row(
                                        children: [
                                          const Text(
                                            'Название',
                                            style: AppTextStyle.titleStyle,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Transform.rotate(
                                            angle: sort == "ASC" ? 0 : pi,
                                            child: SvgPicture.asset(
                                              'assets/icons/arrow-down.svg',
                                              color: AppColors.mainColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  child: Text(
                                    'Единица измерения',
                                    style: AppTextStyle.titleStyle,
                                  ),
                                ),
                                const Expanded(
                                  child: Text(
                                    'Артикул/код',
                                    style: AppTextStyle.titleStyle,
                                  ),
                                ),
                                const SizedBox(
                                  width: 32,
                                  height: 32,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  border: Border(
                                    bottom: BorderSide(
                                      color: AppColors.borderColor,
                                      width: 1,
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(24),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          state.items[index].name ?? '',
                                          style: AppTextStyle.listItemStyle,
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          state.items[index].measurementUnits ??
                                              '',
                                          style: AppTextStyle.listItemStyle,
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          state.items[index].code ?? '',
                                          style: AppTextStyle.listItemStyle,
                                        ),
                                      ),
                                      MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              isEdit = true;
                                              editingModel = state.items[index];
                                              _nameController.text =
                                                  editingModel?.name ?? '';
                                              _measurementsController.text =
                                                  editingModel
                                                          ?.measurementUnits ??
                                                      '';
                                              _codeController.text =
                                                  editingModel?.code ?? '';
                                              _descriptionController.text =
                                                  editingModel?.description ??
                                                      '';
                                            });
                                            scaffoldKey.currentState!
                                                .openEndDrawer();
                                          },
                                          child: Container(
                                            width: 32,
                                            height: 32,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: AppColors.borderColor,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                            ),
                                            child: Center(
                                              child: SvgPicture.asset(
                                                'assets/icons/edit.svg',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            padding: const EdgeInsets.only(bottom: 88),
                            itemCount: state.items.length,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Footer(
                      page: state.page,
                      pageSize: state.pageSize,
                      itemsCount: state.total,
                      changePage: (int page, int pageSize) {
                        context.read<MainBloc>().add(
                              ChangePage(
                                page: page,
                                pageSize: pageSize,
                              ),
                            );
                      },
                    ),
                  ),
                ],
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
