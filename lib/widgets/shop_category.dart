import 'package:flutter/material.dart';

class ShopCategory extends StatelessWidget {
  final String imagePath;
  final String serviceName;
  final Color backgroundColor;
  final Function()? onTap;

  const ShopCategory({
    required this.imagePath,
    required this.serviceName,
    required this.backgroundColor,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 34.0,
          bottom: 34.0,
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: backgroundColor,
          ),
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                serviceName,
                style:
                    const TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              const SizedBox(width: 8),
              Image.asset(
                imagePath,
                height: 40,
                width: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
