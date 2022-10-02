import 'package:flutter/material.dart';
import 'package:movie_ticket/config/themes/app_color.dart';
import 'package:movie_ticket/config/themes/app_text_style.dart';
import 'package:movie_ticket/config/themes/text_style.dart';
import 'package:movie_ticket/models/movie.dart';
import 'package:movie_ticket/modules/home/components/category_bar.dart';
import 'package:movie_ticket/modules/home/components/coming_soon.dart';
import 'package:movie_ticket/modules/home/components/header.dart';
import 'package:movie_ticket/modules/home/components/promo.dart';
import 'package:movie_ticket/modules/home/components/search_bar.dart';
import 'package:movie_ticket/modules/home/components/slider_bar.dart';
class HomePage extends StatelessWidget    {

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            HomeHeader(size: size),
            // Search Bar
            SearchBar(size: size),
            // Category Bar
            CategoryBar(size: size),
            // Title
            buildTitle('Nox Playing'),
            // Slider
            SliderBar(size: size),
            // Title
            buildTitle('Coming Soon'),
            // Coming Soon
            ComingSoon(),
            // Promo
            buildTitle('Promo'),
            //
            Promo(size: size),

            Promo(size: size),

            Promo(size: size)


            // Slider
          ],
        ),
      ),
    );
  }

  Padding buildTitle(String content) {
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 10),
              child: Text(content, style: AppTextStyle.instance.titleMedium),
          );
  }
}











