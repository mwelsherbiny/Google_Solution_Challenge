import 'package:flutter/material.dart';
import 'package:google_solution_challange/button.dart';
import 'package:google_solution_challange/sign_up.dart';
import 'package:google_solution_challange/styled_text.dart';
import 'package:google_solution_challange/input.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 164),
              StyledText('Sign In', 'bold', 28),
              SizedBox(height: 94),
              Input('Email', 'email.svg'),
              Input('Password', 'password.svg'),
              Button('Sign In'),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 20),
                width: 310,
                child: Row(
                  children: [
                    Container(
                      width: 140,
                      height: 1,
                      color: Color.fromRGBO(44, 44, 44, 1),
                    ),
                    StyledText(' Or ', 'normal', 16),
                    Container(
                      color: Color.fromRGBO(44, 44, 44, 1),
                      width: 140,
                      height: 1,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/sign_up/facebook.svg'),
                  SizedBox(width: 28),
                  SvgPicture.asset('assets/sign_up/google.svg'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StyledText('Don’t have an account?', 'normal', 12),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp())
                        );                      },
                      child: StyledText('Create new one', 'normal', 12, textColor: Color.fromRGBO(55, 235, 115, 1)))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
