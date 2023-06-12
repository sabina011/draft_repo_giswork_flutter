import 'package:flutter/material.dart';
import 'package:myapp/utils/functions/function_reuse.dart';
import 'package:myapp/widgets/widget.dart';
import 'package:provider/provider.dart';

import '../../../utils/services/native/media/media_file_selector.dart';
import '../customize_constants.dart';
import 'customize_widgets.dart';

class ImageVideoView extends StatelessWidget {
  const ImageVideoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GISDynamicText(
          text: 'Images',
          isHeadings: true,
        ),
        SizedBox(
          height: CustomizeGisConstant.sizedBoxHeight / 2,
        ),
        context.watch<FileDataProvider>().check_image
            ? Consumer<FileDataProvider>(
                builder: (context, file_provider, child) =>
                    SingleChildScrollView(
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: imagesList(context, file_provider.imageList,
                        file_provider.select_ByCamera),
                  ),
                ),
              )
            : Container(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.read<FileDataProvider>().pickImageByCamera();
                        },
                        child: GISContainerDecoration(Icon(
                          Icons.add_a_photo_outlined,
                          color: getIconColorFromApplicationContext(context),
                        )),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      GestureDetector(
                        onTap: () {
                          context
                              .read<FileDataProvider>()
                              .pickImageFromSourceSelect();
                        },
                        child: GISContainerDecoration(
                          Icon(
                            Icons.image,
                            color: getIconColorFromApplicationContext(context),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
        SizedBox(
          height: CustomizeGisConstant.sizedBoxHeight,
        ),
        GISDynamicText(
          text: 'Videos',
          isHeadings: true,
        ),
        SizedBox(
          height: CustomizeGisConstant.sizedBoxHeight / 2,
        ),
        context.watch<FileDataProvider>().check_image
            ? Consumer<FileDataProvider>(
                builder: (context, file_provider, child) =>
                    SingleChildScrollView(
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: imagesList(
                      context,
                      file_provider.imageList,
                      file_provider.select_ByCamera,
                    ),
                  ),
                ),
              )
            : Container(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.read<FileDataProvider>().pickImageByCamera();
                        },
                        child: GISContainerDecoration(Icon(
                          Icons.video_camera_front_outlined,
                          color: getIconColorFromApplicationContext(context),
                        )),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      GestureDetector(
                        onTap: () {
                          context
                              .read<FileDataProvider>()
                              .pickImageFromSourceSelect();
                        },
                        child: GISContainerDecoration(
                          Icon(
                            Icons.movie_outlined,
                            color: getIconColorFromApplicationContext(context),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ],
    );
  }
}
