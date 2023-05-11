import 'package:amazon_clone/constants/global_variable.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/custom_buttom.dart';
import '../../../common/widgets/custom_text_field.dart';

enum Auth {signin,signup}// for track the radio buttons

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormkey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _paswordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose(){ // for memory leak
    super.dispose();
    _emailController.dispose();
    _paswordController.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariable.greyBackgroundColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            ListTile(
              tileColor: _auth == Auth.signup?GlobalVariable.backgroungColor:GlobalVariable.greyBackgroundColor,
              title: const Text(
                'Create Account',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio(
                activeColor: GlobalVariable.secondaryColor,
                value: Auth.signup,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                },
              ),
            ),
            if(_auth == Auth.signup)
            Container(
              padding: const EdgeInsets.all(8),
              color: GlobalVariable.backgroungColor,
              child: Form(
                key: _signUpFormKey,
                child: Column(
                  children: [
                    CustomTextField(
                      controller: _nameController,
                      hintText: 'Name',
                      ),
                      const SizedBox(height: 8,),
                    CustomTextField(
                      controller: _emailController,
                      hintText: 'Email',
                      ),
                      const SizedBox(height: 8,),
                      CustomTextField(
                      controller: _paswordController,
                      hintText: 'Password',
                      ),
                      const SizedBox(height: 8,),
                      CustomButton(onTap: () {  }, text: 'SignUp',)
                  ],
              ),
              ),
            ),
            ListTile(
              tileColor: _auth == Auth.signin?GlobalVariable.backgroungColor:GlobalVariable.greyBackgroundColor,
              title: const Text(
                'Sign-In ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio(
                activeColor: GlobalVariable.secondaryColor,
                value: Auth.signin,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                },
              ),
            ),
             if(_auth == Auth.signin)
            Container(
              padding: const EdgeInsets.all(8),
              color: GlobalVariable.backgroungColor,
              child: Form(
                key: _signUpFormKey,
                child: Column(
                  children: [
                    CustomTextField(
                      controller: _emailController,
                      hintText: 'Email',
                      ),
                      const SizedBox(height: 8,),
                      CustomTextField(
                      controller: _paswordController,
                      hintText: 'Password',
                      ),
                      const SizedBox(height: 8,),
                      CustomButton(onTap: () {  }, text: 'SignIn',)
                  ],
              ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
