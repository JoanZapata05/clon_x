import 'package:flutter/material.dart';
import 'tweet_card.dart'; // Asegúrate de importar el widget TweetCard que muestra los tweets

class TweetTabView extends StatefulWidget {
  const TweetTabView({super.key});

  @override
  _TweetTabViewState createState() => _TweetTabViewState();
}

class _TweetTabViewState extends State<TweetTabView> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Map<String, dynamic>> tweets = [
    {
      'username': 'WestCOL Updates',
      'handle': 'WestCOL_Updates',
      'content': 'No hay nota de la comunidad, significa que es real 💣💣💣',
      'profileImageUrl':
          'https://i.pinimg.com/736x/b2/b7/db/b2b7db91827b3ca055ff307eb625ce6e.jpg',
      'tweetImageUrl':
          'https://example.com/tweet1.jpg', // Cambia por una URL válida o elimina si no usas una imagen en el tweet
      'likes': 14800,
      'retweets': 204,
      'comments': 2,
    },
    {
      'username': 'FlutterDev',
      'handle': 'FlutterDev',
      'content': '¡Nuevo lanzamiento de Flutter! 🚀 ¡Desarrolla increíbles apps!',
      'profileImageUrl':
          'https://avatars.githubusercontent.com/u/14101776?s=200&v=4',
      'tweetImageUrl': '', // Sin imagen en el tweet
      'likes': 3200,
      'retweets': 500,
      'comments': 42,
    },
    // Agrega más tweets según lo necesites
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Barra de navegación con TabBar
        TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Para ti'),
            Tab(text: 'Siguiendo'),
          ],
          labelStyle: const TextStyle(fontWeight: FontWeight.bold),
          indicatorColor: Colors.blue,
        ),
        // Lista de tweets
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              // Aquí es donde mostramos los tweets de "Para ti"
              ListView.builder(
                itemCount: tweets.length,
                itemBuilder: (context, index) {
                  final tweet = tweets[index];
                  return TweetCard(
                    username: tweet['username'],
                    handle: tweet['handle'],
                    content: tweet['content'],
                    profileImageUrl: tweet['profileImageUrl'],
                    tweetImageUrl: tweet['tweetImageUrl'],
                    likes: tweet['likes'],
                    retweets: tweet['retweets'],
                    comments: tweet['comments'],
                  );
                },
              ),
              // Aquí es donde se pueden mostrar los tweets de "Siguiendo"
              
            ],
          ),
        ),
      ],
    );
  }
}
