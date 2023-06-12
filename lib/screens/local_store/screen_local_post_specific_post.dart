import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:myapp/model/hive_model/local_store_model.dart';
import 'package:myapp/widgets/widget.dart';

class LocalStoreSinglePostViewHolder extends StatefulWidget {
  final LocalStoreInformation userDay;

  const LocalStoreSinglePostViewHolder({
    required this.userDay,
  });

  @override
  _LocalStoreSinglePostViewHolderState createState() =>
      _LocalStoreSinglePostViewHolderState();
}

class _LocalStoreSinglePostViewHolderState
    extends State<LocalStoreSinglePostViewHolder> {
  double imageHeight = 100, imageWidth = 120;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _buildLoaded(context, widget.userDay),
      ),
    );
  }

  Widget _buildLoaded(BuildContext context, LocalStoreInformation userDay) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Center(
                        child: GISDynamicText(
                          text: 'Travel location in map',
                          isHeadings: true,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GISDynamicText(
                      text: 'Hotels and Resturants',
                      isHeadings: true,
                    ),
                    GISDynamicText(
                      text: userDay.hotelsAndRestaurants,
                      isHeadings: false,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GISDynamicText(
                      text: 'Geographical Information',
                      isHeadings: true,
                    ),
                    GISDynamicText(
                      text: userDay.geographicalInfo,
                      isHeadings: false,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GISDynamicText(
                      text: 'Transportation medium',
                      isHeadings: true,
                    ),
                    GISDynamicText(
                      text: userDay.transportationMedium,
                      isHeadings: false,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GISDynamicText(
                      text: 'Images',
                      isHeadings: true,
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: imagesList(userDay.unitImagesFileList!),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    GISDynamicText(
                      text: 'videos',
                      isHeadings: true,
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: imagesList(userDay.unitVideosFileList!),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    GISDynamicText(
                      text: 'Location Information',
                      isHeadings: true,
                    ),
                    GISDynamicText(
                      text: userDay.locationName,
                      isHeadings: false,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GISDynamicText(
                      text: 'Seasonal Information',
                      isHeadings: true,
                    ),
                    GISDynamicText(
                      text: userDay.seasonalInformation,
                      isHeadings: false,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GISDynamicText(
                      text: 'Route Information',
                      isHeadings: true,
                    ),
                    GISDynamicText(
                      text: userDay.routeInformation,
                      isHeadings: false,
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget imageContainer(Uint8List byteData) {
    return Container(
      height: imageHeight,
      width: imageWidth,
      margin: EdgeInsets.only(top: 8.0, right: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Image.memory(
        Uint8List.fromList(byteData),
        fit: BoxFit.cover,
      ),
    );
  }

  List<Widget> imagesList(List<Uint8List> data) {
    List<Widget> widgets = [];
    for (var x in data) {
      widgets.add(imageContainer(x.buffer.asUint8List()));
    }
    return widgets;
  }

  @override
  void dispose() {
    super.dispose();
    // _controller!.dispose();
  }
}
