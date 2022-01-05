import 'package:crm_project/components/pacgages.dart';

class NextSignIn extends StatelessWidget {
  const NextSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: FromLTRB.getEgdeInsets(22, 36, 23, 0),
          margin: FromLTRB.getEgdeInsets(33, 43, 0, 0),
          height: getUniqueHeight(449),
          width: getUniqueWidth(324),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Constcolors.kGrey)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome again !",
                style: GoogleFonts.poppins(
                    color: Constcolors.kBlack,
                    fontSize: getUniqueHeight(19),
                    fontWeight: FontWeight.w300),
              ),
              Padding(
                padding: FromLTRB.getEgdeInsets(0, 26, 0, 5),
                child: Text("Sign in",
                    style: Textstyle.headline(
                        25, FontWeight.w500, Constcolors.kBlack)),
              ),
              Text(
                "We will send a code to your email",
                style:
                    Textstyle.headline(16, FontWeight.w400, Constcolors.kBlack),
              ),
              Padding(
                padding: FromLTRB.getEgdeInsets(0, 42, 0, 9),
                child: Text(
                  "Email",
                  style: Textstyle.headline(
                      16, FontWeight.w400, Constcolors.kBlack),
                ),
              ),
              textfield("Enter your email", false),
              blueButton("Login", 31),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an Account? ",
                    style: Textstyle.headline(
                        12, FontWeight.w300, Constcolors.kDarkgrey),
                  ),
                  InkWell(
                    child: Text(
                      "Register",
                      style: Textstyle.headline(
                          12, FontWeight.w600, Constcolors.kBlue),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
