import 'package:crm_project/components/pacgages.dart';


class Textstyle{
  static headline(double size, FontWeight weight, Color color) {
    return GoogleFonts.poppins(
        fontStyle: FontStyle.normal,
        fontSize: getUniqueHeight(size),
        fontWeight: weight,
        color: color);
  }
}
