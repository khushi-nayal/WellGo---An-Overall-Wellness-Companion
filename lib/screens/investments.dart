import 'package:flutter/material.dart';
import 'package:meditation_app/widgets/meditation_vid.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
//import 'package:google_sheet_db/meditation_vid.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Home3 extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home3> {
  List<FeedbackModel> feedbacks = List<FeedbackModel>();

  getFeedbackFromSheet() async {
    print("hlo3");
    var raw = await http.get(
        Uri.parse("https://script.google.com/macros/s/AKfycbzalFQ5N9WT7e2YZQHWSU45sjryTfaTkscE0GHqhgflKiAb9ec/exec"));

    var jsonFeedback = convert.jsonDecode(raw.body);
    print('this is json Feedback $jsonFeedback');

    // feedbacks = jsonFeedback.map((json) => FeedbackModel.fromJson(json));

    jsonFeedback.forEach((element) {
      print('$element THIS IS NEXT>>>>>>>');
      //print(element);
      FeedbackModel feedbackModel = new FeedbackModel();
      feedbackModel.url = element['url'];
      feedbackModel.title = element['title'];
      //feedbackModel.views = element['views'];
      //feedbackModel.likes = element['likes'];
      //feedbackModel.dislikes = element['dislikes'];

      feedbacks.add(feedbackModel);
    });
    //print('${json['url']}');
  }

  @override
  void initState() {
    getFeedbackFromSheet();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //print("hlo2");
    return Scaffold(
      appBar: AppBar(
        title: Text("INVESTMENT RECOMMENDATIONS"),
        elevation: 0,
      ),
      body: Container(
        child: ListView.builder(
            itemCount: feedbacks.length,
            itemBuilder: (context, index) {
              return MindScreen(
                url: feedbacks[index].url,
                title: feedbacks[index].title,
                views: feedbacks[index].views,
                likes: feedbacks[index].likes,
                dislikes: feedbacks[index].dislikes,
              );
            }),
      ),
    );
  }
}

class MindScreen extends StatelessWidget {

  final String url, title, views, likes, dislikes;
  MindScreen(
      {this.url, this.title, this.views, this.likes, this.dislikes});

    
      



  @override
  Widget build(BuildContext context) {
    print("hlo1");
    YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: '$url',
     flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
    return Container(
      
      padding: EdgeInsets.all(16),
      /*child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
             /* Container(
                  height: 40,
                  width: 40,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      child: Image.network(url))),*/
              SizedBox(width: 16),
              
              Column(
                
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title),
                  FittedBox(
                   child: Text("https://www.youtube.com/watch?v=$url", style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue)),
                   fit: BoxFit.fitWidth,

                    ),
                  Text(
                    'from https://www.youtube.com/watch?v=$url',
                    style: TextStyle(color: Colors.black),
                  )
                 ],
              )
            ],
          ),
          SizedBox(height: 16),
          //Text(dislikes)
        ],
      ),*/


          child: YoutubePlayer(

            controller: _controller,

            liveUIColor: Colors.amber,

            showVideoProgressIndicator: true,

          ),

        );
   
  }
}

/*class AppVid extends StatelessWidget {
  final String url, title, views, likes, dislikes;
  AppVid(
      {this.url, this.title, this.views, this.likes, this.dislikes});
  static String videoID = 'dFKhWe2bBkM';
 
  // YouTube Video Full URL : https://www.youtube.com/watch?v=dFKhWe2bBkM&feature=emb_title&ab_channel=BBKiVines
 
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: videoID,
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Embed YouTube Video in Flutter'),
        ),
        body: Container(
          child: YoutubePlayer(
            controller: _controller,
            liveUIColor: Colors.amber,
            showVideoProgressIndicator: true,
          ),
        ));
  }
}*/