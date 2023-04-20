import 'package:flutter/material.dart';

import '../../animations/fade_animation.dart';
import '../../animations/shake_transition.dart';
import '../../data/data.dart';
import '../../style/app_style.dart';
import 'components/product_count.dart';

class DetailPage extends StatelessWidget {
  static const String routeName = '/detail-page';

  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductModel productModel =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    Size size = MediaQuery.of(context).size;
    double imageHeight = size.height * 0.6;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Image Area ..
          Positioned(
            height: imageHeight,
            left: 0,
            right: 0,
            child: FadeAnimation(
              child: Image.asset(
                productModel.image,
                fit: BoxFit.cover,
              ),
            ),
          ),

          /// Details Area..
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: imageHeight / 100 * 90,
            child: ShakeTransition(
              axis: Axis.vertical,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ShakeTransition(
                          axis: Axis.vertical,
                          child: Text(
                            productModel.title,
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(height: 10),
                        ShakeTransition(
                          axis: Axis.vertical,
                          child: Text(
                            "\$${productModel.price}",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppStyle.primarySwatch,
                                ),
                          ),
                        ),
                      ],
                    ),
                    ShakeTransition(
                      axis: Axis.vertical,
                      child: Text(
                        productModel.dec,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: const Color(0xff555050),
                              height: 1.5,
                            ),
                      ),
                    ),
                    const ShakeTransition(
                      child: ProductCount(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: size.height / 100 * 5,
            right: 0,
            child: const ListTile(
              leading: BackButton(),
              trailing: Icon(Icons.favorite_outline),
            ),
          ),
        ],
      ),
    );
  }
}
