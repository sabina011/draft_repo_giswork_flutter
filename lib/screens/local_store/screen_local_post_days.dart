import 'package:flutter/material.dart';
import 'package:myapp/constant/app_const.dart';
import 'package:myapp/screens/local_store/screen_local_post_specific_post.dart';
import 'package:provider/provider.dart';

import '../../utils/services/local_storage/hive/hive_store_provider.dart';

class LocalStoreDayViewHolder extends StatefulWidget {
  const LocalStoreDayViewHolder({Key? key}) : super(key: key);

  @override
  State<LocalStoreDayViewHolder> createState() =>
      _LocalStoreDayViewHolderState();
}

class _LocalStoreDayViewHolderState extends State<LocalStoreDayViewHolder> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Consumer<HiveOperationsProvider>(
          builder: (context, hiveDataProvider, child) {
            Future.delayed(Duration.zero, () {
              hiveDataProvider.localUserDayHiveCall(userDayHiveBoxName);
            });
            return hiveDataProvider.isUserDayHiveBoxHasData
                ? ListView.builder(
                    itemCount: hiveDataProvider.userDay.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onLongPress: () {
                          hiveDataProvider.localUserDayHiveIndexDelete(
                              context, index, userDayHiveBoxName);
                        },
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  LocalStoreSinglePostViewHolder(
                                userDay: hiveDataProvider.userDay[index],
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
                          child: CircleAvatar(
                            backgroundColor: Theme.of(context).primaryColor,
                            child: Text(
                              hiveDataProvider.userDay[index].day.toString(),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        title: Text(
                          hiveDataProvider.userDay[index].locationName,
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
                                hiveDataProvider
                                    .userDay[index].seasonalInformation,
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
                  )
                : Center(
                    child: Text(
                      'No local data recorded',
                    ),
                  );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
