import 'package:flutter/material.dart';

import 'style_standards.dart';
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
      this.width,
      this.height,
      this.fit = BoxFit.scaleDown});
  final String? url;
  final ImageOrientation imageOrientation; //DEFAULT VALUE IS LANDSCAPE
  final double? width;
  final double? height;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    if (url == null || url == '')
      return _PlaceHolderWidget(
        height: height,
        imageOrientation: imageOrientation,
        width: width,
      );
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.all(
              Radius.circular(StandardCornerRadius.radius),
            )),
        child: AspectRatio(
          aspectRatio:
              imageOrientation == ImageOrientation.LANDSCAPE ? 16 / 9 : 4 / 5,
          child: url!.contains('assets')
              //IF CACHED IMAGE
              ? Image(
                  fit: fit,
                  image: AssetImage(url!),
                  errorBuilder: (BuildContext context, Object exception,
                      StackTrace? stackTrace) {
                    return _PlaceHolderWidget(
                      height: height,
                      imageOrientation: imageOrientation,
                      width: width,
                    );
                  },
                )
              //IF WEB IMAGE
              : FadeInImage.assetNetwork(
                  fadeOutDuration: Duration(milliseconds: 3),
                  placeholder: imageOrientation == ImageOrientation.LANDSCAPE
                      ? 'assets/placeHolders/image_placeholder_landscape.png'
                      : 'assets/placeHolders/image_placeholder_portrait.png',
                  alignment: Alignment.center,
                  image: url!,
                  fit: fit,
                  //IF IMAGE DOES NOT LOAD THEN RETURN PLACEHOLDER IMAGE
                  imageErrorBuilder: (BuildContext context, Object exception,
                      StackTrace? stackTrace) {
                    return _PlaceHolderWidget(
                      height: height,
                      imageOrientation: imageOrientation,
                      width: width,
                    );
                  }),
        ));
  }
}

class _PlaceHolderWidget extends StatelessWidget {
  const _PlaceHolderWidget(
      {required this.width,
      required this.height,
      required this.imageOrientation});
  final double? width;
  final double? height;
  final ImageOrientation imageOrientation;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio:
            imageOrientation == ImageOrientation.LANDSCAPE ? 16 / 9 : 4 / 5,
        child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
                color: StandardColors.standardLightGrey,
                borderRadius: BorderRadius.all(
                  Radius.circular(StandardCornerRadius.radius),
                )),
            child: Image(
              fit: BoxFit.scaleDown,
              image: AssetImage('assets/placeHolders/image_placeholder.png'),
            )));
  }
}
