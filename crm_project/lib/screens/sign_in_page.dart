import 'package:crm_project/components/pacgages.dart';
import 'package:crm_project/screens/next_sign_in_page.dart';
import 'package:crm_project/screens/sign_up_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    bool value = false;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: FromLTRB.getEgdeInsets(22, 36, 23, 0),
          margin: FromLTRB.getEgdeInsets(33, 43, 0, 0),
          height: getUniqueHeight(641),
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
                "Continue with your account",
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
              Padding(
                padding: FromLTRB.getEgdeInsets(0, 38, 0, 9),
                child: Text(
                  "Password",
                  style: Textstyle.headline(
                      16, FontWeight.w400, Constcolors.kBlack),
                ),
              ),
              textfield("Enter your password", true),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          value: value,
                          onChanged: (e) => value = !value,
                        ),
                        Text(
                          "Remember me",
                          style: Textstyle.headline(
                              12, FontWeight.w300, Constcolors.kBlack),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    child: Text(
                      "Forgot Password ?",
                      style: Textstyle.headline(
                          12, FontWeight.w300, Constcolors.kDarkgrey),
                    ),
                  ),
                ],
              ),
              InkWell(
                child: blueButton("Login", 38),
                 onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const NextSignIn())),
              ),
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
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUp())),
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
