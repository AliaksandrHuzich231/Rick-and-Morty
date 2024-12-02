import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CharacterImage extends StatelessWidget {
  final String imageUrl;

  const CharacterImage({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return CachedNetworkImage(
      imageUrl: imageUrl,
      progressIndicatorBuilder: (context, url, downloadProgress) {
        return Center(
          child: CircularProgressIndicator(
            color: theme.navigationBarTheme.backgroundColor,
            value: downloadProgress.progress,
          ),
        );
      },
      errorWidget: (context, url, error) {
        return const Icon(
          Icons.error,
        );
      },
    );
  }
}
