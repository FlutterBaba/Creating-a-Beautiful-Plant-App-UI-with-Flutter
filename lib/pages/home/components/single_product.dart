import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../data/data.dart';
import '../../../style/app_style.dart';
import '../../detail/detail_page.dart';

class SingleProduct extends StatefulWidget {
  final ProductModel productModel;
  const SingleProduct({super.key, required this.productModel});
  @override
  State<SingleProduct> createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          DetailPage.routeName,
          (route) => route.isFirst,
          arguments: widget.productModel,
        );
      },
      child: Container(
        padding: const EdgeInsets.only(left: 13, right: 14, top: 17),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      widget.productModel.image,
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                widget.productModel.title,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "\$${widget.productModel.price}",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              trailing: CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                child: const Icon(
                  Icons.favorite_outline_rounded,
                  color: AppStyle.kIconColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
