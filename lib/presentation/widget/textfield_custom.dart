import 'package:flutter/material.dart';

class TextfieldCustom extends StatefulWidget {
  final String hintText;
  final String labelText;
  final String errorText;
  final bool isPassword;
  final TextEditingController? controller;

  const TextfieldCustom(
      {super.key,
      required this.hintText,
      required this.labelText,
      this.errorText = "",
      this.controller,
      this.isPassword = false});

  @override
  State<TextfieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextfieldCustom> {
  bool obsecure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Text(widget.labelText,
              style: const TextStyle(
                  color: Color(0xff3B4949),
                  fontSize: 16,
                  fontWeight: FontWeight.w700)),
        ),
        const SizedBox(height: 7),
        Container(
          child: TextField(
            controller: widget.controller,
            obscureText: widget.isPassword ? obsecure : false,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(color: Colors.red)),
              filled: true,
              errorText: widget.errorText == "" || widget.errorText == "[]"
                  ? null
                  : widget.errorText,
              suffixIcon: widget.isPassword
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          obsecure = !obsecure;
                        });
                      },
                      icon: obsecure
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility))
                  : const SizedBox(),
              hoverColor: const Color(0xffF1F1F1),
              fillColor: const Color(0xffF1F1F1),
              hintText: widget.hintText,
            ),
          ),
        ),
      ],
    );
  }
}
