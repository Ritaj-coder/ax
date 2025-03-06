

import 'package:arwa/data/model/Response/MoviesResponse.dart';
import 'package:flutter/material.dart';

class BrowseList extends StatelessWidget {

  Movies movies ;
  String imagePath ;

  BrowseList({ required this.movies, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return  Stack(
            alignment: Alignment.topLeft,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
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
                      Text(("${movies.rating}"), style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              )
            ],
          );

  }
}
