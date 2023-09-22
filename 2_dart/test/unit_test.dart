import 'package:test/test.dart';

// - group
//     - 여러 테스트를 하나의 그룹으로 묶을 때 사용합니다.
// - test
//     - 테스트에 대한 설명과 실제 테스트 코드를 적습니다.
//     - 시간 제한(timeout) 이나 테스트 환경 (브라우저, OS) 등도 적어줄 수 있습니다.
// - expect(비교 값 확인)
//     - expect(실제값, 기대값)
//     - 테스트의 기대값과 실제값을 비교합니다.
//     - 다른 언어의 assert 와 동일하다고 보시면 됩니다.
// - setup(그룹당 한 번)
//     - 테스트를 시작하기 전에 설정을 해줍니다.
//     - 테스트 단위 하나마다 실행됩니다. ( ***test()*** 함수 하나가 테스트 단위 하나에요. 한 파일에 여러 ***test()*** 가 있으면 여러번 실행됩니다. )
// - setupAll(오직 한 번)
//     - 테스트 시작하기 전에 설정을 해줍니다.
//     - 파일 하나에 한번만 실행됩니다. (데이터 베이스 설정할 때 쓰기 좋겠죠)
// - teardown(그룹당 한 번)
//     - 테스트를 마치고 할 작업을 정해줍니다.
//     - 테스트 단위 하나마다 실행됩니다 ( ***setup()*** 함수랑 동일합니다 )
// - teardownAll(오직 한 번)
//     - 테스트를 마치고 할 작업을 정해줍니다.
//     - 파일 하나에 한번만 실행됩니다. ( ***setupAll()*** 함수랑 동일합니다 )

void main() {
  setUpAll(() {
    print('setupAll');
  });

  setUp(() {
    print('setup');
  });

  group('group1', () {
    test('should be lowercase', () {
      print('test1-1');
      // 어떤 테스트를 할지 설명하고,안에 있는 테스트를 실행합니다.
      String hello = "Hello World";
      expect(hello.toLowerCase(), "hello world"); // 테스트를 실행했을 때의 기대값과 실제값을 비교합니다.
    });

    test('should be Uppercase', () {
      print('test1-2');
      String hello = "hello world";
      expect(hello.toUpperCase(), "HELLO WORLD");
    });
  });

  group('group2', () {
    test('should be lowercase', () {
      print('test2');
      String hello = "Hello World";
      expect(hello.toLowerCase(), "hello world");
    });

    test('should be Uppercase', () {
      print('test2-2');
      String hello = "hello world";
      expect(hello.toUpperCase(), "HELLO WORLD");
    });
  });

  tearDown(() {
    print('tearDown');
  });

  tearDownAll(() {
    print('tearDownAll');
  });
}
