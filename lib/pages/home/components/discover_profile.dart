import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../animations/fade_animation.dart';
import '../../../style/app_style.dart';

class DiscoverAndProfile extends StatelessWidget {
  const DiscoverAndProfile({super.key});
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ListTile(
        contentPadding: const EdgeInsets.all(24),
        leading: FadeAnimation(
          child: Text(
            "Discover",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        trailing: FadeAnimation(
          child: CupertinoButton(
            padding: EdgeInsets.zero,
            child: const CircleAvatar(
              backgroundImage: AssetImage(AppStyle.profile),
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
