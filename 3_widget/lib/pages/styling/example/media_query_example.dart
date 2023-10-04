import 'package:flutter/material.dart';

/// MediaQuery 는 개발자가 반응형 사용자 인터페이스를 만들 수 있게 해주는 Flutter의 강력한 도구입니다. 
class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MediaQueryExample')),
      body: Column(
        children: [
          // 현재 장치 화면의 크기를 나타내는 Size 객체입니다.
          Text(MediaQuery.of(context).size.width.toString()),
          // 논리적 픽셀당 물리적 ​​픽셀 수를 나타내는 double 입니다.
          Text(MediaQuery.of(context).devicePixelRatio.toString()),
          // 장치의 접근성 설정에 따라 글꼴 크기를 조정하는 데 일반적으로 사용되는 장치의 텍스트 배율을 나타내는 double 입니다.
          Text(MediaQuery.of(context).textScaleFactor.toString()),
          // 플랫폼의 전체 밝기 (예: 밝은 모드 또는 어두운 모드)를 나타내는 Brightness의 열거형 값입니다.
          Text(MediaQuery.of(context).platformBrightness.toString()),
          // 화면 네 면 모두의 패딩을 나타내는 EdgeInsets 객체입니다.
          Text(MediaQuery.of(context).padding.toString()),
          // 시스템 오버레이(예: 상태 표시줄 또는 탐색 모음)에 의해 가려진 화면 영역을 나타내는 EdgeInsets 개체입니다.
          Text(MediaQuery.of(context).viewInsets.toString()),
          // 시스템 제스처(예: 뒤로 가기 위해 스와이프)에 사용되는 화면 영역을 나타내는 EdgeInsets 개체입니다.
          Text(MediaQuery.of(context).systemGestureInsets.toString()),
          // 장치가 24시간 형식을 사용하도록 설정되었는지 여부를 나타내는 부울 입니다.
          Text(MediaQuery.of(context).alwaysUse24HourFormat.toString()),
          // 탐색 작동 방식에 영향을 미치는 접근성 기능(예: Android의 "talkback")이 장치에 활성화되어 있는지 여부를 나타내는 부울 입니다.
          Text(MediaQuery.of(context).accessibleNavigation.toString()),
          // 장치에 접근성을 위해 반전된 색상이 활성화되어 있는지 여부를 나타내는 부울 입니다.
          Text(MediaQuery.of(context).invertColors.toString()),
          // 장치에 접근성을 위해 고대비 모드가 활성화되어 있는지 여부를 나타내는 부울 입니다.
          Text(MediaQuery.of(context).highContrast.toString()),
        ],
      ),
    );
  }
}