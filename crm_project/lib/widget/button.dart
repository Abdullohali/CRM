import 'package:crm_project/components/pacgages.dart';

Container blueButton(String txt,double top) {
  return Container(
    alignment: Alignment.center,
    margin: FromLTRB.getEgdeInsets(0, top, 0, 31),
    height: getUniqueHeight(57),
    width: getUniqueWidth(278),
    decoration: BoxDecoration(
      color: Constcolors.kBlue,
      borderRadius: BorderRadius.circular(6.0),
    ),
    child: Text(
      txt,
      style: Textstyle.headline(16, FontWeight.w500, Constcolors.kWhite),
    ),
  );
}
