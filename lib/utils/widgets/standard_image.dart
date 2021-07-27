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
      {this.url = '',
      this.imageOrientation = ImageOrientation.LANDSCAPE,
      this.width,
      this.height,
      this.fit = BoxFit.scaleDown});
  final String? url;
  final ImageOrientation imageOrientation; //DEFAULT VALUE IS LANDSCAPE
  late double? width;
  late double? height;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    if (url == null || url!.isEmpty) return _PlaceHolderWidget();
    width = MediaQuery.of(context).size.width;
    height = imageOrientation == ImageOrientation.LANDSCAPE
        ? width! * 9 / 16
        : width! * 5 / 4;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.all(
            Radius.circular(StandardCornerRadius.radius),
          )),
      child: Uri.tryParse(url!)?.hasAbsolutePath ?? false //CHECK IF WEB LINK
          ? FadeInImage.assetNetwork(
              fadeOutDuration: Duration(milliseconds: 3),
              placeholder: imageOrientation == ImageOrientation.LANDSCAPE
                  ? 'assets/placeHolders/image_placeholder_landscape.png'
                  : 'assets/placeHolders/image_placeholder_portrait.png',
              image: url!,
              //IF IMAGE DOES NOT LOAD THEN RETURN PLACEHOLDER IMAGE
              imageErrorBuilder: (BuildContext context, Object exception,
                  StackTrace? stackTrace) {
                return _PlaceHolderWidget();
              })
          //IF CACHED IMAGE
          : Image(
              image: AssetImage(url!),
              errorBuilder: (BuildContext context, Object exception,
                  StackTrace? stackTrace) {
                return _PlaceHolderWidget();
              },
            ),
    );
  }
}

class _PlaceHolderWidget extends StatelessWidget {
  const _PlaceHolderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey[350],
            borderRadius: BorderRadius.all(
              Radius.circular(StandardCornerRadius.radius),
            )),
        child: StandardImage(url: "assets/placeHolders/image_placeholder.png"));
  }
}
