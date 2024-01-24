import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class CarouselDek extends StatefulWidget {
  const CarouselDek({super.key});

  @override
  State<CarouselDek> createState() => _CarouselDekState();
}

class _CarouselDekState extends State<CarouselDek> {
  @override
  Widget build(BuildContext context) {
    double screenWidths = MediaQuery.of(context).size.width;
    return FlutterCarousel(
      options: CarouselOptions(
        height: 100,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 2),
        // autoPlayAnimationDuration: Duration(milliseconds: 20000),
        autoPlayAnimationDuration: Duration(milliseconds: 200),
        pauseAutoPlayOnTouch: true,
        // pauseAutoPlayInFiniteScroll: true,
        // pauseAutoPlayOnManualNavigate: true,
        showIndicator: false,
        enableInfiniteScroll: false,
        

      ),
      items: [
        'assets/images/hutao-gacha.png',
        'assets/images/hutao-gacha.png',
        'assets/images/hutao-gacha.png',
        'assets/images/hutao-gacha.png',
        'assets/images/hutao-gacha.png'
      ].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return 
            
            Container(
              width: screenWidths,
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              // margin: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(90.0),
                  
                ),
                
              ),
              child: 
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  child: Image.asset(
                    '$i',
                    fit: BoxFit.fill,
                    
                  ),
                ),
              

            );
            
          },
        );
      }).toList(),
    );
  }
}
