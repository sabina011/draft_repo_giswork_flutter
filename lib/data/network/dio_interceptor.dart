import 'package:dio/dio.dart';
import 'package:myapp/application/injectable/injection.dart';
import 'package:myapp/data/sharedPreference/sharedpreference_helper.dart';

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    //list of the endpoints where we don't need to pass a token
    final listOfPaths = ['posts'];

    //check whether the list of paths contains the options
    if (listOfPaths.contains(options.path.toString())) {
      //if matched to the list then don't add the token
      options.queryParameters.addAll({});
      return handler.next(options);
    }

    //Load the token here and pass to the header
    final _preferenceLocator = getIt<SharedPreferenceHelper>();
    options.headers.addAll({
      "Authorization": _preferenceLocator.getUserAccessToken(),
    });
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
  }
}
