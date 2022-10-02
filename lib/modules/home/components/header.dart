import 'package:flutter/material.dart';
import 'package:movie_ticket/config/themes/app_text_style.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.only(top: 64 , left: 14 , right: 14),
        child: Row(
          children: [
            Expanded(
                child: Text(
                  'Find Your Best\nMovie',
                  style: AppTextStyle.instance.displayMedium,
                )),
            CircleAvatar(
              radius: size.height/24,
              backgroundImage: AssetImage('images/image1.jpg'),
            )
          ],
        ),
      );
  }
}