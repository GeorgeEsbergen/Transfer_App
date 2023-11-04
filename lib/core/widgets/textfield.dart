import 'package:flutter/material.dart';

class MainTextField extends StatefulWidget {
  const MainTextField({
    super.key,
    required this.label,
    required this.hint,
    this.visibleTrue,
    this.visibleFalse,
    required this.keyboard,
  });
  final String label;
  final String hint;
  final IconData? visibleTrue;
  final IconData? visibleFalse;
  final TextInputType keyboard;

  @override
  State<MainTextField> createState() => _MainTextFieldState();
}

class _MainTextFieldState extends State<MainTextField> {
  bool isVisble = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isVisble,
      keyboardType: widget.keyboard,
      decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: const TextStyle(
            color: Colors.grey,
          ),
          hintText: widget.hint,
          hintStyle: const TextStyle(color: Colors.grey),
          suffixIcon: IconButton(
            icon:
                isVisble ? Icon(widget.visibleTrue) : Icon(widget.visibleFalse),
            onPressed: () {
              setState(() {
                isVisble = !isVisble;
              });
            },
          ),
          suffixIconColor: Colors.grey),
    );
  }
}
