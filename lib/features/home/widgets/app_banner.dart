import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AppBanner extends StatelessWidget {
  const AppBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CachedNetworkImage(
          imageUrl:
              CachedNetworkImageProvider(
                'https://www.healthcarexfood.org/en/-/media/Images/HCxF/Home/hcxf-main-header.jpg?h=585&iar=0&mw=1910&w=945&sc_lang=en',
              ).url,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
          placeholder:
              (context, url) =>
                  const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
        const Positioned(
          bottom: 20,
          left: 20,
          child: Text(
            'Delicious Meals',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
