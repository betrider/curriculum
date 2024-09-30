import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  static const routeName = 'image';
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        runSpacing: 16,
        spacing: 16,
        children: [
          Container(
            width: 250,
            height: 250,
            color: Colors.blue,
          ),
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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(125),
              image: const DecorationImage(
                image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ815Ms1SuDGEez1TYT6BcgqlZ-xOjcqyVjKw&s'),
              ),
            ),
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
          const Image(
            width: 250,
            height: 250,
            image: AssetImage('assets/image1.jpeg'),
          ),
          Image.network(
            width: 250,
            height: 250,
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ815Ms1SuDGEez1TYT6BcgqlZ-xOjcqyVjKw&s',
            // 'http://192.168.28.34:15001/scloud-stage-unmanned-store/us-central1.png',
            frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
              // 1.
              return Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                child: child,
              );
            },
            loadingBuilder: (context, child, loadingProgress) {
              // 2.
              return Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(border: Border.all(color: Colors.green)),
                child: child,
              );
            },
            errorBuilder: (context, error, stackTrace) {
              // 3.
              return Container(
                width: 50,
                height: 50,
                color: Colors.red,
              );
            },
          ),
          CachedNetworkImage(
            width: 250,
            height: 250,
            imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ815Ms1SuDGEez1TYT6BcgqlZ-xOjcqyVjKw&s",
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ],
      ),
    );
  }
}
