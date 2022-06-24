import 'package:comics/data/remote/comic_api.dart';
import 'package:comics/utils/models/comic/comic.dart';

class HomeBloc {
  ComicApi comicApi = ComicApi();

  Future<Comic> getAllComics() async {
    late Comic comics = Comic();
    var response = await comicApi.getAllComic();
    response.fold((serverFailure) {}, (response) {
      comics = response;
    });

    return comics;
  }
}
