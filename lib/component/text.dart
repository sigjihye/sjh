import 'package:sigmodern/head.dart';
import '';

class SIGTextStyle {
  SIGTextStyle._();

  static TextStyle get extraText => TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: SIGColors.primColor_bkf,
  );
  static TextStyle get mainText => TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    color: SIGColors.primColor_bkf,
  );
  static TextStyle get subText => TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: SIGColors.primColor_bkf,
  );
  static TextStyle get highlightsText => TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: SIGColors.primColor_bkf,
  );
  static TextStyle get mediumText => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: SIGColors.primColor_bkf,
  );
  static TextStyle get smallText => TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    color: SIGColors.primColor_bkf,
  );
}