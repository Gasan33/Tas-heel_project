import 'package:flutter/material.dart';

class TElevatedButtonTheme{
  TElevatedButtonTheme._();

/// Customizable Light ElevatedButton Theme
 static final lightElevatedButtonTheme = ElevatedButtonThemeData(
   style: ElevatedButton.styleFrom(
     elevation: 0,
     foregroundColor: Colors.white,
     backgroundColor: Colors.white,
     disabledForegroundColor: Colors.grey,
     disabledBackgroundColor: Colors.grey,
     side:   BorderSide.none,
     padding: const EdgeInsets.symmetric(vertical: 18.0),
     textStyle: const TextStyle(fontSize: 16.0,color: Colors.grey,fontWeight: FontWeight.w600),
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
   ),
 );

  /// Customizable Dark ElevatedButton Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.white,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side:   BorderSide.none,
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      textStyle: const TextStyle(fontSize: 16.0,color: Colors.grey,fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
    ),
  );
}