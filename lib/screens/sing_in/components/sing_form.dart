import 'package:ecommerce_improved/components/default_button.dart';
import 'package:ecommerce_improved/components/form_error.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;

  final List<String> errors = [];
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
                    remember = value;
                  });
                },
              ),
              Text('Remember Me'),
              Spacer(),
              Text(
                'Forgot Password',
                style: TextStyle(decoration: TextDecoration.underline),
              )
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionalScreenHeight(20)),
          DefaultButton(
            text: 'Continue',
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField signInPasswdFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      obscureText: true,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(hPassNullError)) {
          setState(() {
            errors.remove(hPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(hShortPassError)) {
          setState(() {
            errors.remove(hShortPassError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(hPassNullError)) {
          setState(() {
            errors.add(hPassNullError);
          });
        } else if (value.length < 8 && !errors.contains(hShortPassError)) {
          setState(() {
            errors.add(hShortPassError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your password',
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
        if (value.isNotEmpty && errors.contains(hEmailNullError)) {
          setState(() {
            errors.remove(hEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(hInvalidEmailError)) {
          setState(() {
            errors.remove(hInvalidEmailError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(hEmailNullError)) {
          setState(() {
            errors.add(hEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(hInvalidEmailError)) {
          setState(() {
            errors.add(hInvalidEmailError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Enter your email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(Icons.mail_outline),
        ),
      ),
    );
  }
}
