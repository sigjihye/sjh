import 'package:sigmodern/head.dart';

class SIGButtonStyle {
  SIGButtonStyle._();

  // ElevatedButton
  static ButtonStyle get PrimElevBtn_l => ElevatedButton.styleFrom(
    primary: SIGColors.primColor_bkf,
    onPrimary: SIGColors.primColor_wf,
    padding: EdgeInsets.symmetric(horizontal: 16),
    minimumSize: Size(108, 48),
    fixedSize: Size.fromHeight(48),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    side: BorderSide(
      color:SIGColors.primColor_bkf,
    ),
    elevation: 0,
    shadowColor: Colors.transparent,
    disabledBackgroundColor: SIGColors.primColor_bk40,
    disabledForegroundColor: SIGColors.primColor_w7,
    textStyle: TextStyle(
      fontSize: 16,
    ),
    // disabledBackgroundColor: Opacity(opacity: 0.4),
  );
  static ButtonStyle get PrimElevBtn_m => ElevatedButton.styleFrom(
    primary: SIGColors.primColor_bkf,
    onPrimary: SIGColors.primColor_wf,
    padding: EdgeInsets.symmetric(horizontal: 14),
    minimumSize: Size(104, 40),
    fixedSize: Size.fromHeight(40),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    side: BorderSide(
      color:SIGColors.primColor_bkf,
    ),
    elevation: 0,
    shadowColor: Colors.transparent,
    disabledBackgroundColor: SIGColors.primColor_bk13,
    disabledForegroundColor: SIGColors.primColor_w7,
    textStyle: TextStyle(
      fontSize: 16,
    ),
  );
  static ButtonStyle get PrimElevBtn_s => ElevatedButton.styleFrom(
    primary: SIGColors.primColor_bkf,
    onPrimary: SIGColors.primColor_wf,
    padding: EdgeInsets.symmetric(horizontal: 12),
    minimumSize: Size(92, 32),
    fixedSize: Size.fromHeight(32),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    side: BorderSide(
      color:SIGColors.primColor_bkf,
    ),
    elevation: 0,
    shadowColor: Colors.transparent,
    disabledBackgroundColor: SIGColors.primColor_bk13,
    disabledForegroundColor: SIGColors.primColor_w7,
    textStyle: TextStyle(
      fontSize: 14,
    ),
  );
  static ButtonStyle get PrimIconBtn_l => ElevatedButton.styleFrom(
    primary: SIGColors.primColor_bkf,
    padding: EdgeInsets.all(15),
    minimumSize: Size(48, 48),
    fixedSize: Size.fromHeight(48),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    shadowColor: Colors.transparent,
    disabledBackgroundColor: SIGColors.primColor_bk40,
    disabledForegroundColor: SIGColors.primColor_w7,
    textStyle: TextStyle(
      fontSize: 16,
    ),
  );
  static ButtonStyle get PrimIconBtn_m => ElevatedButton.styleFrom(
    primary: SIGColors.primColor_bkf,
    padding: EdgeInsets.all(11),
    minimumSize: Size(40, 40),
    fixedSize: Size.fromHeight(40),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    shadowColor: Colors.transparent,
    disabledBackgroundColor: SIGColors.primColor_bk13,
    disabledForegroundColor: SIGColors.primColor_w7,
    textStyle: TextStyle(
      fontSize: 16,
    ),
  );
  static ButtonStyle get PrimIconBtn_s => ElevatedButton.styleFrom(
    primary: SIGColors.primColor_bkf,
    padding: EdgeInsets.all(8),
    minimumSize: Size(32, 32),
    fixedSize: Size.fromHeight(32),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    shadowColor: Colors.transparent,
    disabledBackgroundColor: SIGColors.primColor_bk13,
    disabledForegroundColor: SIGColors.primColor_w7,
    textStyle: TextStyle(
      fontSize: 14,
    ),
  );

