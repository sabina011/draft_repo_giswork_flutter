import 'package:flutter/material.dart';
import 'package:myapp/utils/functions/function_navigation_logic.dart';
import 'package:myapp/utils/functions/special/network_connection.dart';

import '../../../resources/styles/elevated_btns_style.dart';
import '../../../widgets/widget.dart';

void GISAlertBlocDeleteConfirmDialog(
    BuildContext context,
    String dialogMainTitle,
    String dialogBodyText,
    String btnText,
    VoidCallback onPressed) async {
  bool isConnectionToInternet = await checkInternetConnection();

  showDialog(
    context: context,
    barrierDismissible: false, //user must tab
    builder: (BuildContext context) {
      return new SimpleDialog(
        contentPadding: EdgeInsets.all(
          16.0,
        ),
        title: Center(
          child: GISDynamicText(
            text: dialogMainTitle,
            isHeadings: true,
          ),
        ),
        children: [
          GISDynamicText(
            text: dialogBodyText,
            isHeadings: false,
          ),
          SizedBox(
            height: 32.0,
          ),
          DialogBlocResult(
            isNetworkConnected: isConnectionToInternet,
            btnText: btnText,
            onPressed: onPressed,
          ),
        ],
      );
    },
  );
}

class DialogBlocResult extends StatelessWidget {
  final bool isNetworkConnected;
  final String btnText;
  final VoidCallback onPressed;

  const DialogBlocResult(
      {Key? key,
      required this.isNetworkConnected,
      required this.btnText,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isNetworkConnected
        ? Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                child: Text(
                  "Cancel",
                  style: elevatedTextStyle,
                ),
                onPressed: () => popScreen(context),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                child: Text(
                  btnText,
                  style: elevatedTextStyle,
                ),
                onPressed: onPressed,
              )
            ],
          )
        : ElevatedButton(
            onPressed: () {
              popScreen(context);
            },
            child: Text(
              "Oops! No connection.",
              style: elevatedTextStyle,
            ),
          );
  }
}

// BlocProvider<NetworkConnectionBloc>(
//   create: (context) => networkConnectionBloc
//       ..add(NetworkConnectionEvent.networkObserve()),
//   child: BlocBuilder<NetworkConnectionBloc, NetworkConnectionState>(
//       builder: (context, state) {
//     return state.maybeWhen(
//       initial: () => ElevatedButton(
//         child: Text(
//           "Continue",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 13.0,
//             fontWeight: FontWeight.normal,
//           ),
//         ),
//         onPressed: () {
//           // networkConnectionBloc
//           //     .add(NetworkConnectionEvent.networkConnectionObserve());
//         },
//       ),
//       failure: () => DialogBlocResult(
//         isNetworkConnected: false,
//         btnText: btnText,
//         onPressed: onPressed,
//         networkConnectionBloc: networkConnectionBloc,
//       ),
//       success: () => DialogBlocResult(
//           isNetworkConnected: true,
//           btnText: btnText,
//           onPressed: onPressed,
//           networkConnectionBloc: networkConnectionBloc),
//       orElse: () => SizedBox.shrink(),
//     );
//   }),
// ),
