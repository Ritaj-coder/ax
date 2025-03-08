
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';


class MoviesDetailsContent extends StatelessWidget {

// Movie movie ;
//
// MoviesDetailsContent({required this.movie});

  final List<String> moviePosters = List.generate(
    17,
        (index) => 'assets/moviesList/movie${index + 1}.jpg',
  );

  List<String> getRandomMovies() {
    final random = Random();
    List<String> shuffledMovies = List.from(moviePosters)..shuffle(random);
    return shuffledMovies.take(4).toList();
  }
  @override
  Widget build(BuildContext context) {
    List<String> randomMovies = getRandomMovies();
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 600,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/movies/poster1.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                child: Container(
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
            ),
            Positioned(
              top: 40,
              right: 10,
              child: IconButton(
                icon: Image.asset('assets/icons/save.png'),
                onPressed: () {},
              ),
            ),
            Positioned(
              top: 40,
              left: 10,
              child: IconButton(
                icon: Image.asset('assets/icons/Vector.png'),
                onPressed: () {},
              ),
            ),
            Positioned(
              bottom: 20,
              child: Column(
                children: [
                  Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '2022',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 210,
              child: IconButton(
                icon: Image.asset('assets/icons/watch.png'),
                iconSize: 60,
                onPressed: () {},
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  'Watch',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.favorite, color: Colors.yellow, size: 26),
                        SizedBox(width: 4),
                        Text('15', style: TextStyle(color: Colors.white, fontSize: 16)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.access_time, color: Colors.yellow, size: 26),
                        SizedBox(width: 4),
                        Text('90', style: TextStyle(color: Colors.white, fontSize: 16)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow, size: 26),
                        SizedBox(width: 4),
                        Text('7.6', style: TextStyle(color: Colors.white, fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Screen Shots',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Column(
                children: [
                  Image.asset('assets/Screen Shots/Screen Shot1.jpeg', width: double.infinity),
                  SizedBox(height: 10),
                  Image.asset('assets/Screen Shots/Screen Shot2.jpeg', width: double.infinity),
                  SizedBox(height: 10),
                  Image.asset('assets/Screen Shots/Screen Shot3.jpeg', width: double.infinity),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Similar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: randomMovies.length,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(randomMovies[index], fit: BoxFit.cover),
                  );
                },
              ),
              SizedBox(height: 20),
              Text(
                'Summary',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Following the events of Spider-Man No Way Home,Doctor Strange unwittingly casts a forbidden spell that accidentally opens up the multiverse. With help from Wong and Scarlet Witch, Strange confronts various versions of himself as well as teaming up with the young America Chavez while traveling through various realities and working to restore reality as he knows it.Along the way, Strange and his allies realize they must take on a powerful new adversary who seeks to take over the multiverse.—Blazer346',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cast',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        castItem('assets/cast/Hayley Atwell.jpeg', 'Hayley Atwell', 'Captain Carter'),
                        castItem('assets/cast/Elizabeth Olsen.jpeg', 'Elizabeth Olsen', 'Wanda Maximoff /\nThe Scarlet Witch'),
                        castItem('assets/cast/Rachel McAdams.jpeg', 'Rachel McAdams', 'Dr. Christine Palmer'),
                        castItem('assets/cast/Charlize Theron.jpeg', 'Charlize Theron', 'Clea'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Genres',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Wrap(
                            spacing: 10,
                            runSpacing: 10,
                            children: [
                              genreButton('Action'),
                              genreButton('Sci-Fi'),
                              genreButton('Adventure'),
                              genreButton('Fantasy'),
                              genreButton('Horror'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}



Widget castItem(String imagePath, String name, String character) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagePath,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name: $name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Character: $character',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget genreButton(String text) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    decoration: BoxDecoration(
      color: Colors.grey[800],
      borderRadius: BorderRadius.circular(8),
    ),
    child: Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    ),
  );
}