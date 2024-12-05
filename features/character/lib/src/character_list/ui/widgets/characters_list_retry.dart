import 'package:flutter/material.dart';

class CharactersListRetry extends StatelessWidget {
  final VoidCallback onRetry;
  final String message;

  const CharactersListRetry({
    super.key,
    required this.onRetry,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            message,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          IconButton(
            onPressed: onRetry,
            icon: const Icon(
              Icons.refresh,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
