import 'package:flutter/material.dart';
import 'package:movie_ticket/config/themes/app_color.dart';
import 'package:movie_ticket/config/themes/app_text_style.dart';
class CategoryBar extends StatefulWidget {
  const CategoryBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<CategoryBar> createState() => _CategoryBarState();
}

class _CategoryBarState extends State<CategoryBar> {
  int selectedIndex = 0 ;
  List<Map> categories = [
    {'name': 'Máy ảnh'},
    {'name': 'Ống kính'},
    {'name': 'Phụ kiện'},
    {'name': 'Thẻ nhớ'},
    {'name': 'Pin + sạc'}
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.height/15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index)
          {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                margin: const EdgeInsets.only(left: 16),
                alignment: Alignment.center,
                width: widget.size.width/4,
                decoration: (selectedIndex == index)
                    ? BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                        colors: [
                          GradientPalette.lightBlue1,
                          GradientPalette.lightBlue2
                        ]
                    )
                ) : BoxDecoration(color: Colors.transparent),
                child: Text(
                  '${categories[index]['name']}',
                  style: AppTextStyle.instance.bodyMedium,
                ),
              ),
            );
          }),
    );
  }
}
