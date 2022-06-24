import 'package:comics/common/details/utils/widgets/item_description_comic.dart';
import 'package:comics/utils/models/comic/result.dart';
import 'package:flutter/material.dart';

descriptionComic({required Result infoComic}) {
  return Column(
    children: [
      itemDescriptionComic(title: 'Name:', description: infoComic.name ?? ''),
      itemDescriptionComic(
          title: 'Publication date:', description: infoComic.coverDate ?? ''),
      itemDescriptionComic(
          title: 'Description:',
          description: infoComic.description ?? '',
          complete: true),
    ],
  );
}
