import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CSlider(),
  ));
}

class CSlider extends StatelessWidget {
  const CSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
        items: [
          Image.network(
              'https://plus.unsplash.com/premium_photo-1674581220087-d4ee95c5cc3f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60'),
          Image.network(
              'https://images.unsplash.com/photo-1691852969024-42084ee89525?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'),
          Image.network(
              'https://images.unsplash.com/photo-1691944435602-a219037ac417?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60'),
          Image.network(
              'https://images.unsplash.com/photo-1691860305089-9a2566296202?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
        ],
        options: CarouselOptions(
            initialPage: 0,
            height: 500,
            aspectRatio: 16 / 9,
            viewportFraction: .7,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 2),
            autoPlayCurve: Curves.easeInSine,
            enlargeCenterPage: true,
            enlargeFactor: .3,
            scrollDirection: Axis.horizontal),
      ),
    );
  }
}
