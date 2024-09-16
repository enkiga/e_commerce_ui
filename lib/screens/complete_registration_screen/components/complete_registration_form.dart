import 'package:flutter/material.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants/size_config.dart';
import '../../../constants/variables.dart';
import '../../otp_screen/otp_screen.dart';

class CompleteRegistrationForm extends StatefulWidget {
  const CompleteRegistrationForm({super.key});

  @override
  State<CompleteRegistrationForm> createState() =>
      _CompleteRegistrationFormState();
}

class _CompleteRegistrationFormState extends State<CompleteRegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  late String firstName;
  late String surname;
  late String phoneNumber;
  late String address;
  List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildSurnameFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPhoneNumberFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildAddressFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
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
                  OtpScreen.routeName,
                );
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kAddressNullError)) {
          setState(() {
            errors.remove(kAddressNullError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kAddressNullError)) {
          setState(() {
            errors.add(kAddressNullError);
          });
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Address",
        hintText: "Enter your address",
        suffixIcon: CustomSuffix(iconSelect: Icons.pin_drop),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phoneNumber = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPhoneNumberNullError)) {
          setState(() {
            errors.remove(kPhoneNumberNullError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPhoneNumberNullError)) {
          setState(() {
            errors.add(kPhoneNumberNullError);
          });
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter your phone number",
        suffixIcon: CustomSuffix(iconSelect: Icons.phone),
      ),
    );
  }

  TextFormField buildSurnameFormField() {
    return TextFormField(
      onSaved: (newValue) => surname = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNameNullError)) {
          setState(() {
            errors.remove(kNameNullError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kNameNullError)) {
          setState(() {
            errors.add(kNameNullError);
          });
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Surname",
        hintText: "Enter your surname",
        suffixIcon: CustomSuffix(iconSelect: Icons.person),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNameNullError)) {
          setState(() {
            errors.remove(kNameNullError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kNameNullError)) {
          setState(() {
            errors.add(kNameNullError);
          });
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "First Name",
        hintText: "Enter your first name",
        suffixIcon: CustomSuffix(iconSelect: Icons.person),
      ),
    );
  }
}
