import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class PhotoViewExample extends StatefulWidget {
  const PhotoViewExample({super.key});

  @override
  State<PhotoViewExample> createState() => _PhotoViewExampleState();
}

class _PhotoViewExampleState extends State<PhotoViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: PhotoView(
              imageProvider: AssetImage("assets/images/image4.jpg"),
              minScale: PhotoViewComputedScale.contained * 0.8,
              maxScale: PhotoViewComputedScale.covered * 1.8,
              initialScale: PhotoViewComputedScale.contained,
              heroAttributes: PhotoViewHeroAttributes(tag: 'image_hero_tag'),
              enableRotation: true,

            ),
          ),

          // PhotoViewGallery.builder(
          //   scrollPhysics: const BouncingScrollPhysics(),
          //   builder: (BuildContext context, int index) {
          //     return PhotoViewGalleryPageOptions(
          //       imageProvider: NetworkImage(galleryItems[index].image),
          //       initialScale: PhotoViewComputedScale.contained,
          //       heroAttributes:
          //           PhotoViewHeroAttributes(tag: galleryItems[index].id),
          //     );
          //   },
          //   itemCount: galleryItems.length,
          //   loadingBuilder: (context, event) => Center(
          //     child: Container(
          //       width: 20.0,
          //       height: 20.0,
          //       child: CircularProgressIndicator(),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
