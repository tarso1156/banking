import 'package:banking/shared/components/form/form_input_field.dart';
import 'package:flutter/material.dart';

class CreateAccountFirstStep extends StatelessWidget {
  const CreateAccountFirstStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Cadastro de E-mail'), actions: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: IconButton(
                  onPressed: () {},
                  tooltip: 'Salvar',
                  icon: const Icon(Icons.save)))
        ]),
        body: _buildBody());
  }

  Widget _buildBody() {
    return Container(
        margin: const EdgeInsets.all(50),
        child: Form(
            child: Column(
          children: [
            FormInputField(label: 'Preencha seu Nome'),
            FormInputField(label: 'Preencha seu CPF'),
            FormInputField(label: 'Preencha seu Endereço')
          ],
        )));
  }
}
