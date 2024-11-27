import 'package:flutter/material.dart';

class TweetCard extends StatelessWidget {
  final String username;
  final String handle;
  final String content;
  final String profileImageUrl;
  final String tweetImageUrl;
  final int likes;
  final int retweets;
  final int comments;

  const TweetCard({
    super.key,
    required this.username,
    required this.handle,
    required this.content,
    required this.profileImageUrl,
    required this.tweetImageUrl,
    required this.likes,
    required this.retweets,
    required this.comments,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(profileImageUrl),
                radius: 24,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    username,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '@$handle',
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(content),
          const SizedBox(height: 8),
          if (tweetImageUrl.isNotEmpty)
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(tweetImageUrl),
            ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.chat_bubble_outline),
                onPressed: () {},
              ),
              Text('$comments'),
              IconButton(
                icon: const Icon(Icons.repeat),
                onPressed: () {},
              ),
              Text('$retweets'),
              IconButton(
                icon: const Icon(Icons.favorite_border),
                onPressed: () {},
              ),
              Text('$likes'),
            ],
          ),
        ],
      ),
    );
  }
}
