import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import 'package:banking/ui/theme/theme.dart';

enum PredefinedMask { cpf, cnpj }

class MaskedField extends StatefulWidget {
  const MaskedField(
      {Key? key, this.existingMask, this.mask, this.label, this.keyboardType})
      : super(key: key);

  final PredefinedMask? existingMask;
  final String? mask;
  final String? label;
  final TextInputType? keyboardType;

  @override
  State<MaskedField> createState() => _MaskedFieldState();
}

class _MaskedFieldState extends State<MaskedField> {
  _parsePredefinedMaskFieldOptions() {
    switch (widget.existingMask) {
      case PredefinedMask.cpf:
        return {
          'mask': '###.###.###-##',
          'label': 'Preencha seu CPF',
          'keyboardType': TextInputType.number
        };
      case PredefinedMask.cnpj:
        return {
          'mask': '##.###.###/####-##',
          'label': 'Preencha seu CNPJ',
          'keyboardType': TextInputType.number
        };
      default:
        return;
    }
  }

  @override
  Widget build(BuildContext context) {
    final options = _parsePredefinedMaskFieldOptions();
    return TextFormField(
      keyboardType: widget.keyboardType ?? options['keyboardType'],
      inputFormatters: [
        MaskTextInputFormatter(mask: widget.mask ?? options['mask'])
      ],
      decoration: InputDecoration(
          labelText: widget.label ?? options['label'],
          labelStyle: BankingTheme.textStyle),
    );
  }
}
