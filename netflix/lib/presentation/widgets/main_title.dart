import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainTitle extends StatelessWidget {
  final String title;
  const MainTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
