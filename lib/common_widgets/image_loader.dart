import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class LoadingImage extends StatelessWidget {
  const LoadingImage({
    super.key,
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      child: CachedNetworkImage(
        imageUrl: url,
        placeholder: (context, url) => const CircularProgressIndicator(
          color: Colors.grey,
        ),
        errorWidget: (context, url, error) => const Icon(
          Icons.error,
          color: Colors.grey,
        ),
      ),
    );
  }
}
