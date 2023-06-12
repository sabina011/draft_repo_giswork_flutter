import 'dart:io';

import 'package:dio/dio.dart';

class DioExceptionHandler {
  static String getDioErrorMessage(DioError error) {
    if (error.type == DioErrorType.connectTimeout) {
      return 'Connection timeout';
    } else if (error.type == DioErrorType.receiveTimeout) {
      return 'Receive timeout';
    } else if (error.type == DioErrorType.response) {
      // Handle specific HTTP response status codes
      if (error.response?.statusCode == 404) {
        return 'Resource not found';
      } else if (error.response?.statusCode == 500) {
        return 'Internal server error';
      } else {
        return 'Response error: ${error.response?.statusCode}';
      }
    } else if (error.type == DioErrorType.cancel) {
      return 'Request cancelled';
    } else if (error.error is SocketException) {
      // Handle SocketException
      return 'Network error: SocketException';
    } else {
      return 'Network error: $error';
    }
  }
}

class GenericExceptionHandler{
  static String getGenericErrorMessage(String errorMsg) {
    if (errorMsg is UnimplementedError) {
      return 'Something went wrong!';
    } else {
      return 'Fail to process';
    }
  }
}