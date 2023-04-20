import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../style/app_style.dart';

class ProductSearch extends StatelessWidget {
  const ProductSearch({super.key});
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 34, right: 10),
              padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: CupertinoTextField(
                placeholder: 'Search',
                textCapitalization: TextCapitalization.sentences,
                suffix: SvgPicture.asset(AppStyle.searchIcon),
                decoration: null,
              ),
            ),
          ),
          CupertinoButton(
            onPressed: () {},
            child: SvgPicture.asset(AppStyle.menuIcon),
          )
        ],
      ),
    );
  }
}
