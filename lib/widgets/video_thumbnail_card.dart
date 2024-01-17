import 'package:flutter/material.dart';

class VideoThumbnailCard extends StatelessWidget {
  const VideoThumbnailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const StyledCard();
  }
}

class StyledCard extends StatelessWidget {
  const StyledCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/video_player_screen');
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5.0,
        margin: const EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'https://akm-img-a-in.tosshub.com/indiatoday/images/story/201709/yt-story_647_090517015649.jpg?VersionId=wIQL131pthcasFzFyaoG5zYUwtLu961c',
                height: 200.0, // Adjust the height as needed
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Indian Polity',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
