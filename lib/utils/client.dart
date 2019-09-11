import 'package:dio/dio.dart';

// import 'package:shared_preferences/shared_preferences.dart';

Dio createDio() {
  return Dio(BaseOptions(
      connectTimeout: 5000,
      receiveTimeout: 5000,
      baseUrl: "https:///jsonplaceholder.typicode.com"));
}

Dio addInterceptors(Dio dio) {
  return dio
    ..interceptors.add(InterceptorsWrapper(
        onRequest: (RequestOptions options) => requestInterceptor(options),
        onResponse: (Response response) => responseInterceptor(response),
        onError: (DioError dioError) => errorInterceptor(dioError)));
}

dynamic requestInterceptor(RequestOptions options) async {
  // if (options.headers.containsKey("requiresToken")) {
  //   //remove the auxiliary header
  //   options.headers.remove("requiresToken");

  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   var header = prefs.get("Header");

  //   options.headers.addAll({"Header": "$header${DateTime.now()}"});
  print('request interceptor jalan');

  return options;
  // }
}

dynamic responseInterceptor(Response options) async {
  // if (options.headers.value("verifyToken") != null) {
  //   //if the header is present, then compare it with the Shared Prefs key
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   var verifyToken = prefs.get("VerifyToken");

  //   // if the value is the same as the header, continue with the request
  //   if (options.headers.value("verifyToken") == verifyToken) {

  return options;
  // }
  // }

  // return DioError(
  //     request: options.request, message: "User is no longer active");
}

dynamic errorInterceptor(DioError dioError) {
  // if (dioError.message.contains("ERROR_001")) {
  //   // this will push a new route and remove all the routes that were present
  //   // navigatorKey.currentState
  //   //     .pushNamedAndRemoveUntil("/login", (Route<dynamic> route) => false);
  // }
  print('error intercept ${dioError.message}');
  return dioError;
}

Dio initialDio = createDio();
Dio client = addInterceptors(initialDio);
