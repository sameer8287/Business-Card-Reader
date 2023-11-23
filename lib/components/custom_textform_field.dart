import 'package:starter_pack/constants/color.dart';
import 'package:flutter/material.dart';
class custom_textform_field extends StatelessWidget {
  TextEditingController cont = TextEditingController();
  String hint;
  String? isEnabled;
  // String label;
  custom_textform_field({
    super.key,
    required this.cont,
    required this.hint,
    this.isEnabled
    // required this.label
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: hint == 'Password' ? TextInputType.text : TextInputType.emailAddress,
      controller: cont,
      enabled: isEnabled == '1' ? false :true,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          label: RichText(
            text: TextSpan(
              text: hint,
              style: const TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  // fontWeight: FontWeight.w600,
                  fontSize: 16),
              children: const <TextSpan>[
                TextSpan(
                    text: ' *',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          hintText: hint,
          hintStyle: const TextStyle(
              color: Colors.black,
              fontFamily: 'Poppins',
              fontSize: 16,
              fontStyle: FontStyle.normal),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: txtBorderColor)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: txtBorderColor)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: txtBorderColor))),
    );
  }
}