import 'package:flutter/material.dart';
import 'package:youtube_app/video_detail.dart';

void main() {
  runApp(YoutubeApp());
}

class YoutubeApp extends StatelessWidget {

  final items = List<String>.generate(10000, (i) => "Item $i");
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text(
              "youtube",
          ),
          actions: <Widget>[
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(
                    Icons.search,
                    color: Colors.white,
                ),
                onPressed: () {
                  // Todo
                },
              ),
            ),
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                ),
                onPressed: () {
                  // Todo
                },
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                        'images/flutter-icon.png',
                        width: 80,
                        height: 65,
                        fit:BoxFit.fill
                    ),
                    SizedBox(
                     width: 8,
                      height: 100,
                    ),
                    Column(
                      children: <Widget>[
                        const Text(
                          "Channel Name",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        FlatButton(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                  Icons.videocam,
                                color: Colors.red,
                              ),
                              Text(
                                  '登録する',
                                style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              ),
                            ],
                          ),
                          onPressed: () {
                            // Todo
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        onTap: () async {
                          await  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VideoDetailPage()
                            ),
                          );
                        },
                        leading: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRjJXz3AnHn2odMLYPfieNsdQBI4xWL-BEDGA&usqp=CAU'
                        ),
                        title: Column(
                          children: [
                            Text(
                                'Flutter Youtubeっぽいアプリを作ってみた',
                                style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  '267回再生',
                                   style: TextStyle(
                                       fontSize: 13
                                   ),
                                ),
                                Text(
                                    '5日前',
                                    style: TextStyle(
                                    fontSize: 13
                                ),
                      ),
                              ],
                            ),
                          ],
                        ),
                        trailing: Icon(Icons.more_vert),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

