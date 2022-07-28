import 'package:banking/shared/components/button/icon_button.dart';
import 'package:banking/shared/components/form/masked_field.dart';
import 'package:flutter/material.dart';
import 'package:banking/shared/platform/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      return _buildWebLayout();
    }));
  }

  Widget _buildWebLayout() {
    final isMobile = PlatformUtils.isMobileFromContext(context);
    return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const SizedBox(height: 130),
      Container(
          width: 600,
          height: isMobile ? null : 450,
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
          decoration: BoxDecoration(
              color: const Color.fromARGB(40, 0, 169, 116),
              border: Border.all(color: Colors.transparent),
              borderRadius:
                  BorderRadius.all(Radius.circular(isMobile ? 0 : 25))),
          child: Stack(children: [_logo(), _buildForm()])),
      _buildHelp()
    ]));
  }

  Widget _logo() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset(
        height: 40,
        filterQuality: FilterQuality.high,
        'assets/images/main-logo.png',
      )
    ]);
  }

  Widget _buildForm() {
    return Form(
        key: _formKey,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(height: 100),
          const MaskedField(existingMask: PredefinedMask.cpf),
          const SizedBox(height: 40),
          BoxedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/account/create/first_step');
              },
              label: 'Acessar',
              icon: const Icon(Icons.login)),
          const SizedBox(height: 90),
          MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                child: const Text('Esqueceu sua senha?'),
                onTap: () => {},
              ))
        ]));
  }

  Widget _buildHelp() {
    return Column(children: const [
      Padding(padding: EdgeInsets.all(25)),
      Text('ajuda@banking.com.br'),
      Text('0800 123 456 789')
    ]);
  }
}
