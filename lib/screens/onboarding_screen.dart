import 'package:flutter/material.dart';
import '../colors.dart';
import 'auth/Login_screen/login_screen.dart';


class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> onboardingData = [
    {
      "image": "assets/Posters.png",
      "title": "Find Your Next\nFavorite Movie Here",
      "description": "Get access to a huge library of movies\nto suit all tastes. You will surely like it.",
      "button": "Explore Now",
    },
    {
      "image": "assets/movie1.png",
      "title": "Discover Movies",
      "description": "Explore a vast collection of movies in all\nqualities and genres. Find your next\nfavorite film with ease.",
      "button": "Next",
    },
    {
      "image": "assets/movie2.png",
      "title": "Explore All Genres",
      "description": "Discover movies from every genre, in all\navailable qualities. Find something new\nand exciting to watch every day.",
      "button": "Next",
    },
    {
      "image": "assets/movie3.png",
      "title": "Create Watchlists",
      "description": "Save movies to your watchlist to keep\ntrack of what you want to watch next.\nEnjoy films in various qualities and\ngenres.",
      "button": "Next",
    },
    {
      "image": "assets/movie4.png",
      "title": "Rate, Review, and Learn",
      "description": "Share your thoughts on the movies\nyou watched. Dive deep into film\ndetails and help others discover great\nmovies with your reviews.",
      "button": "Next",
    },
    {
      "image": "assets/movie5.png",
      "title": "Start Watching Now",
      "description": "",
      "button": "Finish",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              onboardingData[_currentIndex]["image"]!,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.91),
                    AppColors.black,
                  ],
                  stops: [0.0, 0.39, 0.675, 1.0],
                ),
              ),
            ),
          ),
          if (_currentIndex == 0)
            Positioned(
              bottom: 50,
              left: 20,
              right: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    onboardingData[_currentIndex]["title"]!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    onboardingData[_currentIndex]["description"]!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => setState(() => _currentIndex++),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.yellow,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text(
                        onboardingData[_currentIndex]["button"]!,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          if (_currentIndex != 0)
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.black,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      onboardingData[_currentIndex]["title"]!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    if (onboardingData[_currentIndex]["description"]!.isNotEmpty)
                      Text(
                        onboardingData[_currentIndex]["description"]!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 18,
                        ),
                      ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_currentIndex < onboardingData.length - 1) {
                                setState(() => _currentIndex++);
                              } else {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => LoginScreen()),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.yellow,
                              padding: EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: Text(
                              onboardingData[_currentIndex]["button"]!,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        if (_currentIndex > 1) ...[
                          SizedBox(height: 10),
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(
                              onPressed: () => setState(() => _currentIndex--),
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: AppColors.yellow, width: 2),
                                padding: EdgeInsets.symmetric(vertical: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: Text(
                                "Back",
                                style: TextStyle(
                                  color: AppColors.yellow,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}