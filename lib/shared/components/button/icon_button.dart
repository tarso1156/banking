import 'package:flutter/material.dart';

class BoxedButton extends StatefulWidget {
  const BoxedButton(
      {Key? key,
      required this.onPressed,
      required this.label,
      required this.icon,
      this.height = 40,
      this.width = double.infinity})
      : super(key: key);

  final String label;
  final VoidCallback? onPressed;
  final Icon icon;
  final double height;
  final double width;

  @override
  State<BoxedButton> createState() => _BoxedButtonState();
}

class _BoxedButtonState extends State<BoxedButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: widget.width,
        height: widget.height,
        child: ElevatedButton.icon(
            icon: widget.icon,
            onPressed: widget.onPressed,
            label: Text(widget.label)));
  }
}
