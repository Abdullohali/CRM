import 'package:crm_project/components/pacgages.dart';

TextFormField textfield(String txt, bool icon) {
  bool eye = true;
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      hintText: txt,
      hintStyle: Textstyle.headline(14, FontWeight.w300, Constcolors.kLigtGrey),
      suffixIcon: icon
          ? IconButton(
              onPressed: () {
                eye = !eye;
              },
              icon: eye
                  ? const Icon(
                      Icons.visibility,
                      color: Constcolors.kBlack,
                    )
                  : const Icon(
                      Icons.visibility_off,
                      color: Constcolors.kBlack,
                    ),
            )
          : null,
    ),
  );
}
