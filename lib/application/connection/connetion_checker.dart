
// BlocProvider<NetworkConnectionBloc>(
// create: (context) => NetworkConnectionBloc()..add(NetworkConnectionObserve()),
// child: HomePage(),
// ),
//
// BlocBuilder<NetworkConnectionBloc, NetworkConnectionState>(
// builder: (context, state) {
// state.maybeWhen(
// failure: () => NoInternetConnectionScreen(),
// success: () => Text("You're now connected to Internet"),
// orElse:()=> SizedBox(),
// );
// },
// ),