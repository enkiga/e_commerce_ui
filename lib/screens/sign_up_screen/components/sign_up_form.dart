import 'package:e_commerce_ui/screens/complete_registration_screen/complete_registration_screen.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants/size_config.dart';
import '../../../constants/variables.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  late String confirmPassword;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildPasswordFormField(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildConfirmPasswordFormField(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            FormError(errors: errors),
            SizedBox(
              height: getProportionateScreenHeight(40),
            ),
            DefaultButton(
              text: "Continue",
              press: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  //   go to complete profile page
                  Navigator.pushNamed(
                    context,
                    CompleteRegistrationScreen.routeName,
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirmPassword = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (password == confirmPassword &&
            errors.contains(kMatchPassError)) {
          setState(() {
            errors.remove(kMatchPassError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
        } else if (password != value) {
          setState(() {
            errors.add(kMatchPassError);
          });
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Confirm Password",
        hintText: "Confirm your password",
        suffixIcon: CustomSuffix(iconSelect: Icons.lock),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
        password = value;
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        suffixIcon: CustomSuffix(iconSelect: Icons.lock),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        suffixIcon: CustomSuffix(iconSelect: Icons.mail),
      ),
    );
  }
}
