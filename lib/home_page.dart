import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class RXHomePag extends StatefulWidget {
  const RXHomePag({super.key});

  @override
  State<RXHomePag> createState() => _RXHomePagState();
}

class _RXHomePagState extends State<RXHomePag> {
  final List<String> images = [
    'assets/shouye/shouyeLB1.jpg',
    'assets/shouye/shouyeLB2.jpg',
    'assets/shouye/shouyeLB3.jpg',
  ];
  int _currentIndex = 0;

  
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          MyCarousel(context),
        ],
      ),
    );
  }

  Widget MyCarousel(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: images.length, 
          itemBuilder: (context, index, realIndex) {
            return Image.asset(
                images[index],
                fit: BoxFit.fill,
                height: double.infinity,
                width: double.infinity,
              );
          }, 
          options: CarouselOptions(
            // height: 208,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            pauseAutoPlayOnTouch: true,
            aspectRatio: 1.8,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            }
          ),
          carouselController: CarouselController(),
        ), 
        Positioned(
          bottom: 10,
          left: (screenWidth - 8 * images.length - 10 * (images.length - 1))/2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              images.length, 
              (index) => buildDot(index)),
          ),
        ),
      ],
    );
  }

  Widget buildDot(int index) {
    return Container(
      width: 8,
      height: 8,
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: index == _currentIndex ? Colors.blue.shade300 : Colors.white
      ),
    );
  }
}