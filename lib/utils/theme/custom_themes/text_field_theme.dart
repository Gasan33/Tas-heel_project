import 'package:flutter/material.dart';
import 'package:tshil_project/utils/constants/colors.dart';

class TTextFormFieldTheme{
  TTextFormFieldTheme._();

/// Customizable Light TextFormField Theme
 static InputDecorationTheme lightTextFormFieldTheme=InputDecorationTheme(

   errorMaxLines: 3,
   prefixIconColor: Colors.grey,
   suffixIconColor: Colors.grey,


   labelStyle: const TextStyle().copyWith(fontSize: 14.0,color: Colors.black),
   hintStyle: const TextStyle().copyWith(fontSize: 14.0,color: Colors.black),
   errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
   floatingLabelStyle: const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
   filled: true,
   fillColor: TColors.white,

   border: const OutlineInputBorder().copyWith(
     borderRadius: BorderRadius.circular(32.0),
     borderSide: const BorderSide(width: 1,color: Colors.grey,),

   ),
   enabledBorder: const OutlineInputBorder().copyWith(
     borderRadius: BorderRadius.circular(32.0),
     borderSide: BorderSide.none,
   ),
   focusedBorder: const OutlineInputBorder().copyWith(
     borderRadius: BorderRadius.circular(32.0),
     borderSide: BorderSide.none,
   ),
   errorBorder: const OutlineInputBorder().copyWith(
     borderRadius: BorderRadius.circular(32.0),
     borderSide: BorderSide.none,
   ),
   focusedErrorBorder: const OutlineInputBorder().copyWith(
     borderRadius: BorderRadius.circular(32.0),
     borderSide: BorderSide.none,
   ),
 );

  /// Customizable Dark TextFormField Theme
  static InputDecorationTheme darkTextFormFieldTheme=InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,

    filled: true,
    fillColor: TColors.white,
    labelStyle: const TextStyle().copyWith(fontSize: 14.0,color: Colors.white),
    hintStyle: const TextStyle().copyWith(fontSize: 14.0,color: Colors.white),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(32.0),
      borderSide: BorderSide.none,
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(32.0),
      borderSide: BorderSide.none,
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(32.0),
      borderSide: BorderSide.none,
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(32.0),
      borderSide: BorderSide.none,
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(32.0),
      borderSide: BorderSide.none,
    ),
  );
}