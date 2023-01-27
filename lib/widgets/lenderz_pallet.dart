import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor myColors = const MaterialColor(
    0xff141743, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xff141743), //10%
      100: const Color(0xff141743), //20%
      200: const Color(0xff141743), //30%
      300: const Color(0xff141743), //40%
      400: const Color(0xff141743), //50%
      500: const Color(0xff141743), //60%
      600: const Color(0xff141743), //70%
      700: const Color(0xff141743), //80%
      800: const Color(0xff141743), //90%
      900: const Color(0xff141743), //100%
    }
  );

  static const MaterialColor backColors =
     MaterialColor(0xff202859, <int, Color>{
        50:  Color(0xff202859),
        100: Color(0xff202859),
        200:  Color(0xff202859),
        300:  Color(0xff202859),
        400: Color(0xff202859),
        500: Color(0xff202859),
        600: Color(0xff202859),
        700: Color(0xff202859),
        800: Color(0xff202859),
        900: Color(0xff202859),

      }
      );


      static const MaterialColor mybuttonColors =
      const MaterialColor(0xffC44707, const <int, Color>{
        50: const Color(0xffC44707),
        100: const Color(0xffC44707),
        200: const Color(0xffC44707),
        300: const Color(0xffC44707),
        400: const Color(0xffC44707),
        500: const Color(0xffC44707),
        600: const Color(0xffC44707),
        700: const Color(0xffC44707),
        800: const Color(0xffC44707),
        900: const Color(0xffC44707),

      }
      );


} //color library


