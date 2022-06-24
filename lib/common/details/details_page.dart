import 'package:comics/common/details/utils/widgets/description_comic.dart';
import 'package:comics/utils/models/comic/result.dart';
import 'package:comics/utils/widgets/image_comic.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  Result infoComic;
  DetailsPage({Key? key, required this.infoComic}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.infoComic.name ?? ''),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
                child: imageComic(widget.infoComic, height: 300, width: 200)),
            descriptionComic(infoComic: widget.infoComic),
          ]),
        ),
      ),
    );
  }
}
