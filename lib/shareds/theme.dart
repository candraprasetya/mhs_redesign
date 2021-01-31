part of 'shareds.dart';

mixin colorku {
  static const Color primary = Color(0XFF6c5ce7);
  static const Color lightPrimary = Color(0XFFa29bfe);
  static const Color black = Color(0XFF222f3e);
  static const Color background = Color(0xFFFAFAFC);
  static const Color blueGrey = Color(0xFF778ca3);
  static const Color red = Color(0xFFee5253);
}

TextStyle amikomNavBar =
    GoogleFonts.poppins(fontWeight: FontWeight.w600, color: colorku.background);
TextStyle profileName = GoogleFonts.poppins(
    fontSize: 14, fontWeight: FontWeight.w600, color: colorku.blueGrey);
TextStyle profileNim = GoogleFonts.poppins(
    fontSize: 10, fontWeight: FontWeight.w400, color: colorku.blueGrey);
TextStyle buttonText = GoogleFonts.poppins(
    fontSize: 10, fontWeight: FontWeight.w500, color: Colors.white);
TextStyle headlinePage =
    GoogleFonts.poppins(fontWeight: FontWeight.w500, color: colorku.blueGrey);
TextStyle generalStyle = GoogleFonts.poppins(color: colorku.black);
