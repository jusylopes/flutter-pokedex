import 'package:flutter/material.dart';

class ReloadButton extends StatelessWidget {
  const ReloadButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      color: Theme.of(context).colorScheme.primary,
      splashColor: Theme.of(context).colorScheme.background,
      icon: const Icon(
        Icons.refresh,
      ),
    );
  }
}
