import 'package:flutter/material.dart';
import 'package:myapp/application/places/bloc/place_new_bloc.dart';
import 'package:myapp/application/user_posts/bloc/user_post_new_bloc.dart';
import 'package:myapp/config/routes/routes_handler.dart';

import '../../../application/injectable/injection.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Web Maps'),
            decoration: BoxDecoration(
              color: Colors.green.shade800,
            ),
          ),
          ListTile(
            title: Text('Tilicho Lake (Manang Vallley)'),
            onTap: () {
              final getPlacesBloc = getIt<GetPlacesBloc>();
              final getPostsBloc = getIt<UserPostBloc>();
              jumpToPlaceViewHolder(context, getPlacesBloc, getPostsBloc);
            },
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
          //   child: GestureDetector(
          //     onTap: () {
          //       // jumpToNextScreen(context, LayTravellerInformation());
          //     },
          //     child: Row(
          //       children: [
          //         Icon(
          //           Icons.add,
          //           size: 20,
          //         ),
          //         SizedBox(
          //           width: 8.0,
          //         ),
          //         Text('New traveller'),
          //       ],
          //     ),
          //   ),
          // ),

          ///create a package by travel agencies or authorized user only

          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
          //   child: GestureDetector(
          //     onTap: (){
          //       jumpToNextScreen(context, LocationSelectorScreen());
          //     },
          //     child: Row(
          //       children: [
          //         Icon(Icons.add, size: 20,),
          //         SizedBox(width: 8.0,),
          //         Text('Create route')
          //       ],
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
