import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_task/utils/app_colors.dart';
import 'package:test_task/utils/app_text_style.dart';

class Footer extends StatefulWidget {
  final int page;
  final int pageSize;
  final int itemsCount;
  final Function(int page, int pageSize) changePage;

  const Footer({
    Key? key,
    required this.pageSize,
    required this.page,
    required this.itemsCount,
    required this.changePage,
  }) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  final List<int> values = [10, 20, 50, 100];

  final GlobalKey _key = GlobalKey();

  OverlayEntry? overlayEntry;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 88,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 28, bottom: 20, left: 24),
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  if (index == 6) {
                    return GestureDetector(
                      onTap: () {
                        widget.changePage(
                          widget.page >
                                  ((widget.itemsCount ~/ widget.pageSize) + 1) /
                                      2
                              ? 1
                              : (widget.itemsCount ~/ widget.pageSize) + 1,
                          widget.pageSize,
                        );
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: AppColors.borderColor,
                            width: 1,
                          ),
                        ),
                        child: Center(
                          child: widget.page >
                                  ((widget.itemsCount ~/ widget.pageSize) + 1) /
                                      2
                              ? Transform.rotate(
                                  angle: pi,
                                  child: SvgPicture.asset(
                                    'assets/icons/arrow-right.svg',
                                  ),
                                )
                              : SvgPicture.asset(
                                  'assets/icons/arrow-right.svg',
                                ),
                        ),
                      ),
                    );
                  } else if ((widget.page + index) <=
                      ((widget.itemsCount ~/ widget.pageSize) + 2)) {
                    if (widget.page != 1) {
                      return GestureDetector(
                        onTap: () {
                          widget.changePage(
                            index == 0
                                ? widget.page - 1
                                : index == 1
                                    ? widget.page
                                    : widget.page + index - 1,
                            widget.pageSize,
                          );
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          margin: const EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: widget.page == index + widget.page - 1
                                ? Border.all(
                                    width: 2,
                                    color: AppColors.redColor,
                                  )
                                : null,
                          ),
                          child: Center(
                            child: Text(
                              index == 0
                                  ? "${widget.page - 1}"
                                  : index == 1
                                      ? "${widget.page}"
                                      : "${widget.page + index - 1}",
                              style: AppTextStyle.buttonTextStyle.copyWith(
                                color: widget.page == widget.page + index - 1
                                    ? AppColors.redColor
                                    : AppColors.mainColor,
                              ),
                            ),
                          ),
                        ),
                      );
                    } else {
                      return GestureDetector(
                        onTap: () {
                          widget.changePage(
                            index == 0 ? widget.page : widget.page + index,
                            widget.pageSize,
                          );
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          margin: const EdgeInsets.only(
                            right: 12,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: index == 0
                                ? Border.all(
                                    width: 2,
                                    color: AppColors.redColor,
                                  )
                                : null,
                          ),
                          child: Center(
                            child: Text(
                              index == 0
                                  ? "${widget.page}"
                                  : "${widget.page + index}",
                              style: AppTextStyle.buttonTextStyle.copyWith(
                                color: index == 0
                                    ? AppColors.redColor
                                    : AppColors.mainColor,
                              ),
                            ),
                          ),
                        ),
                      );
                    }
                  }
                  return Container();
                },
              ),
            ),
            const Spacer(),
            Text(
              "Показывать по:",
              style: AppTextStyle.buttonTextStyle.copyWith(
                color: AppColors.brownColor,
              ),
            ),
            const SizedBox(
              width: 13,
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  _showOverlay(context);
                },
                child: Container(
                  key: _key,
                  decoration: BoxDecoration(
                    color: AppColors.brownColor,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    child: Row(
                      children: [
                        Text(
                          '${widget.pageSize}',
                          style: AppTextStyle.buttonTextStyle,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        SvgPicture.asset(
                          'assets/icons/arrow-down.svg',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _showOverlay(BuildContext context) async {
    final renderBox = _key.currentContext!.findRenderObject() as RenderBox?;
    Offset offset = renderBox!.localToGlobal(Offset.zero);

    OverlayState overlayState = Overlay.of(context);
    if (overlayEntry != null) {
      overlayEntry!.remove();
      overlayEntry = null;
    } else {
      overlayEntry = OverlayEntry(
        builder: (context) {
          return Positioned(
            left: offset.dx,
            bottom: renderBox.size.height + 20,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.borderColor),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                children: List.generate(
                  4,
                  (index) => MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        widget.changePage(widget.page, values[index]);
                        overlayEntry!.remove();
                      },
                      child: Container(
                        width: 80,
                        height: 30,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(
                              color: AppColors.borderColor,
                              width: 1,
                            ),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            values[index].toString(),
                            style: AppTextStyle.buttonTextStyle.copyWith(
                              color: Colors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      );
      overlayState.insert(overlayEntry!);
    }
  }
}
