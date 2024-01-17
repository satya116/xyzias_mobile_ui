import 'package:flutter/material.dart';

class VideoWidgetInPlayList extends StatefulWidget {
  const VideoWidgetInPlayList({super.key});

  @override
  State<VideoWidgetInPlayList> createState() => _VideoWidgetInPlayListState();
}

class _VideoWidgetInPlayListState extends State<VideoWidgetInPlayList> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.pushNamed(context, '/video_player_screen');
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                'https://akm-img-a-in.tosshub.com/indiatoday/images/story/201709/yt-story_647_090517015649.jpg?VersionId=wIQL131pthcasFzFyaoG5zYUwtLu961c',
                height: 150.0, // Adjust the height as needed
                width: 200.0,
                fit: BoxFit.cover,
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        maxLines: 2,
                        'Indian Polity by M',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        maxLines: 2,
                        'Duration: 20 mins',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        maxLines: 2,
                        'By - Satya R Das',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}