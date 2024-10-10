import 'package:el_tooltip/el_tooltip.dart';
import 'package:flutter/material.dart';

class TooltipPage extends StatelessWidget {
  static const routeName = 'tooltip(package)';
  const TooltipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TooltipPage'),
      ),
      body: const Center(
        child: MyTooltip(),
      ),
    );
  }
}

const tooltipContent = Text(
  'Hola Mundo!',
  style: TextStyle(color: Colors.white),
  textAlign: TextAlign.center,
);

const tooltipIcon = Icon(
  Icons.info,
  color: Color(0XFFA5A53A),
);

class MyTooltip extends StatelessWidget {
  const MyTooltip({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = ElTooltipController();

    // controller.show();
    // controller.hide();
    // controller.value == ElTooltipStatus.hidden;
    // controller.value == ElTooltipStatus.showing;

    return InkWell(
      onTap: () {
        // ...
      },
      child: ElTooltip(
        /// 툴팁 컨트롤러
        controller: controller,

        /// 툴팁 색상
        color: const Color(0xFF92A6FF),

        /// 툴팁 배경 암막 여부
        // showModal: false,

        /// 암막 정보
        modalConfiguration: const ModalConfiguration(opacity: 0.5),

        /// 툴팁 표현시 자식 위젯 변경 여부
        showChildAboveOverlay: false,

        /// 툴팁 열릴때 애니메이션 시간
        appearAnimationDuration: const Duration(milliseconds: 200),

        /// 툴팁 닫힐때 애니메이션 시간
        disappearAnimationDuration: Duration.zero,

        /// 툴팁 모서리
        radius: const Radius.circular(50),

        /// 툴팁 패딩
        padding: const EdgeInsets.all(14.0),

        /// 툴팁 포지션
        position: ElTooltipPosition.topCenter,

        /// 툴팁 내용
        content: tooltipContent,

        /// 자식 위젯
        child: tooltipIcon,
      ),
    );
  }
}
