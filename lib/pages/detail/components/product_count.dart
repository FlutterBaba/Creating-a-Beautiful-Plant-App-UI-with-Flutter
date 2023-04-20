import 'package:flutter/material.dart';

import '../../../style/app_style.dart';

class ProductCount extends StatelessWidget {
  const ProductCount({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            FloatingActionButton.small(
              heroTag: null,
              backgroundColor: AppStyle.kIconColor,
              onPressed: () {},
              child: const Icon(Icons.remove, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "1",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            FloatingActionButton.small(
              onPressed: () {},
              heroTag: null,
              child: const Icon(Icons.add),
            ),
          ],
        ),
        const SizedBox(width: 20),
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "Add to Cart",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
