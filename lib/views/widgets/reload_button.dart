import 'package:flutter/material.dart';

class ReloadButton extends StatelessWidget {
  const ReloadButton({
    Key? key,
    required this.isMobile,
    required this.onPressed,
    required this.errorString,
  }) : super(key: key);

  final bool isMobile;
  final Function() onPressed;
  final String errorString;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(errorString),
        IconButton(
          iconSize: isMobile ? 60 : 120,
          onPressed: onPressed,
          color: Theme.of(context).colorScheme.primary,
          splashColor: Theme.of(context).colorScheme.background,
          icon: const Icon(
            Icons.refresh,
          ),
        ),
      ],
    );
  }
}
