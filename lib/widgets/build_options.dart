import 'package:flutter/material.dart';

Widget buildOption(String letter, String text, {bool isSelected = false}) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Color(0xff232A2E),
      border: Border.all(
        color: isSelected ? const Color(0xFF8B88EF) : Colors.transparent,
        width: 1.5,
      ),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          decoration: BoxDecoration(
            color: isSelected ? const Color(0xFF8B88EF) : Colors.transparent,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: isSelected ? Colors.transparent : const Color(0xffC4C4C4),
              width: 1.5,
            ),
          ),
          child: Text(
            letter,
            style: const TextStyle(
              fontFamily: 'ProximaNova',
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xffC4C4C4),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Flexible(
          child: Text(
            text,
            style: const TextStyle(
              fontFamily: 'ProximaNova',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: const Color(0xffC4C4C4),
            ),
          ),
        ),
      ],
    ),
  );
}
