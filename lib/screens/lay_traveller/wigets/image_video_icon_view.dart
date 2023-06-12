import 'package:flutter/material.dart';

import '../../../utils/functions/function_reuse.dart';

class LayTravellerImageVideoIconView extends StatelessWidget {
  final Size size;
  final VoidCallback onCameraOptionPressed;
  final VoidCallback onVideoOptionPressed;

  const LayTravellerImageVideoIconView({
    Key? key,
    required this.size,
    required this.onCameraOptionPressed,
    required this.onVideoOptionPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      width: size.width * 0.1,
      color: getIconColorFromApplicationContext(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: onCameraOptionPressed,
            icon: Icon(
              Icons.add_a_photo_outlined,
              size: 30,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          IconButton(
            onPressed: onVideoOptionPressed,
            icon: Icon(
              Icons.video_camera_back_outlined,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
