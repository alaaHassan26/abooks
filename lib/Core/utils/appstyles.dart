import 'package:booklyapp/Core/utils/size_config.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'GTSectra',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'GTSectra',
      fontWeight: FontWeight.w700,
    );
  }

  // static TextStyle styleBold16 = TextStyle(
  //   color: const Color(0xFF4EB7F2),
  //   fontSize: getResponsiveFontSize(fontSize: 16),
  //   fontFamily: 'GTSectra',
  //   fontWeight: FontWeight.w700,
  // );
  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'GTSectra',
      fontWeight: FontWeight.w500,
    );
  }

  // static TextStyle styleMedium16 = TextStyle(
  //   color: const Color(0xFF064061),
  //   fontSize: getResponsiveFontSize(fontSize: 16),
  //   fontFamily: 'GTSectra',
  //   fontWeight: FontWeight.w500,
  // );
  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'GTSectra',
      fontWeight: FontWeight.w500,
    );
  }

  // static TextStyle styleMedium20 = TextStyle(
  //   color: const Color(0xFFFFFFFF),
  //   fontSize: getResponsiveFontSize(fontSize: 20),
  //   fontFamily: 'GTSectra',
  //   fontWeight: FontWeight.w500,
  // );
  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF9B9B9B),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'GTSectra',
      fontWeight: FontWeight.w600,
    );
  }

  // static TextStyle styleSemiBold16 = TextStyle(
  //   color: const Color(0xFF064061),
  //   fontSize: getResponsiveFontSize(fontSize: 16),
  //   fontFamily: 'GTSectra',
  //   fontWeight: FontWeight.w600,
  // );
  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'GTSectra',
      fontWeight: FontWeight.w600,
    );
  }

  // static TextStyle styleSemiBold20 = TextStyle(
  //   color: const Color(0xFF064061),
  //   fontSize: getResponsiveFontSize(fontSize: 20),
  //   fontFamily: 'GTSectra',
  //   fontWeight: FontWeight.w600,
  // );
  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'GTSectra',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular14v2(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'GTSectra',
      fontWeight: FontWeight.w600,
    );
  }

  // static TextStyle styleRegular12 = TextStyle(
  //   color: const Color(0xFFAAAAAA),
  //   fontSize: getResponsiveFontSize(fontSize: 12),
  //   fontFamily: 'GTSectra',
  //   fontWeight: FontWeight.w400,
  // );
  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'GTSectra',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold22(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF9B9B9B),
      fontSize: getResponsiveFontSize(context, fontSize: 22),
      fontFamily: 'GTSectra',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold22nocolor(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 22),
      fontFamily: 'GTSectra',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold34(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 34),
      fontFamily: 'GTSectra',
      fontWeight: FontWeight.w600,
    );
  }

  // static TextStyle styleSemiBold24 = TextStyle(
  //   color: const Color(0xFF4EB7F2),
  //   fontSize: getResponsiveFontSize(fontSize: 24),
  //   fontFamily: 'GTSectra',
  //   fontWeight: FontWeight.w600,
  // );
  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'GTSectra',
      fontWeight: FontWeight.w400,
    );
  }

  // static TextStyle styleRegular14 = TextStyle(
  //   color: const Color(0xFFAAAAAA),
  //   fontSize: getResponsiveFontSize(fontSize: 14),
  //   fontFamily: 'GTSectra',
  //   fontWeight: FontWeight.w400,
  // );
  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'GTSectra',
      fontWeight: FontWeight.w600,
    );
  }
  // static TextStyle styleSemiBold18 = TextStyle(
  //   color: const Color(0xFFFFFFFF),
  //   fontSize: getResponsiveFontSize(fontSize: 18),
  //   fontFamily: 'GTSectra',
  //   fontWeight: FontWeight.w600,
  // );
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatecher = PlatformDispatcher.instance;
  // var physicalWidth = dispatecher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatecher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1040;
  } else {
    return width / 1920;
  }
}
