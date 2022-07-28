import 'package:flutter/material.dart';

import 'package:banking/ui/theme/theme.dart';

class FormInputField extends StatefulWidget {
  const FormInputField({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  State<FormInputField> createState() => _FormInputFieldState();
}

class _FormInputFieldState extends State<FormInputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      decoration: InputDecoration(
          label: Text(
        widget.label,
        style: BankingTheme.textStyle,
      )),
    );
  }
}
