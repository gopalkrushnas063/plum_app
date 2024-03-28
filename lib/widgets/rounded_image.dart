import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  final String imagePath;
  final String serviceName;

  const RoundedImage({
    required this.imagePath,
    required this.serviceName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: const Color.fromARGB(255, 209, 125, 194),
                width: 3,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            serviceName,
            style: const TextStyle(
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
