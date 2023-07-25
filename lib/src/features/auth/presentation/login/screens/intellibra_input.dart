import 'package:flutter/material.dart';

class AkilaInput extends StatefulWidget {
  final String label;
  final String hint;
  final Widget? prefix;
  final Widget? suffix;
  final bool? isActive;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  const AkilaInput(
      {super.key,
      required this.label,
      required this.hint,
      this.validator,
      this.isActive,
      required this.controller,
      this.keyboardType,
      required this.obscureText,
      this.prefix,
      this.suffix});

  @override
  State<AkilaInput> createState() => _AkilaInputState();
}

class _AkilaInputState extends State<AkilaInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 12),
      child: TextFormField(
        validator: widget.validator,
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        enableIMEPersonalizedLearning: true,
        decoration: InputDecoration(
          enabled: widget.isActive ?? true,
          prefixIcon: widget.prefix,
          suffixIcon: widget.suffix,
          label: Text(widget.label),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          hintText: widget.hint,
        ),
      ),
    );
  }
}
