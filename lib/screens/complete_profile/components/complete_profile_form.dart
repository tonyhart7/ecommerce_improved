import 'package:ecommerce_improved/components/default_button.dart';
import 'package:ecommerce_improved/components/form_error.dart';
import 'package:ecommerce_improved/screens/otp/otp_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String firstName;
  String lastName;
  String phoneNumber;
  String address;

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            completeProfileFirstName(),
            SizedBox(height: getProportionalScreenHeight(30)),
            completeProfileLastName(),
            SizedBox(height: getProportionalScreenHeight(30)),
            completeProfilePhoneFormField(),
            SizedBox(height: getProportionalScreenHeight(30)),
            completeProfileAddress(),
            FormError(errors: errors),
            SizedBox(height: getProportionalScreenHeight(40)),
            DefaultButton(
              text: 'Continue',
              press: () {
                if (_formKey.currentState.validate()) {
                  Navigator.pushNamed(context, OtpScreen.routeName);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  TextFormField completeProfilePhoneFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: hPhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: hPhoneNumberNullError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Phone Number',
        hintText: 'Enter your phone number',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(Icons.phone_android),
        ),
      ),
    );
  }

  TextFormField completeProfileAddress() {
    return TextFormField(
      keyboardType: TextInputType.streetAddress,
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: hAddressNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: hAddressNullError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Adress',
        hintText: 'Enter your Adress',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(Icons.location_city),
        ),
      ),
    );
  }

  TextFormField completeProfileLastName() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
      decoration: InputDecoration(
        labelText: 'Last Name',
        hintText: 'Enter your last name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(Icons.people_rounded),
        ),
      ),
    );
  }

  TextFormField completeProfileFirstName() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: hNameNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: hNameNullError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'First Name',
        hintText: 'Enter your first name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(Icons.people_rounded),
        ),
      ),
    );
  }
}
