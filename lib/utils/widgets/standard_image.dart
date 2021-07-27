import 'package:flutter/material.dart';
import '../standards/style_standards.dart';

class StandardImage extends StatefulWidget {
  const StandardImage({required this.URL});
  final String URL;

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
      child: widget.URL.startsWith('https://')
          ? FadeInImage.assetNetwork(
              placeholder: 'assets/placeHolders/image_placeholder.png',
              image: widget.URL,
            )
          : Image(
              image: AssetImage(widget.URL),
            ),
    );
  }
}
