
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key,
    this.errorText,
    required this.onPressed,
  });

  /// 오류 내용
  final String? errorText;
  
  /// 버튼 클릭 이벤트
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            errorText ?? '일시적인 오류가 발생했습니다.\n잠시 후 다시 시도해 주세요.',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, height: 1.5),
          ),
          const SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: onPressed,
            ),
          )
        ],
      ),
    );
  }
}
