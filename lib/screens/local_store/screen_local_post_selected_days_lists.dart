import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/data/user_post/datastore/model/user_post_item.dart';

import '../../application/user_posts/bloc/user_post_new_bloc.dart';
import '../../utils/functions/function_reuse.dart';
import '../userposts/screen_single_day_view_holder.dart';

class UserPostSelectedScreen extends StatefulWidget {
  final int selected_day;
  final UserPostBloc bloc;

  const UserPostSelectedScreen({
    Key? key,
    required this.selected_day,
    required this.bloc,
  }) : super(key: key);

  @override
  State<UserPostSelectedScreen> createState() => _UserPostSelectedScreenState();
}

class _UserPostSelectedScreenState extends State<UserPostSelectedScreen> {
  @override
  void initState() {
    widget.bloc.add(
      UserPostGetEvent.getUserPost(
        day: widget.selected_day,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => widget.bloc,
          child: BlocBuilder<UserPostBloc, UserPostState>(
            builder: (context, state) {
              return state.when(initial: () {
                return const SizedBox();
              }, loading: () {
                return const Center(child: CircularProgressIndicator());
              }, success: (userPostItem) {
                return buildLoaded(context, userPostItem);
              }, error: (errorMsg) {
                return Center(child: Text('Err msg: ${errorMsg}'));
              });
            },
          ),
        ),
      ),
    );
  }
}

Widget buildLoaded(BuildContext context, List<UserPostItem> posts) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: ListView.builder(
      scrollDirection: Axis.vertical,
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SinglePostViewHolder(
                  userPost: posts[index],
                  posId: posts[index].id,
                ),
              ),
            );
          },
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          leading: Container(
            padding: EdgeInsets.only(
              right: 12.0,
            ),
            decoration: new BoxDecoration(
              border: new Border(
                right: new BorderSide(
                  width: 1.0,
                  color: Colors.white24,
                ),
              ),
            ),
            child: Icon(
              Icons.place_outlined,
              color: getIconColorFromApplicationContext(
                context,
              ),
            ),
          ),
          title: Text(
            posts[index].location_name!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Row(
            children: <Widget>[
              Icon(
                Icons.linear_scale,
                color: Theme.of(context).errorColor,
              ),
              Expanded(
                child: Text(
                  posts[index].seasonal_information!,
                ),
              )
            ],
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            size: 30.0,
            color: Colors.black,
          ),
        );
      },
    ),
  );
}
