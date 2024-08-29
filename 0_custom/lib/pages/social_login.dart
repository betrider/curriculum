import 'package:flutter/material.dart';

class SocialLoginPage extends StatelessWidget {
  const SocialLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: NetworkImage('https://c1.wallpaperflare.com/preview/476/537/283/scuba-snorkel-snorkle-dive.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(const Color(0xFFFAE439)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Login with Kakao',
                    style: TextStyle(color: Colors.brown),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(const Color(0xFF2DB400)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Login with Naver',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(const Color(0xFF3B5998)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Login with Facebook',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(const Color(0xFFDB4437)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Login with Google',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: Image.asset('assets/logo/naver_circle.png'),
                  ),
                  const SizedBox(width: 16),
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: Image.asset('assets/logo/naver_square.png'),
                  ),
                  const SizedBox(width: 16),
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: Image.asset('assets/logo/kakao_circle.png'),
                  ),
                  const SizedBox(width: 16),
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: Image.asset('assets/logo/kakao_square.png'),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
                    width: 40,
                    height: 40,
                    child: Image.asset('assets/logo/google_icon.png'),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    color: Colors.white,
                    width: 40,
                    height: 40,
                    child: Image.asset('assets/logo/google_icon.png'),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
                    width: 40,
                    height: 40,
                    child: Image.asset('assets/logo/apple_icon2.png'),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    color: Colors.white,
                    width: 40,
                    height: 40,
                    child: Image.asset('assets/logo/apple_icon2.png'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
