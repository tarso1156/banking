import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:banking/ui/theme/theme.dart';

class PasswordField extends StatefulWidget {
  const PasswordField(
      {Key? key, this.maxLength = 6, this.validator, this.keyboardType})
      : super(key: key);

  final int? maxLength;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  var obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: obscureText,
        enableSuggestions: false,
        autocorrect: false,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        maxLength: widget.maxLength,
        keyboardType: widget.keyboardType,
        style: BankingTheme.textStyle,
        decoration: InputDecoration(
            labelText: 'Preencha sua Senha',
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                tooltip:
                    obscureText ? 'Exibir caracteres' : 'Ocultar caracteres',
                icon: Icon(obscureText
                    ? Icons.remove_red_eye
                    : Icons.visibility_off))),
        validator: widget.validator);
  }
}
