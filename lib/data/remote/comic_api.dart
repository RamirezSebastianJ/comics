import 'dart:convert';

import 'package:comics/envinronment.dart';
import 'package:comics/utils/errors/server_failure.dart';
import 'package:comics/utils/models/comic/comic.dart';
import 'package:either_dart/either.dart';
import 'package:http/http.dart' as http;

class ComicApi {
  String baseUrl = 'https://comicvine.gamespot.com/api/';
  String apiKey = apiKeyComic;

  Future<Either<ServerFailure, Comic>> getAllComic() async {
    try {
      var response = await http
          .get(Uri.parse('${baseUrl}issues/?api_key=$apiKeyComic&format=json'));
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        var comics = Comic.fromJson(data);
        return Right(comics);
      } else {
        return Left(ServerFailure(typeError: 'Bad connection'));
      }
    } on Exception catch (e) {
      return Left(ServerFailure(error: e));
    }
  }
}
