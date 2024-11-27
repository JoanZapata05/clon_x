import 'package:flutter/material.dart';
import '../widgets/tweet_tab_view.dart'; // Este es el widget que vamos a crear para los tweets
import '../widgets/app_bar.dart'; // Asegúrate de importar tu CustomAppBar
import '../widgets/bottonNavigation_bar.dart'; // Asegúrate de importar tu BottomNavigationBarWidget

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPageIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: PageView(
        
        controller: PageController(initialPage: _currentPageIndex),
        onPageChanged: (int index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        children: [
          // Página de los tweets
          const TweetTabView(),
          // Otras páginas si las agregas más adelante
          const Center(child: Text('Otra vista')),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        currentPageIndex: _currentPageIndex,
        onTabSelected: _onTabSelected,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Icon(Icons.add, color: Colors.white, size: 30),
      ),
    );
  }
}
