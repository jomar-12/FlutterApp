import 'package:flutter/material.dart';

class LoginEntry extends StatelessWidget {
  final String hintText;
  final IconData icon;

  LoginEntry({required this.hintText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(30)),
      child: TextFormField(
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.white, fontSize: 22),
            suffixIcon: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            contentPadding: const EdgeInsets.all(20),
            border: InputBorder.none),
      ),
    );
  }
}
