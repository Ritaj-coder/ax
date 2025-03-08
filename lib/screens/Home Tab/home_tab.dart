import 'package:flutter/material.dart';
import '../Browse TAb/cubit/browse_cubit.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeTab> {

  BrowseViewModel viewModel = BrowseViewModel();

  final List<String> moviePosters = List.generate(
    17,
        (index) => 'assets/moviesList/movie${index + 1}.jpg',
  );
  int selectedMovieIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery
                .of(context)
                .size
                .height * 0.65,
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: Container(
                key: ValueKey<String>(
                    moviePosters[selectedMovieIndex]),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        moviePosters[selectedMovieIndex]),
                    fit: BoxFit.cover,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xCC121312), // 80% opacity
                      Color(0x99121312), // 60% opacity
                      Color(0xFF121312), // 100% opacity
                    ],
                    stops: [0.0, 0.47, 1.0],
                  ),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Image.asset('assets/Available Now.png',
                    width: double.infinity),
                SizedBox(height: 5),
                _buildMovieSlider(),
                SizedBox(height: 12),
                Image.asset(
                    'assets/Watch Now.png', width: double.infinity),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Action",
                        style: TextStyle(color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            "See More",
                            style: TextStyle(
                                color: Colors.yellow, fontSize: 16),
                          ),
                          SizedBox(width: 4),
                          Image.asset(
                              'assets/icons/arrow_right_yellow.png',
                              width: 16, height: 16),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),
                _buildMovieGrid(),
                SizedBox(height: 120),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMovieSlider() {
    return Container(
      height: 250,
      child: PageView.builder(
        itemCount: moviePosters.length,
        controller: PageController(viewportFraction: 0.6),
        onPageChanged: (index) {
          setState(() {
            selectedMovieIndex = index;
          });
        },
        itemBuilder: (context, index) {
          bool isCentered = index == selectedMovieIndex;
          return Stack(
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    if (isCentered)
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    moviePosters[index],
                    fit: BoxFit.cover,
                    width: isCentered ? 160 : 130,
                    height: isCentered ? 240 : 200,
                  ),
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 14),
                      SizedBox(width: 4),
                      Text("7.7", style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildMovieGrid() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.7,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: moviePosters.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedMovieIndex = index;
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(moviePosters[index], fit: BoxFit.cover),
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 14),
                      SizedBox(width: 4),
                      Text("7.7", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

