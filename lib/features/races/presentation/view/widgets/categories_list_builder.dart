import 'package:flutter/material.dart';
import 'package:pigeon/features/constant.dart';
import 'package:pigeon/features/races/presentation/view/widgets/category_list_item.dart';

class CategoriesListBuilder extends StatefulWidget {
  CategoriesListBuilder({super.key});

  int selectIndex = 0;

  final List<String> categoryList = [
    'All',
    'Upcoming',
    'Active races',
    'Finished races',
  ];

  @override
  State<CategoriesListBuilder> createState() => _CategoriesBuilderState();
}

class _CategoriesBuilderState extends State<CategoriesListBuilder> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.028,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categoryList.length,
        itemBuilder: (context, index) => CategoryListItem(
          onTap: () {
            setState(() {
              widget.selectIndex = index;
            });
          },
          text: widget.categoryList[index],
          selectIndex: widget.selectIndex,
          index: index,
        ),
      ),
    );
  }
}
