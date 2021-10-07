import 'package:flutter/material.dart';
import 'package:pizzahut/modules/homepage/screens/login/components/text_field_container.dart';

class RoundedInputFieldEmail extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedInputFieldEmail({
    Key? key,
    required this.hintText,
    this.icon = Icons.email,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: Colors.black54,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.black54,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}