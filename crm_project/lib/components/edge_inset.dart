import 'package:crm_project/components/pacgages.dart';


class FromLTRB {
 static getEgdeInsets(double left, double top, double right, double bottom) {
    return EdgeInsets.fromLTRB(
      getUniqueWidth(left),
      getUniqueHeight(top),
      getUniqueWidth(right),
      getUniqueHeight(bottom),
    );
  }
}
