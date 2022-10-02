import 'package:flutter/material.dart';
import 'package:movie_ticket/config/themes/app_color.dart';
import 'package:movie_ticket/config/themes/app_text_style.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 24 , vertical: 24),
        child : SizedBox(
          height: size.height/15,
          child: Row(
            children: [
              Expanded(child: Container(
                height: size.height/15,
                decoration: BoxDecoration(
                    color: GradientPalette.lightBlue2,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 24),
                      child: Icon(
                        Icons.find_replace_outlined,
                        color: GradientPalette.lightBlue2,
                        size: 30,
                      ),
                    ),
                    Expanded(child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search Movie',
                          hintStyle: AppTextStyle.instance.bodyMedium
                      ),
                    ))
                  ],
                ),
              )),
              Container(
                margin: EdgeInsets.only(left: 16),
                width: size.height / 15 ,
                height: size.height / 15,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        GradientPalette.lightBlue1,
                        GradientPalette.lightBlue2
                      ]
                  ),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Icon(
                  Icons.find_replace_outlined,
                  color: DarkTheme.text,
                  size: 30,
                ),
              )
            ],
          ),
        )
    );
  }
}