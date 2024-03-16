import 'package:flutter/material.dart';


class TShadowStyle{
  static final textFieldShadow=BoxShadow(
    color: Colors.black.withOpacity(0.2),
    spreadRadius: 3,
    blurRadius: 2,
    offset:const Offset(4, 4),
  );

  static final buttonShadow=BoxShadow(
    color: Colors.black.withOpacity(0.2),
    spreadRadius: 5,
    blurRadius: 5,
    //offset:const Offset(4, 4),
  );
}