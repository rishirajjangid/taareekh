import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:tr/data/network/base_api_services.dart';
import '../response/app_exceptions.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic responseJson;

    try {
      final response = await http
          .get(
            Uri.parse(url),
          )
          .timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequestTimeOut {
      throw RequestTimeOut('');
    }

    return responseJson;
  }

  Future<dynamic> getApi1(
    String url,
  ) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic responseJson;

    try {
      final response = await http
          .get(
            Uri.parse(url),
          )
          .timeout(const Duration(seconds: 10));

      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequestTimeOut {
      throw RequestTimeOut('');
    }

    return responseJson;
  }

  Future<dynamic> postApi1(
      var data, String url, Map<String, String> map) async {
    if (kDebugMode) {
      print(url);
      print(data);
    }
    dynamic responseJson;
    try {
      final response = await http.post(Uri.parse(url), body: data, headers: {
        "Content-Type": "application/json"
      }).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on RequestTimeOut {
      throw RequestTimeOut('');
    } on ServerException {
      throw ServerException('');
    }
    if (kDebugMode) {
      print(responseJson);
    }
    return responseJson;
  }

  @override
  Future<dynamic> postApi(
    var data,
    String url,
  ) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic responseJson;
    try {
      final response = await http.post(Uri.parse(url), body: data, headers: {
        "Content-Type": "application/json"
      }).timeout(const Duration(seconds: 20));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on RequestTimeOut {
      throw RequestTimeOut('');
    } on ServerException {
      throw ServerException('');
    }
    if (kDebugMode) {}
    return responseJson;
  }

  // Future<dynamic> postApi(
  //   var data,
  //   String url, Map<String, String> map,
  // ) async {
  //   if (kDebugMode) {
  //     print(url);
  //     print(data);
  //   }
  //   dynamic responseJson;
  //   try {
  //     final response = await http.post(Uri.parse(url), body: data, headers: {
  //       "Content-Type": "application/json"
  //     }).timeout(const Duration(seconds: 10));
  //     responseJson = returnResponse(response);
  //   } on SocketException {
  //     throw InternetException();
  //   } on RequestTimeOut {
  //     throw RequestTimeOut('');
  //   } on ServerException {
  //     throw ServerException('');
  //   }
  //   if (kDebugMode) {
  //     print(responseJson);
  //   }
  //   return responseJson;
  // }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;

      default:
        throw FetchDataException(
            'Error accoured while comonicating with server${response.statusCode}');
    }
  }
}
