import 'package:flutter/material.dart';
import 'package:gabung2/film/models/film.dart';

class MovieDetail extends StatelessWidget {
  final Film film;
  const MovieDetail(this.film);

  @override
  Widget build(BuildContext context) {
    String path;
    if (film.posterPath != null){
      path = film.posterPath!;
    } else {
      path = 'https://cdn.vectorstock.com/i/preview-1x/82/99/no-image-available-like-missing-picture-vector-43938299.jpg';
    }
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(film.title!),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                height: height / 1.5,
                child: Image.network(path),
              ),
              Container(
                child: Text(film.overview!),
                padding: EdgeInsets.only(left: 16, right: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}