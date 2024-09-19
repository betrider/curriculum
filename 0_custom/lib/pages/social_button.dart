import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialButtonPage extends StatelessWidget {
  const SocialButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 200,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    appleLogo,
                    const SizedBox(width: 12),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Download on the',
                          style: TextStyle(
                            fontSize: 8,
                            height: 0.8,
                          ),
                        ),
                        Text(
                          'App Store',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(width: 32),
            Container(
              width: 200,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    playstoreLogo,
                    const SizedBox(width: 8),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'GET IT ON',
                          style: TextStyle(
                            fontSize: 8,
                            height: 0.8,
                          ),
                        ),
                        Text(
                          'Google Play',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 32),
            Container(
              width: 200,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: const Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '앱 다운로드',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(width: 2),
                    Icon(
                      Icons.file_download_outlined,
                      size: 24,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

SvgPicture appleLogo = SvgPicture.asset(
  "assets/logo/apple.svg",
  width: 30,
  height: 30,
);

SvgPicture playstoreLogo = SvgPicture.asset(
  "assets/logo/playstore.svg",
  width: 30,
  height: 30,
);
