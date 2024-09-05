import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        runSpacing: 16,
        spacing: 16,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(125),
            child: SizedBox(
              width: 250,
              height: 250,
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ815Ms1SuDGEez1TYT6BcgqlZ-xOjcqyVjKw&s',
              ),
            ),
          ),
          Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(125),
            ),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ815Ms1SuDGEez1TYT6BcgqlZ-xOjcqyVjKw&s',
            ),
          ),
          SizedBox(
            width: 250,
            height: 250,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(125),
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ815Ms1SuDGEez1TYT6BcgqlZ-xOjcqyVjKw&s',
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(125),
            child: Image.network(
              width: 250,
              height: 250,
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ815Ms1SuDGEez1TYT6BcgqlZ-xOjcqyVjKw&s',
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(125),
            child: SizedBox(
              width: 250,
              height: 250,
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ815Ms1SuDGEez1TYT6BcgqlZ-xOjcqyVjKw&s',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
