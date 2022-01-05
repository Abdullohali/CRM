import 'package:crm_project/components/pacgages.dart';
import 'package:crm_project/screens/next_sign_in_page.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: FromLTRB.getEgdeInsets(23, 25, 24, 0),
            margin: FromLTRB.getEgdeInsets(32, 43, 0, 0),
            height: getUniqueHeight(757),
            width: getUniqueWidth(326),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Constcolors.kGrey)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome !",
                  style: GoogleFonts.poppins(
                      color: Constcolors.kBlack,
                      fontSize: getUniqueHeight(19),
                      fontWeight: FontWeight.w300),
                ),
                Padding(
                  padding: FromLTRB.getEgdeInsets(0, 10, 0, 3),
                  child: Text("Sign Up",
                      style: Textstyle.headline(
                          25, FontWeight.w500, Constcolors.kBlack)),
                ),
                Text(
                  "Create a new account",
                  style: Textstyle.headline(
                      16, FontWeight.w400, Constcolors.kBlack),
                ),
                Padding(
                  padding: FromLTRB.getEgdeInsets(0, 31, 0, 9),
                  child: Text(
                    "Email",
                    style: Textstyle.headline(
                        16, FontWeight.w400, Constcolors.kBlack),
                  ),
                ),
                textfield("Enter your email", false),
                Padding(
                  padding: FromLTRB.getEgdeInsets(0, 24, 0, 9),
                  child: Text(
                    "User name",
                    style: Textstyle.headline(
                        16, FontWeight.w400, Constcolors.kBlack),
                  ),
                ),
                textfield("Enter your user name", false),
                Padding(
                  padding: FromLTRB.getEgdeInsets(0, 24, 0, 9),
                  child: Text(
                    "Password",
                    style: Textstyle.headline(
                        16, FontWeight.w400, Constcolors.kBlack),
                  ),
                ),
                textfield("Enter your Password", true),
                Padding(
                  padding: FromLTRB.getEgdeInsets(0, 24, 0, 9),
                  child: Text(
                    "Confirm Password",
                    style: Textstyle.headline(
                        16, FontWeight.w400, Constcolors.kBlack),
                  ),
                ),
                textfield("Confirm your Password", true),
                InkWell(
                  child: blueButton("Register", 31),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const NextSignIn())),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an Account? ",
                      style: Textstyle.headline(
                          12, FontWeight.w300, Constcolors.kDarkgrey),
                    ),
                    InkWell(
                      child: Text(
                        "Register",
                        style: Textstyle.headline(
                            12, FontWeight.w600, Constcolors.kBlue),
                      ),
                      onTap: () => Navigator.pop(context),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
