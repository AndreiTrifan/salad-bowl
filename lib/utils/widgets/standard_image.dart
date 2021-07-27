import 'package:flutter/material.dart';

import '../standards/style_standards.dart';
import '../constants.dart';

class StandardImage extends StatelessWidget {
  /*
      This widget takes a "url" that points to either the relative path of a 
      file stored in memory or a web page url. It also takes an 
      ImageOrientation enum, which is used to display a web image, or to 
      manually set the aspect ratio of a cached image.
      
      In the case that it points to a webpage (e.g. starts with "https://"), 
      then it makes use of a FadeInImage.network widget to display a 
      placeholder image while the web image is being loaded. It also checks if 
      the 

      In the case that it points to a path (e.g. it doesn't start with "https://
      "), it makes use of an AspectRatio widget, whose child is an Image widget 
      which finally renders the picture at the URL provided in the function 
      call.
    */
  StandardImage(
      {required this.url,
      this.imageOrientation = ImageOrientation.LANDSCAPE,
      this.width = 160,
      this.height = 250,
      this.fit = BoxFit.scaleDown});
  final String url;
  final ImageOrientation imageOrientation; //DEFAULT VALUE IS LANDSCAPE
  final double width; // DEFAULT VALUE IS 200 * 4 / 5
  final double height; // DEFAULT VALUE IS 200 * 5 / 4
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.all(
            Radius.circular(StandardCornerRadius.radius),
          )),
      child: url.startsWith('https://')
          ? AspectRatio(
              aspectRatio: imageOrientation == ImageOrientation.LANDSCAPE
                  ? 16 / 9
                  : 4 / 5,
              child: FadeInImage.assetNetwork(
                fadeOutDuration: Duration(milliseconds: 3),
                placeholder: imageOrientation == ImageOrientation.LANDSCAPE
                    ? 'assets/placeHolders/image_placeholder_landscape.png'
                    : 'assets/placeHolders/image_placeholder_portrait.png',
                image: url,
              ))
          : AspectRatio(
              aspectRatio: imageOrientation == ImageOrientation.LANDSCAPE
                  ? 16 / 9
                  : 4 / 5,
              child: Image(
                image: AssetImage(url),
              ),
            ),
    );
  }
}
