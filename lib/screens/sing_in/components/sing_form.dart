import 'package:ecommerce_improved/components/form_error.dart';
import 'package:ecommerce_improved/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce_improved/screens/login_success/components/login_success_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool remember = false;
  final List<String> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error!);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(errors);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          signInEmailFormField(),
          SizedBox(height: getProportionalScreenHeight(30)),
          signInPasswdFormField(),
          SizedBox(height: getProportionalScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: hPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value!;
                  });
                },
              ),
              Text('Ingat Saya'),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: Text(
                  'Lupa Password',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionalScreenHeight(20)),
          // DefaultButton(
          //   text: 'Continue',
          //   press: () {},
          // ),
          FloatingActionButton.extended(
            onPressed: () {
              FocusScopeNode currentFocus = FocusScope.of(context);

              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
              if (_formKey.currentState?.validate() ?? false) {
                _formKey.currentState!.save();
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                FocusScope.of(context).unfocus();
              }
            },
            // icon: SvgPicture.asset(
            //     'assets/images/icons/AuthViewIcon/facebook.svg',
            //     height: 18.h),
            label: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Login'),
            ),
            foregroundColor: Colors.white,
            backgroundColor: Colors.orange,
          ),
        ],
      ),
    );
  }

  TextFormField signInPasswdFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      obscureText: true,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: hPassNullError);
        } else if (value.length >= 8) {
          removeError(error: hShortPassError);
        }
        password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: hPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: hShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Masukkan Password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(Icons.lock_outlined),
        ),
      ),
    );
  }

  TextFormField signInEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: hEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: hInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: hEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: hInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Masukkan Email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(Icons.mail_outline),
        ),
      ),
    );
  }
}
