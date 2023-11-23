import 'dart:developer';

import 'package:starter_pack/constants/color.dart';
import 'package:datetime_picker_formfield_new/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class CustomDatePicker extends ConsumerStatefulWidget {
  // DateTime selectedValue;
  TextEditingController dateController = TextEditingController();
  final Function(dynamic)? getValue;

  CustomDatePicker({super.key, required this.getValue});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomDateTimePickerState();
}

class _CustomDateTimePickerState extends ConsumerState<CustomDatePicker> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 1.1,
      height: MediaQuery.of(context).size.height * 0.1,
      child: DateTimeField(
        controller: widget.dateController,
        onChanged: (value) {
          widget.getValue!(DateFormat("yyyy-MM-dd").format(value!));
          // log();
        },
        decoration: InputDecoration(
            label: const Text('Select Date'),
            hintText: 'Select Date',
            hintStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 16,
              fontFamily: 'Poppins',
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: txtBorderColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: txtBorderColor)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: txtBorderColor))),
        format: DateFormat("yyyy-MM-dd"),
        onShowPicker: (context, currentValue) async {
          return await showDatePicker(
            context: context,
            firstDate: DateTime(1900),
            initialDate: currentValue ?? DateTime.now(),
            lastDate: DateTime(2100),
          );
        },
      ),
    );
  }
}
