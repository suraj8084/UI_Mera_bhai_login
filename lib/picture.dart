import 'package:flutter/material.dart';
import 'package:login_bank/constrains/constrains.dart';

class Picture extends StatelessWidget {
  const Picture({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 220,

      decoration: BoxDecoration(
        color: primary,
      ),

      child: Stack(
        alignment: Alignment.center,

        clipBehavior: Clip.none,
        children: [
          _shape(160, Color(0xffF2F1F9)),

          Container(
            height: 100,
            width: 50,
            decoration: BoxDecoration(color: Color(0xff5655B9),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: primary,
              width: 3
                )
             ),
          ),

          Positioned(
            top: 60,
            child: Container(
              height: 4,
              width: 25,
              decoration: BoxDecoration(color: primary,
              borderRadius: BorderRadius.circular(8),
               ),
            ),
          ),

          Icon(Icons.person_outline_outlined,size: 35,color: primary,),

          Positioned(
            top: 20,
            left: 60,
            child: _shape(10, blueBank)
          ),

          Positioned(
            top: 40,
            right: 0,
            child: _shape(30, Color(0xffFF4267))),

          Positioned(
            left: 37,
            bottom: 52,
            child: _shape(20,Color(0xffFFAF2A),),
          ),

          Positioned(
            right: 40,
            bottom: 40,
            child: _shape(10, Color(0xff0890FE),)),

          Positioned(
            bottom: 120,
            left: 0,
            child: _shape(10, Color(0xff52D5BA),),
          ),
        ],
      ),
    );
  }
}

Widget _shape(double size, Color color) {
  return Container(
    width: size,
    height: size,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: color
    ),
  );
}
