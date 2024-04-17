import 'package:flutter/material.dart';
import 'package:login_signup_flow_app/screens/create_password_screen.dart';
import 'package:pinput/pinput.dart';
import 'package:login_signup_flow_app/customtextfield.dart';

class OTPScreen extends StatelessWidget {
  OTPScreen({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    PinTheme defaultTheme = PinTheme(
      height: 60,
      width: 50,
      textStyle: const TextStyle(
        fontSize: 30,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F8F9),
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    );
    PinTheme focusedTheme = PinTheme(
      height: 60,
      width: 50,
      textStyle: const TextStyle(
        fontSize: 30,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.deepOrange,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Text(
                  "OTP Verification",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Text(
                "Enter the verification code we just sent on your email address.",
                style: TextStyle(
                  color: Color(0xFF8391A1),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Pinput(
                    defaultPinTheme: defaultTheme,
                    focusedPinTheme: focusedTheme,
                    submittedPinTheme: focusedTheme,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              child: Row(
                children: [
                  myDefualtFieldBotton(
                    myPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreatePasswordScreen(),
                          ));
                    },
                    myData: 'Sign up',
                  ),
                  // Expanded(
                  //   child: MaterialButton(
                  //     color: const Color(0xFF1E232C),
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(8),
                  //     ),
                  //     onPressed: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (context) => CreatePasswordScreen()));
                  //     },
                  //     child: const Padding(
                  //       padding: EdgeInsets.all(15.0),
                  //       child: Text(
                  //         "Verify",
                  //         style: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 16,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Didn’t received code? ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Resend",
                    style: TextStyle(
                      color: Color(0xFF35C2C1),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
