import 'package:flutter/material.dart';
import 'package:myapp/config/routes/routes_handler.dart';
import 'package:myapp/data/user_post/datastore/model/user_post_item.dart';
import 'package:myapp/widgets/widget.dart';
import 'package:myapp/widgets/widget_gis_button.dart';

import '../../data/user_post/datastore/model/user_post_image.dart';

class SinglePostViewHolder extends StatefulWidget {
  final int? posId;
  final UserPostItem userPost;

  const SinglePostViewHolder({required this.userPost, required this.posId});

  @override
  _SinglePostViewHolderState createState() => _SinglePostViewHolderState();
}

class _SinglePostViewHolderState extends State<SinglePostViewHolder> {
  double imageHeight = 100, imageWidth = 120;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _buildLoaded(
          context,
          widget.userPost,
          widget.posId,
        ),
      ),
    );
  }

  Widget _buildLoaded(
      BuildContext context, UserPostItem userPost, int? postId) {
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
                      text: userPost.hotels_and_resturants!,
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
                      text: userPost.geographical_info!,
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
                      text: userPost.transportation_medium!,
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
                          children: imagesList(userPost.images!),
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
                          children: imagesList(userPost.images!),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    GISDynamicText(
                      text: 'Location Information',
                      isHeadings: true,
                    ),
                    GISDynamicText(
                      text: userPost.location_name!,
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
                      text: userPost.seasonal_information!,
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
                      text: userPost.route_information!,
                      isHeadings: false,
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: GestureDetector(
                        onTap: () {
                          jumpToCustomizeSingleDayInformation(
                              context, userPost);
                        },
                        child: GISButtonSaveOrUpload(
                          context: context,
                          btn_text: 'Customize User',
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget imageContainer(String imageUrl) {
    return Container(
      height: imageHeight,
      width: imageWidth,
      margin: EdgeInsets.only(top: 8.0, right: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Image.asset(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  List<Widget> imagesList(List<ImagesUserPost> data) {
    List<Widget> widgets = [];
    for (var x in data) {
      widgets.add(imageContainer(x.imagePost!));
    }
    return widgets;
  }

  @override
  void dispose() {
    super.dispose();
  }
}
