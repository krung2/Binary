import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/redhand.jpg',
            height: 50,
            width: 50,),
            Text('비나리',style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w200
            ),)
          ],
        ),

      ],
    );
  }
}







class UserSignUp extends StatefulWidget {
  @override
  _UserSignUpState createState() => _UserSignUpState();
}

class _UserSignUpState extends State<UserSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('아무거나'),
      ),
    );
  }
}
