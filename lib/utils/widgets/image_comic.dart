import 'package:comics/utils/models/comic/result.dart';
import 'package:flutter/material.dart';

Container imageComic(Result infoComic, {required double height, required double width}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(infoComic.image?.smallUrl ?? ''),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
  );
}
