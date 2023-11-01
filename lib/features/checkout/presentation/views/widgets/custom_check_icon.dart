import 'package:flutter/material.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: Color(0xFFD9D9D9),
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.green,
        child: Icon(
          Icons.check,
          size: 45,
        ),
      ),
    );
  }
}