  static ButtonStyle get scdElevBtn_l => ElevatedButton.styleFrom(
    primary: SIGColors.primColor_bk5,
    onPrimary: SIGColors.primColor_bkf,
    padding: EdgeInsets.symmetric(horizontal: 16),
    minimumSize: Size(108, 48),
    fixedSize: Size.fromHeight(48),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    elevation: 0,
    shadowColor: Colors.transparent,
    disabledForegroundColor: SIGColors.primColor_bk13,
    textStyle: TextStyle(
      fontSize: 16,
    ),
  );
  static ButtonStyle get scdElevBtn_m => ElevatedButton.styleFrom(
    primary: SIGColors.primColor_bk5,
    onPrimary: SIGColors.primColor_bkf,
    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 11),
    minimumSize: Size(104, 40),
    fixedSize: Size.fromHeight(40),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    elevation: 0,
    shadowColor: Colors.transparent,
    disabledForegroundColor: SIGColors.primColor_bk13,
    textStyle: TextStyle(
      fontSize: 16,
    ),
  );
  static ButtonStyle get scdElevBtn_s => ElevatedButton.styleFrom(
    primary: SIGColors.primColor_bk5,
    onPrimary: SIGColors.primColor_bkf,
    padding: EdgeInsets.symmetric(horizontal: 12),
    minimumSize: Size(92, 32),
    fixedSize: Size.fromHeight(32),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    elevation: 0,
    shadowColor: Colors.transparent,
    disabledForegroundColor: SIGColors.primColor_bk13,
    textStyle: TextStyle(
      fontSize: 14,
    ),
  );
  static ButtonStyle get scdIconBtn_l => ElevatedButton.styleFrom(
    primary: SIGColors.primColor_bk5,
    padding: EdgeInsets.all(15),
    minimumSize: Size(48, 48),
    fixedSize: Size.fromHeight(48),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    elevation: 0,
    shadowColor: Colors.transparent,
    disabledBackgroundColor: SIGColors.primColor_bk5,
    disabledForegroundColor: SIGColors.primColor_w7,
    textStyle: TextStyle(
      fontSize: 16,
    ),
  );
  static ButtonStyle get scdIconBtn_m => ElevatedButton.styleFrom(
    primary: SIGColors.primColor_bk5,
    padding: EdgeInsets.all(11),
    minimumSize: Size(40, 40),
    fixedSize: Size.fromHeight(40),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    elevation: 0,
    shadowColor: Colors.transparent,
    disabledBackgroundColor: SIGColors.primColor_bk5,
    disabledForegroundColor: SIGColors.primColor_w7,
    textStyle: TextStyle(
      fontSize: 16,
    ),
  );
  static ButtonStyle get scdIconBtn_s => ElevatedButton.styleFrom(
    primary: SIGColors.primColor_bk5,
    padding: EdgeInsets.all(8),
    minimumSize: Size(32, 32),
    fixedSize: Size.fromHeight(32),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    elevation: 0,
    shadowColor: Colors.transparent,
    disabledBackgroundColor: SIGColors.primColor_bk5,
    disabledForegroundColor: SIGColors.primColor_w7,
    textStyle: TextStyle(
      fontSize: 14,
    ),
  );

  static ButtonStyle get pcElevBtn_l => ElevatedButton.styleFrom(
    primary: SIGColors.pcColor_40,
    onPrimary: SIGColors.primColor_wf,
    padding: EdgeInsets.symmetric(horizontal: 16),
    minimumSize: Size(108, 48),
    fixedSize: Size.fromHeight(48),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    elevation: 0,
    shadowColor: Colors.transparent,
    disabledBackgroundColor: SIGColors.pcColor_40,
    disabledForegroundColor: SIGColors.primColor_w7,
    textStyle: TextStyle(
      fontSize: 16,
    ),
  );
  static ButtonStyle get pcElevBtn_m => ElevatedButton.styleFrom(
    primary: SIGColors.pcColor_40,
    onPrimary: SIGColors.primColor_wf,
    padding: EdgeInsets.symmetric(horizontal: 14),
    minimumSize: Size(104, 40),
    fixedSize: Size.fromHeight(40),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    elevation: 0,
    shadowColor: Colors.transparent,
    disabledBackgroundColor: SIGColors.pcColor_40,
    disabledForegroundColor: SIGColors.primColor_w7,
    textStyle: TextStyle(
      fontSize: 16,
    ),
  );
  static ButtonStyle get pcElevBtn_s => ElevatedButton.styleFrom(
    primary: SIGColors.pcColor_40,
    onPrimary: SIGColors.primColor_wf,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    minimumSize: Size(92, 32),
    fixedSize: Size.fromHeight(32),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    elevation: 0,
    shadowColor: Colors.transparent,
    disabledBackgroundColor: SIGColors.pcColor_40,
    disabledForegroundColor: SIGColors.primColor_w7,
    textStyle: TextStyle(
      fontSize: 14,
    ),
  );
  static ButtonStyle get pcIconBtn_l => ElevatedButton.styleFrom(
    primary: SIGColors.pcColor_f,
    padding: EdgeInsets.all(15),
    minimumSize: Size(48, 48),
    fixedSize: Size.fromHeight(48),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    elevation: 0,
    shadowColor: Colors.transparent,
    disabledBackgroundColor: SIGColors.pcColor_40,
    disabledForegroundColor: SIGColors.primColor_w7,
    textStyle: TextStyle(
      fontSize: 16,
    ),
  );
  static ButtonStyle get pcIconBtn_m => ElevatedButton.styleFrom(
    primary: SIGColors.pcColor_f,
    padding: EdgeInsets.all(11),
    minimumSize: Size(40, 40),
    fixedSize: Size.fromHeight(40),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    elevation: 0,
    shadowColor: Colors.transparent,
    disabledBackgroundColor: SIGColors.pcColor_40,
    disabledForegroundColor: SIGColors.primColor_w7,
    textStyle: TextStyle(
      fontSize: 16,
    ),
  );
  static ButtonStyle get pcIconBtn_s => ElevatedButton.styleFrom(
    primary: SIGColors.pcColor_f,
    padding: EdgeInsets.all(8),
    minimumSize: Size(32, 32),
    fixedSize: Size.fromHeight(32),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    elevation: 0,
    shadowColor: Colors.transparent,
    disabledBackgroundColor: SIGColors.pcColor_40,
    disabledForegroundColor: SIGColors.primColor_w7,
    textStyle: TextStyle(
      fontSize: 14,
    ),
  );

  // OutlinedButton
  static ButtonStyle get PrimOtlBtn_l => OutlinedButton.styleFrom(
    primary: SIGColors.primColor_bkf,
    padding: EdgeInsets.symmetric(horizontal: 16),
    minimumSize: Size(108, 48),
    fixedSize: Size.fromHeight(48),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    side: BorderSide(
      color:SIGColors.primColor_bkf,
    ),
    elevation: 0,
    disabledForegroundColor: SIGColors.primColor_bk13,
    backgroundColor: Colors.transparent,
    textStyle: TextStyle(
      fontSize: 16,
      color: SIGColors.primColor_bkf,
    ),
  );
  static ButtonStyle get PrimOtlBtn_m => OutlinedButton.styleFrom(
    primary: SIGColors.primColor_bkf,
    padding: EdgeInsets.symmetric(horizontal: 14),
    minimumSize: Size(104, 40),
    fixedSize: Size.fromHeight(40),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    side: BorderSide(
      color:SIGColors.primColor_bkf,
    ),
    elevation: 0,
    disabledForegroundColor: SIGColors.primColor_bk13,
    backgroundColor: Colors.transparent,
    textStyle: TextStyle(
      fontSize: 16,
    ),
  );
  static ButtonStyle get PrimOtlBtn_s => OutlinedButton.styleFrom(
    primary: SIGColors.primColor_bkf,
    padding: EdgeInsets.symmetric(horizontal: 12),
    minimumSize: Size(92, 32),
    fixedSize: Size.fromHeight(32),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    side: BorderSide(
      color:SIGColors.primColor_bkf,
    ),
    elevation: 0,
    disabledForegroundColor: SIGColors.primColor_bk13,
    backgroundColor: Colors.transparent,
    textStyle: TextStyle(
      fontSize: 14,
    ),
  );
  static ButtonStyle get PrimIconOtlBtn_l => OutlinedButton.styleFrom(
    primary: SIGColors.primColor_bkf,
    onSurface: SIGColors.primColor_bk13,
    padding: EdgeInsets.all(15),
    minimumSize: Size(48, 48),
    fixedSize: Size.fromHeight(48),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    side: BorderSide(
      color:SIGColors.primColor_bkf,
    ),
    elevation: 0,
    disabledForegroundColor: SIGColors.primColor_bk13,
    backgroundColor: Colors.transparent,
  );
  static ButtonStyle get PrimIconOtlBtn_m => OutlinedButton.styleFrom(
    primary: SIGColors.primColor_bkf,
    onSurface: SIGColors.primColor_bk13,
    padding: EdgeInsets.all(11),
    minimumSize: Size(40, 40),
    fixedSize: Size.fromHeight(40),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    side: BorderSide(
      color:SIGColors.primColor_bkf,
    ),
    elevation: 0,
    disabledForegroundColor: SIGColors.primColor_bk13,
    backgroundColor: Colors.transparent,
  );
  static ButtonStyle get PrimIconOtlBtn_s => OutlinedButton.styleFrom(
    primary: SIGColors.primColor_bkf,
    onSurface: SIGColors.primColor_bk13,
    padding: EdgeInsets.all(8),
    minimumSize: Size(32, 32),
    fixedSize: Size.fromHeight(32),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    side: BorderSide(
      color:SIGColors.primColor_bkf,
    ),
    elevation: 0,
    disabledForegroundColor: SIGColors.primColor_bk13,
    backgroundColor: Colors.transparent,
  );

  static ButtonStyle get scdOtlBtn_l => OutlinedButton.styleFrom(
    primary: SIGColors.primColor_bkf,
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
    minimumSize: Size(108, 48),
    fixedSize: Size.fromHeight(48),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    side: BorderSide(
      color: SIGColors.primColor_bk5,
    ),
    elevation: 0,
    disabledForegroundColor: SIGColors.primColor_bk13,
    backgroundColor: Colors.transparent,
    textStyle: TextStyle(
      fontSize: 16,
      color: SIGColors.primColor_bkf,
    ),
  );
  static ButtonStyle get scdOtlBtn_m => OutlinedButton.styleFrom(
    primary: SIGColors.primColor_bkf,
    padding: EdgeInsets.symmetric(horizontal: 14),
    minimumSize: Size(104, 40),
    fixedSize: Size.fromHeight(40),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    side: BorderSide(
      color:SIGColors.primColor_bk5,
    ),
    elevation: 0,
    disabledForegroundColor: SIGColors.primColor_bk13,
    backgroundColor: Colors.transparent,
    textStyle: TextStyle(
      fontSize: 16,
    ),
  );
  static ButtonStyle get scdOtlBtn_s => OutlinedButton.styleFrom(
    primary: SIGColors.primColor_bkf,
    padding: EdgeInsets.symmetric(horizontal: 12),
    minimumSize: Size(92, 32),
    fixedSize: Size.fromHeight(32),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    side: BorderSide(
      color:SIGColors.primColor_bk5,
    ),
    elevation: 0,
    disabledForegroundColor: SIGColors.primColor_bk13,
    backgroundColor: Colors.transparent,
    textStyle: TextStyle(
      fontSize: 14,
    ),
  );
  static ButtonStyle get scdIconOtlBtn_l => OutlinedButton.styleFrom(
    primary: SIGColors.primColor_bk13,
    onSurface: SIGColors.primColor_bk13,
    padding: EdgeInsets.all(15),
    minimumSize: Size(48, 48),
    fixedSize: Size.fromHeight(48),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    side: BorderSide(
      color:SIGColors.primColor_bkf,
    ),
    elevation: 0,
    disabledForegroundColor: SIGColors.primColor_bk13,
    backgroundColor: Colors.transparent,
  );
  static ButtonStyle get scdIconOtlBtn_m => OutlinedButton.styleFrom(
    primary: SIGColors.primColor_bk13,
    onSurface: SIGColors.primColor_bk13,
    padding: EdgeInsets.all(11),
    minimumSize: Size(40, 40),
    fixedSize: Size.fromHeight(40),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    side: BorderSide(
      color:SIGColors.primColor_bkf,
    ),
    elevation: 0,
    disabledForegroundColor: SIGColors.primColor_bk13,
    backgroundColor: Colors.transparent,
  );
  static ButtonStyle get scdIconOtlBtn_s => OutlinedButton.styleFrom(
    primary: SIGColors.primColor_bk13,
    onSurface: SIGColors.primColor_bk13,
    padding: EdgeInsets.all(8),
    minimumSize: Size(32, 32),
    fixedSize: Size.fromHeight(32),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    side: BorderSide(
      color:SIGColors.primColor_bkf,
    ),
    elevation: 0,
    disabledForegroundColor: SIGColors.primColor_bk13,
    backgroundColor: Colors.transparent,
  );

  static ButtonStyle get pcOtlBtn_l => OutlinedButton.styleFrom(
    primary: SIGColors.pcColor_f,
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
    minimumSize: Size(108, 48),
    fixedSize: Size.fromHeight(48),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    side: BorderSide(
      color: SIGColors.pcColor_f,
    ),
    elevation: 0,
    disabledForegroundColor: SIGColors.pcColor_40,
    backgroundColor: Colors.transparent,
    textStyle: TextStyle(
      fontSize: 16,
      color: SIGColors.pcColor_f,
    ),
  );
  static ButtonStyle get pcOtlBtn_m => OutlinedButton.styleFrom(
    primary: SIGColors.pcColor_f,
    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 11),
    minimumSize: Size(104, 40),
    fixedSize: Size.fromHeight(40),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    side: BorderSide(
      color:SIGColors.pcColor_f,
    ),
    elevation: 0,
    disabledForegroundColor: SIGColors.pcColor_40,
    backgroundColor: Colors.transparent,
    textStyle: TextStyle(
      fontSize: 16,
      color: SIGColors.pcColor_f,
    ),
  );
  static ButtonStyle get pcOtlBtn_s => OutlinedButton.styleFrom(
    primary: SIGColors.pcColor_f,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    minimumSize: Size(92, 32),
    fixedSize: Size.fromHeight(32),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    side: BorderSide(
      color:SIGColors.pcColor_f,
    ),
    elevation: 0,
    disabledForegroundColor: SIGColors.pcColor_40,
    backgroundColor: Colors.transparent,
    textStyle: TextStyle(
      fontSize: 14,
      color: SIGColors.pcColor_f,
    ),
  );
  static ButtonStyle get pcIconOtlBtn_l => OutlinedButton.styleFrom(
    primary: SIGColors.pcColor_f,
    onSurface: SIGColors.primColor_bk13,
    padding: EdgeInsets.all(15),
    minimumSize: Size(48, 48),
    fixedSize: Size.fromHeight(48),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    side: BorderSide(
      color:SIGColors.pcColor_f,
    ),
    elevation: 0,
    disabledForegroundColor: SIGColors.primColor_bk13,
    backgroundColor: Colors.transparent,
  );
  static ButtonStyle get pcIconOtlBtn_m => OutlinedButton.styleFrom(
    primary: SIGColors.pcColor_f,
    onSurface: SIGColors.pcColor_40,
    padding: EdgeInsets.all(11),
    minimumSize: Size(40, 40),
    fixedSize: Size.fromHeight(40),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    side: BorderSide(
      color:SIGColors.pcColor_f,
    ),
    elevation: 0,
    disabledForegroundColor: SIGColors.primColor_bk13,
    backgroundColor: Colors.transparent,
  );
  static ButtonStyle get pcIconOtlBtn_s => OutlinedButton.styleFrom(
    primary: SIGColors.pcColor_f,
    onSurface: SIGColors.pcColor_40,
    padding: EdgeInsets.all(8),
    minimumSize: Size(32, 32),
    fixedSize: Size.fromHeight(32),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    side: BorderSide(
      color:SIGColors.pcColor_f,
    ),
    elevation: 0,
    disabledForegroundColor: SIGColors.primColor_bk13,
    backgroundColor: Colors.transparent,
  );

  // TextButton
  static ButtonStyle get PrimtxtBtn => TextButton.styleFrom(
    primary: SIGColors.primColor_bkf,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 11),
    minimumSize: Size(75, 40),
    fixedSize: Size.fromHeight(40),
    textStyle: TextStyle(
      fontSize: 16,
    ),
    elevation: 0,
  );
  static ButtonStyle get PrimtxtBtn_s => TextButton.styleFrom(
    primary: SIGColors.primColor_bkf,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 11),
    minimumSize: Size(68, 40),
    fixedSize: Size.fromHeight(40),
    textStyle: TextStyle(
      fontSize: 14,
    ),
    elevation: 0,
  );
  static ButtonStyle get PrimtxtBtn_udl => TextButton.styleFrom(
    primary: SIGColors.primColor_bkf,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 11),
    minimumSize: Size(75, 40),
    fixedSize: Size.fromHeight(40),
    textStyle: TextStyle(
      fontSize: 16,
      decoration: TextDecoration.underline,
    ),
    elevation: 0,
  );
  static ButtonStyle get PrimtxtBtn_udl_s => TextButton.styleFrom(
    primary: SIGColors.primColor_bkf,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 11),
    minimumSize: Size(68, 40),
    fixedSize: Size.fromHeight(40),
    textStyle: TextStyle(
      fontSize: 14,
      decoration: TextDecoration.underline,
    ),
    elevation: 0,
  );

  static ButtonStyle get scdBtn => TextButton.styleFrom(
    primary: SIGColors.primColor_bk40,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 11),
    minimumSize: Size(75, 40),
    fixedSize: Size.fromHeight(40),
    textStyle: TextStyle(
      fontSize: 16,
    ),
    elevation: 0,
  );
  static ButtonStyle get scdBtn_s => TextButton.styleFrom(
    primary: SIGColors.primColor_bk40,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 11),
    minimumSize: Size(68, 40),
    fixedSize: Size.fromHeight(40),
    textStyle: TextStyle(
      fontSize: 14,
    ),
    elevation: 0,
  );
  static ButtonStyle get scdBtn_udl => TextButton.styleFrom(
    primary: SIGColors.primColor_bk40,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 11),
    minimumSize: Size(75, 40),
    fixedSize: Size.fromHeight(40),
    textStyle: TextStyle(
      fontSize: 16,
      decoration: TextDecoration.underline,
    ),
    elevation: 0,
  );
  static ButtonStyle get scdBtn_udl_s => TextButton.styleFrom(
    primary: SIGColors.primColor_bk40,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 11),
    minimumSize: Size(68, 40),
    fixedSize: Size.fromHeight(40),
    disabledForegroundColor: SIGColors.primColor_bk13,
    textStyle: TextStyle(
      fontSize: 14,
      decoration: TextDecoration.underline,
    ),
    elevation: 0,
  );

  static ButtonStyle get pcBtn => TextButton.styleFrom(
    primary: SIGColors.pcColor_f,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 11),
    minimumSize: Size(75, 40),
    fixedSize: Size.fromHeight(40),
    disabledForegroundColor: SIGColors.pcColor_40,
    textStyle: TextStyle(
      fontSize: 16,
    ),
    elevation: 0,
  );
  static ButtonStyle get pcBtn_s => TextButton.styleFrom(
    primary: SIGColors.pcColor_f,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 11),
    minimumSize: Size(68, 40),
    fixedSize: Size.fromHeight(40),
    disabledForegroundColor: SIGColors.pcColor_40,
    textStyle: TextStyle(
      fontSize: 14,
    ),
    elevation: 0,
  );
  static ButtonStyle get pcBtn_udl => TextButton.styleFrom(
    primary: SIGColors.pcColor_f,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 11),
    minimumSize: Size(75, 40),
    fixedSize: Size.fromHeight(40),
    disabledForegroundColor: SIGColors.pcColor_40,
    textStyle: TextStyle(
      fontSize: 16,
      decoration: TextDecoration.underline,
    ),
    elevation: 0,
  );
  static ButtonStyle get pcBtn_udl_s => TextButton.styleFrom(
    primary: SIGColors.pcColor_f,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 11),
    minimumSize: Size(68, 40),
    fixedSize: Size.fromHeight(40),
    disabledForegroundColor: SIGColors.pcColor_40,
    textStyle: TextStyle(
      fontSize: 14,
      decoration: TextDecoration.underline,
    ),
    elevation: 0,
  );
}