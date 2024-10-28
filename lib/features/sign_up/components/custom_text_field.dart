import 'package:flutter/material.dart';
import 'package:m_mart/utils/extension/context_ext.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hint,
      this.keyboardType,
      this.hasLabel = false,
      this.prefixIcon});
  final TextEditingController controller;
  final String hint;
  final TextInputType? keyboardType;
  final bool hasLabel;
  final Widget? prefixIcon;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool obscureText = widget.keyboardType == TextInputType.visiblePassword;
  bool get isPassword => widget.keyboardType == TextInputType.visiblePassword;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: obscureText,
      style: context.myTheme.textThemeT1.body.copyWith(fontSize: 16),
      decoration: InputDecoration(
          hintText: widget.hint,
          hintStyle: context.myTheme.textThemeT1.body.copyWith(fontSize: 14),
          labelText: widget.hasLabel ? widget.hint : null,
          alignLabelWithHint: true,
          labelStyle: context.myTheme.textThemeT1.body.copyWith(fontSize: 14),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          floatingLabelStyle: context.myTheme.textThemeT1.body.copyWith(fontSize: 14),
          prefixIcon: widget.prefixIcon,
          prefixIconConstraints: const BoxConstraints(minWidth: 40),
          contentPadding: EdgeInsets.only(top: widget.prefixIcon != null ? 10 : 0),
          suffixIcon: isPassword
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  iconSize: 20,
                  color: Colors.black.withOpacity(0.54),
                  icon: obscureText ? const Icon(Icons.visibility_rounded) : const Icon(Icons.visibility_off_rounded))
              : const IconButton(onPressed: null, icon: Icon(null)),
          enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFFD6D6D6))),
          border: const UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFFD6D6D6))),
          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFFD6D6D6)))),
    );
  }
}
