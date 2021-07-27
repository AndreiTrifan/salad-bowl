import 'package:flutter/material.dart';
import '../standards/style_standards.dart';

class StandardImage extends StatefulWidget {
  const StandardImage({required this.url});
  final String url;

  @override
  _StandardImageState createState() => _StandardImageState();
}

class _StandardImageState extends State<StandardImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.all(
            Radius.circular(StandardCornerRadius.radius),
          )),
      child: widget.url.startsWith('https://')
          ? FadeInImage.assetNetwork(
              placeholder: 'assets/placeHolders/image_placeholder.png',
              image: widget.url,
            )
          : Image(
              image: AssetImage(widget.url),
            ),
    );
  }
}
