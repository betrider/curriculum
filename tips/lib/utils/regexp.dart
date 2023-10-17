/// 정규식 클래스
class MyRegExp {
  MyRegExp._();

  /// 소문자 영문 정규식
  static RegExp englishLowerRegex = RegExp('(?=.*[a-z])');

  /// 대문자 영문 정규식
  static RegExp englishUpperRegex = RegExp(r'(?=.*[A-Z])');

  /// 한글 & 영문 & 숫자 정규식
  static RegExp koreaEnglishNumberRegex = RegExp(r'^[가-힣a-z0-9]+$');

  /// 이메일 정규식
  static RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

  /// 휴대폰 번호 정규식
  static RegExp smartphoneRegex = RegExp(r'^010-?([0-9]{4})-?([0-9]{4})$');

  /// URL 정규식
  static RegExp urlRegex = RegExp(r'^(https?|ftp)://[^\s/$.?#].[^\s]*$');

  /// 한글 정규식
  static RegExp korean = RegExp(r'[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]');

  /// 생년월일(6자리) 정규식
  static RegExp birthday = RegExp(r'([0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[1,2][0-9]|3[0,1]))');
}
