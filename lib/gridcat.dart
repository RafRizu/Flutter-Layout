import 'package:flutter/material.dart';

class GridCat extends StatelessWidget {
  const GridCat({super.key});

  @override
  Widget build(BuildContext context) {
    List catNames = [
      'Category',
      'Category',
      'Category',
      'Category',
      'Category',
      'Category',
      'Category',
      'More',
    ];

    List<Icon> catIcon = [
      Icon(Icons.access_alarm_outlined, color: Colors.white, size: 20,),
      Icon(Icons.access_alarm_outlined, color: Colors.white, size: 20,),
      Icon(Icons.access_alarm_outlined, color: Colors.white, size: 20,),
      Icon(Icons.access_alarm_outlined, color: Colors.white, size: 20,),
      Icon(Icons.access_alarm_outlined, color: Colors.white, size: 20,),
      Icon(Icons.access_alarm_outlined, color: Colors.white, size: 20,),
      Icon(Icons.access_alarm_outlined, color: Colors.white, size: 20,),
      Icon(Icons.access_alarm_outlined, color: Colors.white, size: 20,),
    ];

    return Column(
      children: [
        GridView.builder(
            itemCount: catNames.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 1 / 1,
            ),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.rectangle,
                    ),
                    child: Center(child: catIcon[index],),
                  ),
                  SizedBox(height: 10,),
                  Text(catNames[index],style: TextStyle(color: Colors.black),),
                ],
              );
            })
      ],
    );
  }
}
