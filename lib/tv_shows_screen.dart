import 'package:flutter/material.dart';

class TVShowsScreen extends StatelessWidget {
  const TVShowsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tvShows = [
      {"path": "assets/images/tvshow1.jpg", "name": "Breaking Bad", "genre": "Drama"},
      {"path": "assets/images/tvshow2.jpg", "name": "Better Call Saul", "genre": "Sci-Fi"},
      {"path": "assets/images/tvshow3.jpg", "name": "Money Heist", "genre": "Historical"},
      {"path": "assets/images/tvshow4.jpg", "name": "Squid Game", "genre": "Fantasy"},
      {"path": "assets/images/tvshow5.jpg", "name": "Stranger Things", "genre": "Thriller"},
      {"path": "assets/images/tvshow6.jpg", "name": "Peaky Blinders", "genre": "Comedy"},
      {"path": "assets/images/tvshow7.jpg", "name": "American Manhunt", "genre": "Documentary"},
      {"path": "assets/images/tvshow8.jpg", "name": "Vikings Valhalla", "genre": "Mystery"},
      {"path": "assets/images/tvshow9.jpg", "name": "The Royals", "genre": "Political"},
      {"path": "assets/images/tvshow10.jpg", "name": "The Railwaymen", "genre": "Detective"},
      {"path": "assets/images/tvshow11.jpg", "name": "Friends", "genre": "Comedy"},
      {"path": "assets/images/tvshow12.jpg", "name": "Dark", "genre": "Mystery"},
      {"path": "assets/images/tvshow13.jpg", "name": "The Office", "genre": "Sitcom"},
      {"path": "assets/images/tvshow14.jpg", "name": "House of Cards", "genre": "Political"},
      {"path": "assets/images/tvshow15.jpg", "name": "Sherlock", "genre": "Detective"},
      {"path": "assets/images/tvshow16.jpg", "name": "Vikings", "genre": "Historical"},
      {"path": "assets/images/tvshow17.jpg", "name": "Game of Thrones", "genre": "Epic"},
      {"path": "assets/images/tvshow18.jpg", "name": "The Crown", "genre": "Drama"},
      {"path": "assets/images/tvshow19.jpg", "name": "Ozark", "genre": "Thriller"},
      {"path": "assets/images/tvshow20.jpg", "name": "The Witcher", "genre": "Fantasy"},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("TV Shows", style: TextStyle(color: Colors.white)),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5, // Five items per row for smaller grid
          crossAxisSpacing: 6,
          mainAxisSpacing: 6,
          childAspectRatio: 1 / 1.5, // Compact aspect ratio for smaller items
        ),
        itemCount: tvShows.length,
        itemBuilder: (context, index) {
          final show = tvShows[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    show["path"]!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              SizedBox(height: 4),
              Text(
                show["name"]!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12, // Smaller font size
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                show["genre"]!,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10, // Smaller font size
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          );
        },
      ),
    );
  }
}
