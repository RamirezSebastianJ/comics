
import 'package:comics/common/details/details_page.dart';
import 'package:comics/utils/models/comic/result.dart';
import 'package:comics/utils/widgets/image_comic.dart';
import 'package:flutter/material.dart';

cardComic(Result infoComic, {required BuildContext context}) {
  return infoComic.name != null
      ? Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: imageComic(infoComic, height: 150, width: 100),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 300,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  infoComic.name ?? '',
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Text(infoComic.coverDate ?? ''),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      child: const Text('See description'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsPage(
                                    infoComic: infoComic,
                                  )),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      : Container();
}
