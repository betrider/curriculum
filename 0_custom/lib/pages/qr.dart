import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class QRPage extends StatelessWidget {
  static const routeName = 'qr';
  const QRPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QRPage'),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return SizedBox.square(
          dimension: constraints.maxWidth * 0.5,
          child: PrettyQrView.data(
            data: 'kakaotalk://kakaopay/money/to/qr?qr_code=0000000000000000000000001f402302',
            decoration: const PrettyQrDecoration(
              image: PrettyQrDecorationImage(
                image: AssetImage('assets/logo/kakao_square.png'),
              ),
            ),
          ),
        );
      }),
    );
  }
}
