import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShimmerImageCacheScreen extends StatefulWidget {
  const ShimmerImageCacheScreen({super.key});

  @override
  State<ShimmerImageCacheScreen> createState() =>
      _ShimmerImageCacheScreenState();
}

class _ShimmerImageCacheScreenState extends State<ShimmerImageCacheScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("shimmer cache image"),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.greenAccent.shade200,
        child: Center(
            child: CachedNetworkImage(
          imageUrl:
              // 'https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_640.jpg', // error
              'https://upload.wikimedia.org/wikipedia/commons/b/b5/Lion_d%27Afrique.jpg',
          imageBuilder: (context, imageProvider) => Container(
            width: 350,
            height: 350,
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(20)
                shape: BoxShape.circle,
                image: DecorationImage(image: imageProvider, fit: BoxFit.fill)),
          ),
          placeholder: (context, url) => Shimmer.fromColors(
            baseColor: Colors.grey[400]!,
            highlightColor: Colors.grey[100]!,
            child: Container(
              width: 350,
              height: 350,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  // borderRadius: BorderRadius.circular(15),
                  color: Colors.white),
            ),
          ),
          errorWidget: (context, url, error) => Container(
            width: 350,
            height: 350,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              "assets/images/G.svg",
              width: 350,
              height: 350,
              fit: BoxFit.contain,
              color: Colors.white,
            ),
          ),
        )),
      ),
    );
  }
}
