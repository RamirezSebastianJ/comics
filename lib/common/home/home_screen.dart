import 'package:comics/common/home/home_bloc.dart';
import 'package:comics/common/home/utils/widgets/card_comic.dart';
import 'package:comics/utils/models/comic/comic.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeBloc bloc = HomeBloc();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comics'),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 30),
        child: FutureBuilder<Comic>(
          future: bloc
              .getAllComics(), // a previously-obtained Future<String> or null
          builder: (BuildContext context, AsyncSnapshot<Comic> snapshot) {
            List<Widget> children;
            if (snapshot.hasData) {
              if (snapshot.data != null) {
                children = <Widget>[
                  Expanded(
                    child: ListView.builder(
                      itemCount: snapshot.data!.results?.length ?? 0,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return cardComic(snapshot.data!.results![index],
                            context: context);
                      },
                    ),
                  ),
                ];
              } else {
                children = [];
              }
            } else if (snapshot.hasError) {
              children = <Widget>[
                const Icon(
                  Icons.error_outline,
                  color: Colors.red,
                  size: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text('Error: ${snapshot.error}'),
                )
              ];
            } else {
              children = const <Widget>[
                SizedBox(
                  width: 60,
                  height: 60,
                  child: CircularProgressIndicator(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text('Awaiting result...'),
                )
              ];
            }
            return Center(child: Column(children: children));
          },
        ),
      ),
    );
  }
}
