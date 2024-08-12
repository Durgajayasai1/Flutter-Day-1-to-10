import 'package:flutter/material.dart';

class DecoratedIconButton extends StatelessWidget {
  final IconData iconData;
  final bool isSelected;
  final VoidCallback onTap;

  const DecoratedIconButton({
    Key? key,
    required this.iconData,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xffb8ed55) : Colors.black,
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(50),
      ),
      child: IconButton(
        icon: Icon(
          iconData,
          color: isSelected ? Colors.black : Colors.grey,
        ),
        onPressed: onTap,
      ),
    );
  }
}
