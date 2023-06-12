import 'package:flutter/material.dart';
import 'package:myapp/constant/app_const.dart';
import 'package:myapp/utils/functions/function_reuse.dart';
import 'package:myapp/utils/services/local_storage/hive/hive_store_provider.dart';
import 'package:provider/provider.dart';

import '../local_store/screen_local_post_specific_post.dart';

class LayTravellerPosts extends StatefulWidget {
  const LayTravellerPosts({Key? key}) : super(key: key);

  @override
  State<LayTravellerPosts> createState() => _LayTravellerPostsState();
}

class _LayTravellerPostsState extends State<LayTravellerPosts> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Consumer<HiveOperationsProvider>(
          builder: (context, data, child) {
            Future.delayed(Duration.zero, () {
              data.localUserDayHiveCall(layTravellerHiveBoxName);
            });
            return ListView.builder(
              scrollDirection: Axis.vertical,
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: data.layTravellerData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LocalStoreSinglePostViewHolder(
                        userDay: data.layTravellerData[index],
                      ),
                    ));
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
                    data.layTravellerData[index].locationName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(
                        Icons.linear_scale,
                        color: Theme.of(context).errorColor,
                      ),
                      Expanded(
                        child: Text(
                          data.layTravellerData[index].seasonalInformation,
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
            );
          },
        ),
      ),
    );
  }
}
