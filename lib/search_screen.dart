import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final movies = [
      {"path": "assets/images/trending1.png", "name": "Diplomat"},
      {"path": "assets/images/trending2.png", "name": "Jack"},
      {"path": "assets/images/trending9.jpg", "name": "Venom The Last Dance"},
      {"path": "assets/images/trending4.png", "name": "Spiderman"},
      {"path": "assets/images/trending5.jpg", "name": "Interstellar"},
      {"path": "assets/images/trending11.jpg", "name": "Amaran"},
      {"path": "assets/images/top1.jpg", "name": "Fight Club"},
      {"path": "assets/images/top2.jpg", "name": "Manjummel Boys"},
      {"path": "assets/images/continue1.jpg", "name": "Marco"},
      {"path": "assets/images/continue2.jpg", "name": "Animal"},
      {"path": "assets/images/top3.jpg", "name": "Devara"},
      {"path": "assets/images/top4.jpg", "name": "Pushpa 2"},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search for Movies, Shows...',
            hintStyle: TextStyle(color: Colors.white),
            border: InputBorder.none,
          ),
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5, // Increased column count for smaller images
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 1 / 2, // Adjusted aspect ratio for compact layout
        ),
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return _buildMovieCard(movie["path"]!, movie["name"]!);
        },
      ),
    );
  }

  Widget _buildMovieCard(String imagePath, String movieName) {
    return Column(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          movieName,
          style: TextStyle(color: Colors.white, fontSize: 9), // Reduced text size
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ],
    );
  }
}
