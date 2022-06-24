import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

itemDescriptionComic(
    {required String title,
    required String description,
    bool complete = false}) {
  if (description == '') {
    description = 'Not description';
  }
  var content = [
    Text(
      title,
      style: const TextStyle(
          color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 18),
    ),
    !complete
        ? Text(
            description,
            style: const TextStyle(fontSize: 18),
          )
        : Html(
            data: description,
          ),
  ];
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: !complete
        ? Row(
            children: content,
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: content,
          ),
  );
}
