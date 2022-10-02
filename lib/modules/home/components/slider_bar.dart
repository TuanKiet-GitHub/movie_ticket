import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_ticket/config/themes/app_color.dart';
import 'package:movie_ticket/config/themes/app_text_style.dart';
import 'package:movie_ticket/config/themes/text_style.dart';
import 'package:movie_ticket/models/movie.dart';
import 'package:movie_ticket/widgets/stateless/stars_bar.dart';

class SliderBar extends StatelessWidget {
  const SliderBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(items: movies
        .map((e) => Builder(builder: (context) {
      return Stack(
        children: [
          Container(
              width: size.width,
              padding: const EdgeInsets.only(left: 10 , bottom: 24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image:  AssetImage(e.posterImg),
                ),
              )
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      GradientPalette.black1,
                      GradientPalette.black2
                    ]
                )
            ),
            child: Column(
              mainAxisAlignment : MainAxisAlignment.end,
              children: [
                Container(
                  width: size.width,
                  padding: EdgeInsets.only(bottom: 8 , left: 8),
                  child: Text(
                    e.title,
                    style: AppTextStyle.instance.titleMedium,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 8, bottom: 8),
                  child: Row(
                    children: const [
                      StarsBar(),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      );
    }
    )).toList(),
        options: CarouselOptions(autoPlay: true , enlargeCenterPage: true));
  }
}