import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

  Widget productVariation(Color yourColor) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.deepOrange, width: 1.5),
          boxShadow: [
            BoxShadow(
              color: yourColor,
              spreadRadius: 2,
              blurRadius: 20,
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(12)),
      child: Image.asset('assets/images/shoes.png'),
    );
  }