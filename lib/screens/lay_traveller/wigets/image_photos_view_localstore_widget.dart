import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/services/native/media/media_file_selector.dart';
import '../../../widgets/widget.dart';
import '../../customize/widgets/customize_widgets.dart';

class LayTravellerImageAndPhotosView extends StatelessWidget {
  const LayTravellerImageAndPhotosView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<FileDataProvider>(
        builder: (context, data, child) => data.imageList!.isNotEmpty
            ? Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GISDynamicText(
                    text: ' Photos',
                    isHeadings: true,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: imagesListLayTraveller(
                        context,
                        data.imageList,
                        data.select_ByCamera,
                      ),
                    ),
                  ),
                ],
              )
            : SizedBox(),
      ),
    );
  }
}
