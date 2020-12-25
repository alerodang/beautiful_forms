import 'dart:convert';

import '../http/http_request.dart';
import '../http/method.dart';

class QueueClient {
  static final String url =
      'https://gu5lr651o2.execute-api.eu-west-1.amazonaws.com/dev';
  static final String apiKey = '';

  Future<Map> getRestaurantQueue(String restaurantName) async {
    String url = "${QueueClient.url}/restaurant/$restaurantName/queue";
    Map<String, String> headers = {
      'x-api-key': QueueClient.apiKey,
    };

    HttpRequest httpRequest = new HttpRequest(url, Method.get, headers, '');

    return await httpRequest.execute();
  }

  Future<void> consumeSubscription(String restaurantName, String uniqueId) async {
    String url = "${QueueClient.url}/restaurant/$restaurantName/queue/subscription/$uniqueId";
    Map<String, String> headers = {
      'x-api-key': QueueClient.apiKey,
      'Content-Type': 'application/json',
    };

    Map<String, String> body = {"operation": "consumed"};
    HttpRequest httpRequest = new HttpRequest(url, Method.delete, headers, jsonEncode(body).toString());
    await httpRequest.execute();
  }

  Future<void> deleteSubscription(String restaurantName, String uniqueId) async {
    String url = "${QueueClient.url}/restaurant/$restaurantName/queue/subscription/$uniqueId";
    Map<String, String> headers = {
      'x-api-key': QueueClient.apiKey,
      'Content-Type': 'application/json',
    };

    Map<String, String> body = {"operation": "deleted"};
    HttpRequest httpRequest = new HttpRequest(url, Method.delete, headers, jsonEncode(body).toString());
    await httpRequest.execute();
  }

  Future<Map<dynamic, dynamic>> createSubscription(String restaurantName, Map<String, dynamic> subscription) async {
    String url = "${QueueClient.url}/restaurant/$restaurantName/queue/subscription";
    Map<String, String> headers = {
      'Content-Type': 'application/json',
    };

    HttpRequest httpRequest = new HttpRequest(url, Method.post, headers, jsonEncode(subscription).toString());
    return httpRequest.execute();
  }
}
