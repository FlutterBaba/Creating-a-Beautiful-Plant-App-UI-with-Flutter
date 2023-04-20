import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../components/bottom_bar.dart';
import '../../../animations/fade_animation.dart';
import '../../../style/app_style.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      child: CupertinoButton(
        onPressed: () => Navigator.of(context)
            .pushNamedAndRemoveUntil(BottomBar.routeName, (route) => false),
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width / 100 * 80,
          decoration: BoxDecoration(
            color: AppStyle.kIconColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(15),
          ),
          height: 48,
          child: Text(
            "Get Started",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
