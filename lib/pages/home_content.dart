import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeContent extends StatelessWidget {
  HomeContent({Key? key}) : super(key: key);

  final List<String> imgList = [
    'assets/image1.jpg', // Verifique se esta imagem está no seu diretório de assets
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
            items: imgList.map((item) => Image.asset(item, fit: BoxFit.cover)).toList(),
          ),
        ),
      ],
    );
  }
}
