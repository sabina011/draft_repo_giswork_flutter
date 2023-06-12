import 'package:flutter/material.dart';
import 'package:myapp/data/place_information/datastore/models/place_information_images_response.dart';
import 'package:myapp/screens/itinerary_traveller/widgets/widget.dart';
import 'package:myapp/widgets/widget.dart';

import '../../../constant/app_const.dart';

class NewsFeedItineraryStory extends StatelessWidget {
  final String username;
  final String profileImageUrl;
  final List<GeoImagesResponse> postImageUrl;
  final int likes;
  final int day;
  final int comments;
  final String caption;

  const NewsFeedItineraryStory({
    Key? key,
    required this.username,
    required this.profileImageUrl,
    required this.postImageUrl,
    required this.likes,
    required this.comments,
    required this.caption,
    required this.day,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(image_base_url + profileImageUrl),
                radius: 20.0,
              ),
              SizedBox(width: 8.0),
              GISDynamicText(text: username, isHeadings: true),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_horiz),
              )
            ],
          ),
          SizedBox(height: 8.0),
          Text('Travelled day: ${day.toString()}'),
          SizedBox(height: 8.0),
          Text(caption),
          SizedBox(height: 8.0),
          NewsFeedImagesList(
            size: size,
            postImageUrl: postImageUrl,
          ),
          SizedBox(height: 8.0),
          Center(
            child: Text(
              'Photos size : ${postImageUrl.length.toString()}',
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.comment),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.send),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.bookmark_border),
              ),
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            '$likes likes, $comments comments',
          ),
          SizedBox(
            height: 8.0,
          ),
          Divider(
            thickness: 1.5,
          )
        ],
      ),
    );
  }
}

class NewsFeedImagesList extends StatelessWidget {
  final size;
  final List<GeoImagesResponse> postImageUrl;

  const NewsFeedImagesList({
    Key? key,
    required this.size,
    required this.postImageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: postImageUrl
            .map(
              (imageUrl) => customNewsFeedImageContainer(
                image_base_url + imageUrl.image_post,
                size.height,
                size.width,
              ),
            )
            .toList(),
      ),
    );
  }
}
