// ignore_for_file: deprecated_member_use, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMuted = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          "assets/images/netflixlogo.png",
          height: 90,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildFeaturedSection(),
            _buildSection("Trending Now", [
              {"path": "assets/images/trending1.png", "name": "Diplomat"},
              {"path": "assets/images/trending2.png", "name": "Jack"},
              {"path": "assets/images/trending3.png", "name": "Bad Influence"},
              {"path": "assets/images/trending4.png", "name": "Spiderman"},
              {"path": "assets/images/trending5.jpg", "name": "Interstellar"},
              {"path": "assets/images/trending6.png", "name": "Court"},
              {"path": "assets/images/trending7.jpg", "name": "Chhaava"},
              {"path": "assets/images/trending8.jpg", "name": "Dragon"},
              {"path": "assets/images/tvshow10.jpg", "name": "The Railwaymen"},
              {"path": "assets/images/top8.jpg", "name": "Kraven"},
              {"path": "assets/images/tvshow13.jpg", "name": "Khakee"},
              {"path": "assets/images/trending14.jpg", "name": "Jewel Theif"}
            ]),
            _buildSection("Top Picks for You", [
              {"path": "assets/images/top1.jpg", "name": "Fight Club"},
              {"path": "assets/images/tvshow1.jpg", "name": "Breaking Bad", "genre": "Drama"},
              {"path": "assets/images/tvshow2.jpg", "name": "Better Call Saul", "genre": "Sci-Fi"},
              {"path": "assets/images/top2.jpg", "name": "Manjummel Boys"},
              {"path": "assets/images/top3.jpg", "name": "Devara"},
              {"path": "assets/images/top4.jpg", "name": "Pushpa 2"},
              {"path": "assets/images/tvshow3.jpg", "name": "Money Heist", "genre": "Historical"},
              {"path": "assets/images/tvshow4.jpg", "name": "Squid Game", "genre": "Fantasy"},
              {"path": "assets/images/tvshow5.jpg", "name": "Stranger Things", "genre": "Thriller"},
              {"path": "assets/images/top5.jpg", "name": "The Good Doctor"},
              {"path": "assets/images/top7.jpg", "name": "BumbleBee"},
              {"path": "assets/images/trending11.jpg", "name": "Amaran"},
            ]),
            _buildSection("Continue Watching", [
              {"path": "assets/images/continue1.jpg", "name": "Marco"},
              {"path": "assets/images/continue2.jpg", "name": "Animal"},
              {"path": "assets/images/continue3.jpg", "name": "RDX"},
              {"path": "assets/images/continue4.jpg", "name": "Lucky Bhaskar"},
              {"path": "assets/images/continue5.jpg", "name": "83"},
              {"path": "assets/images/continue6.jpg", "name": "IC814"},
              {"path": "assets/images/tvshow11.jpg", "name": "Suits"},
              {"path": "assets/images/tvshow12.jpg", "name": "Black Warrant"},
              {"path": "assets/images/tvshow13.jpg", "name": "Khakee"},
              {"path": "assets/images/trending12.jpg", "name": "Mission Impossible"},
              {"path": "assets/images/trending13.jpg", "name": "Maharaja"},
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildFeaturedSection() {
    return Stack(
      children: [
        Container(
          height: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/hit.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        
        Container(
          height: 250,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.7),
                Colors.black.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        
        Positioned(
          left: 20,
          bottom: 40,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "HIT 3",
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "TELUGU",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      
                    },
                    icon: Icon(Icons.play_arrow, color: Colors.black),
                    label: Text(
                      "Play",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                    onPressed: () {
                      
                    },
                    icon: Icon(Icons.info_outline, color: Colors.white),
                    label: Text(
                      "More Info",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        
        Positioned(
          right: 20,
          bottom: 40,
          child: Row(
            children: [
              IconButton(
                icon: Icon(
                  isMuted ? Icons.volume_off : Icons.volume_up,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  setState(() {
                    isMuted = !isMuted; 
                  });
                },
              ),
              SizedBox(width: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  "U/A 16+",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSection(String title, List<Map<String, String>> movies) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 18, color: Colors.white)),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: movies
                  .map((movie) => _buildThumbnail(movie["path"]!, movie["name"]!))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildThumbnail(String imagePath, String movieName) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      width: 120, 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              height: 180, 
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8),
          Text(
            movieName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
