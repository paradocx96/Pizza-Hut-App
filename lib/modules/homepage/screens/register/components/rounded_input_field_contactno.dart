import 'package:flutter/material.dart';
import 'package:pizzahut/modules/homepage/screens/login/components/text_field_container.dart';

class RoundedInputFieldContactNo extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedInputFieldContactNo({
    Key? key,
    required this.hintText,
    this.icon = Icons.phone,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: Colors.black54,
        keyboardType: TextInputType.phone,
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
