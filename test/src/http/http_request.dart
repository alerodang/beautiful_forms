import 'dart:convert';

import 'package:http/http.dart' as http;
import './method.dart';

class HttpRequest {
  final String _url;
  final Method _method;
  final Map<String, String> _headers;
  final String _body;

  HttpRequest(this._url, this._method, this._headers, this._body);

  Future<Map> execute() async {
    http.Response response = await this._getResponse();
    if (response.statusCode >= 200 && response.statusCode < 300) {
      if (response.body.length == 0) return {};
      else{
        return jsonDecode(response.body);
      }
    } else {
      // TODO HANDLE ERROR
      return jsonDecode(response.body);
    }
  }

  Future<http.Response> _getResponse() async {
    switch (this._method) {
      case Method.get:
        return await http.get(this._url, headers: this._headers);
      case Method.post:
        return await http.post(_url, headers: this._headers, body: this._body);
      case Method.delete:
        http.Request request = http.Request('DELETE', Uri.parse(this._url))..headers.addAll(_headers);
        request.body = this._body;

        http.StreamedResponse responseStream = await http.Client().send(request);

        return http.Response.fromStream(responseStream);
      case Method.put:
        // TODO: Handle this case.
        break;
    }
    return new http.Response('', 200); // TODO this should be an error
  }
}
